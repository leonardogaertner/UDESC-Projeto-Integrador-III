import streamlit as st
import pandas as pd
import os

def carregar_microdados(caminho_arquivo):
    """
    Lê e padroniza os microdados do ENEM.
    - Detecta encoding automaticamente
    - Aceita delimitadores ';' ou ','
    - Remove colunas vazias
    """
    try:
        # Detecta encoding
        encodings_teste = ['utf-8', 'latin1', 'iso-8859-1']
        df = None
        for enc in encodings_teste:
            try:
                df = pd.read_csv(caminho_arquivo, sep=';', encoding=enc)
                break
            except Exception:
                try:
                    df = pd.read_csv(caminho_arquivo, sep=',', encoding=enc)
                    break
                except Exception:
                    continue
        
        if df is None:
            raise ValueError("Não foi possível ler o arquivo com os encodings e delimitadores testados.")

        # Remove colunas completamente vazias
        df = df.dropna(axis=1, how='all')

        # Converte nomes das colunas para minúsculo
        df.columns = df.columns.str.lower()

        # Remove espaços extras em colunas de texto
        for col in df.select_dtypes(include=['object']):
            df[col] = df[col].astype(str).str.strip()

        return df

    except Exception as e:
        st.error(f"Erro ao processar o arquivo: {e}")
        return None

st.set_page_config(page_title="Ferramenta ENEM", layout="wide")
st.title("📊 Ferramenta de Análise dos Microdados do ENEM")

st.markdown("""
Bem-vindo à plataforma de análise dos microdados do ENEM.
Selecione um arquivo CSV dos microdados ou carregue um já salvo.
""")

modo = st.radio("Selecione como deseja iniciar:", ("📂 Enviar novo arquivo", "💾 Usar arquivo previamente salvo"))

uploaded_df = None

if modo == "📂 Enviar novo arquivo":
    uploaded_file = st.file_uploader("Envie o arquivo CSV dos microdados", type=["csv"])
    if uploaded_file is not None:
        df = carregar_microdados(uploaded_file)
        if df is not None:
            st.success(f"Arquivo carregado com sucesso! {uploaded_file.name}")
            st.dataframe(df.head(10))
            os.makedirs("data", exist_ok=True)
            df.to_csv("data/microdados_processados.csv", index=False, encoding='utf-8')
            uploaded_df = df
            st.info("Arquivo pré-processado e salvo para uso posterior.")

elif modo == "💾 Usar arquivo previamente salvo":
    if os.path.exists("data/microdados_processados.csv"):
        df = pd.read_csv("data/microdados_processados.csv")
        st.success("Arquivo carregado a partir do armazenamento local.")
        st.dataframe(df.head(10))
        uploaded_df = df
    else:
        st.warning("Nenhum arquivo salvo encontrado. Envie um novo arquivo.")

if uploaded_df is not None:
    st.sidebar.success("Use o menu lateral para navegar entre os módulos.")
