import streamlit as st
import pandas as pd
import os

st.set_page_config(page_title="Ferramenta ENEM", layout="wide")

# Título
st.title("Ferramenta de Análise dos Microdados do ENEM")

st.markdown("""
Bem-vindo à plataforma de análise dos microdados do ENEM.
Aqui você poderá:
- Carregar um arquivo de microdados
- Utilizar um arquivo previamente salvo
- Acessar os módulos de análise
""")

# Escolha do método
modo = st.radio(
    "Selecione como deseja iniciar:",
    ("📂 Enviar novo arquivo", "💾 Usar arquivo previamente salvo")
)

uploaded_df = None

if modo == "📂 Enviar novo arquivo":
    uploaded_file = st.file_uploader("Envie o arquivo CSV dos microdados", type=["csv"])
    if uploaded_file is not None:
        try:
            uploaded_df = pd.read_csv(uploaded_file)
            st.success(f"Arquivo carregado com sucesso! {uploaded_file.name}")
            st.dataframe(uploaded_df.head(5))
            os.makedirs("data", exist_ok=True)
            uploaded_df.to_csv("data/microdados_processados.csv", index=False)
            st.info("Arquivo pré-processado e salvo para uso posterior.")
        except Exception as e:
            st.error(f"Erro ao ler o arquivo: {e}")

elif modo == "💾 Usar arquivo previamente salvo":
    if os.path.exists("data/microdados_processados.csv"):
        uploaded_df = pd.read_csv("data/microdados_processados.csv")
        st.success("Arquivo carregado a partir do armazenamento local.")
        st.dataframe(uploaded_df.head(5))
    else:
        st.warning("Nenhum arquivo salvo encontrado. Envie um novo arquivo.")

# Informar que as páginas podem ser acessadas pelo menu lateral
if uploaded_df is not None:
    st.sidebar.success("Use o menu lateral para navegar entre os módulos.")
