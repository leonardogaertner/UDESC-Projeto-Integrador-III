import streamlit as st
import pandas as pd
import os
import matplotlib.pyplot as plt
from fpdf import FPDF

# Função para exportar tabela para PDF
def exportar_pdf(df, nome_arquivo):
    pdf = FPDF()
    pdf.add_page()
    pdf.set_font("Arial", "B", 14)
    pdf.cell(0, 10, txt="Relatório de Exploração de Dados", ln=True, align='C')
    pdf.ln(10)

    # Configuração da tabela
    pdf.set_font("Arial", "B", 10)
    col_width = pdf.w / (len(df.columns) + 1)  # largura proporcional
    row_height = 6

    # Cabeçalho
    for col in df.columns:
        pdf.cell(col_width, row_height, col, border=1, align='C')
    pdf.ln(row_height)

    # Conteúdo da tabela
    pdf.set_font("Arial", "", 10)
    for _, row in df.iterrows():
        max_height = row_height
        # Primeiro calculamos a altura máxima necessária para esta linha
        for col in df.columns:
            texto = str(row[col])
            # multi_cell quebra automaticamente, mas precisamos controlar a altura
            lines = pdf.multi_cell(col_width, row_height, texto, border=0, align='L', split_only=True)
            max_height = max(max_height, len(lines) * row_height)

        # Agora desenhamos cada célula
        x_start = pdf.get_x()
        y_start = pdf.get_y()
        for col in df.columns:
            texto = str(row[col])
            pdf.multi_cell(col_width, row_height, texto, border=1, align='L')
            pdf.set_xy(pdf.get_x(), y_start)
            x_start += col_width
            pdf.set_x(x_start)
        pdf.ln(max_height)

    pdf.output(nome_arquivo)

st.set_page_config(page_title="Exploração dos Dados", layout="wide")
st.title("📂 Exploração dos Dados")

# Carrega dados processados
if os.path.exists("data/microdados_processados.csv"):
    df = pd.read_csv("data/microdados_processados.csv")
    st.success("Arquivo carregado com sucesso!")
else:
    st.error("Nenhum arquivo processado encontrado. Volte à página inicial e carregue um arquivo.")
    st.stop()

# Por padrão, todas as colunas são exibidas
df_filtrado = df.copy()

# Filtros dinâmicos
st.subheader("🎯 Filtros avançados")
if "filtros" not in st.session_state:
    st.session_state.filtros = []

# Adicionar filtro
with st.expander("Adicionar novo filtro"):
    col1, col2 = st.columns(2)
    coluna = col1.selectbox("Coluna", df_filtrado.columns.tolist())
    if coluna:
        valores_unicos = sorted(df_filtrado[coluna].dropna().unique().tolist())
        valor = col2.selectbox("Valor", valores_unicos)
        if st.button("➕ Adicionar filtro"):
            st.session_state.filtros.append((coluna, valor))

# Mostrar filtros aplicados
if st.session_state.filtros:
    st.write("Filtros aplicados:")
    for i, (coluna, valor) in enumerate(st.session_state.filtros):
        col1, col2, col3 = st.columns([3, 3, 1])
        col1.write(f"**Coluna:** {coluna}")
        col2.write(f"**Valor:** {valor}")
        if col3.button("❌", key=f"remover_{i}"):
            st.session_state.filtros.pop(i)
            st.experimental_rerun()

# Aplicar filtros
for coluna, valor in st.session_state.filtros:
    df_filtrado = df_filtrado[df_filtrado[coluna] == valor]

# Mostrar tabela filtrada
st.dataframe(df_filtrado)

# Cruzamento de variáveis
st.subheader("📊 Cruzamento de Variáveis")
col1, col2 = st.columns(2)
with col1:
    var_x = st.selectbox("Variável X", df_filtrado.columns.tolist())
with col2:
    var_y = st.selectbox("Variável Y", df_filtrado.columns.tolist())

if var_x and var_y:
    fig, ax = plt.subplots()
    df_filtrado.groupby(var_x)[var_y].mean().plot(kind="bar", ax=ax)
    ax.set_ylabel(f"Média de {var_y}")
    st.pyplot(fig)

# Exportar para PDF
if st.button("📄 Exportar resultado para PDF"):
    exportar_pdf(df_filtrado, "data/relatorio_exploracao.pdf")
    with open("data/relatorio_exploracao.pdf", "rb") as f:
        st.download_button("⬇ Baixar PDF", f, file_name="relatorio_exploracao.pdf")
