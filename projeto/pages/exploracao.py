import streamlit as st
import pandas as pd
import os
import matplotlib.pyplot as plt
from reportlab.lib import colors
from reportlab.lib.pagesizes import A4, landscape
from reportlab.platypus import SimpleDocTemplate, Table, TableStyle, Paragraph, Spacer, PageBreak
from reportlab.lib.styles import getSampleStyleSheet

# Função para exportar tabela para PDF com quebra de página e ajuste de largura
def exportar_pdf(df, nome_arquivo):
    doc = SimpleDocTemplate(nome_arquivo, pagesize=landscape(A4))
    elementos = []
    estilos = getSampleStyleSheet()

    # Título
    titulo = Paragraph("Relatório de Exploração de Dados", estilos['Title'])
    elementos.append(titulo)
    elementos.append(Spacer(1, 12))

    # Parâmetros
    max_colunas_por_pagina = 10  # controla quantas colunas cabem por página
    font_size = 7  # fonte reduzida para caber mais dados

    # Dividir dataframe em blocos de colunas para caber na largura
    for inicio in range(0, len(df.columns), max_colunas_por_pagina):
        fim = inicio + max_colunas_por_pagina
        df_bloco = df.iloc[:, inicio:fim]

        # Converter DataFrame para lista (cabeçalho + dados)
        dados = [df_bloco.columns.tolist()] + df_bloco.astype(str).values.tolist()

        # Criar tabela
        tabela = Table(dados, repeatRows=1)

        # Largura proporcional
        col_width = (A4[1] - 40) / len(df_bloco.columns)
        tabela._argW = [col_width] * len(df_bloco.columns)

        # Estilo da tabela
        estilo_tabela = TableStyle([
            ('BACKGROUND', (0, 0), (-1, 0), colors.grey),
            ('TEXTCOLOR', (0, 0), (-1, 0), colors.whitesmoke),
            ('ALIGN', (0, 0), (-1, -1), 'CENTER'),
            ('FONTNAME', (0, 0), (-1, 0), 'Helvetica-Bold'),
            ('FONTSIZE', (0, 0), (-1, -1), font_size),
            ('BOTTOMPADDING', (0, 0), (-1, 0), 6),
            ('GRID', (0, 0), (-1, -1), 0.25, colors.black),
        ])

        # Linhas alternadas
        for i in range(1, len(dados)):
            if i % 2 == 0:
                estilo_tabela.add('BACKGROUND', (0, i), (-1, i), colors.lightgrey)

        tabela.setStyle(estilo_tabela)
        elementos.append(tabela)
        elementos.append(PageBreak())  # nova página para próximo bloco

    doc.build(elementos)

st.set_page_config(page_title="Exploração dos Dados", layout="wide")
st.title("Exploração dos Dados")

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
st.subheader("Filtros avançados")
if "filtros" not in st.session_state:
    st.session_state.filtros = []

# Adicionar filtro
with st.expander("Adicionar novo filtro"):
    col1, col2 = st.columns(2)
    coluna = col1.selectbox("Coluna", df_filtrado.columns.tolist())
    if coluna:
        valores_unicos = sorted(df_filtrado[coluna].dropna().unique().tolist())
        valor = col2.selectbox("Valor", valores_unicos)
        if st.button("Adicionar filtro"):
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
    df_grafico = df_filtrado.groupby(var_x, as_index=False)[var_y].mean()
    df_grafico = df_grafico.sort_values(by=var_y, ascending=False)
    st.bar_chart(df_grafico.set_index(var_x))



# Exportar para PDF
if st.button("📄 Exportar resultado para PDF"):
    exportar_pdf(df_filtrado, "data/relatorio_exploracao.pdf")
    with open("data/relatorio_exploracao.pdf", "rb") as f:
        st.download_button("⬇ Baixar PDF", f, file_name="relatorio_exploracao.pdf")
