#!/bin/bash

CONTENTDIR="content"
BUILDDIR="build"
FILENAME="index"
PATHTMP="./${CONTENTDIR}/${FILENAME}.md"
ASSETSDIR="assets"

download_csl() {
    mkdir "${ASSETSDIR}" -p
    wget -O "${ASSETSDIR}/citation-style.csl" \
        "https://raw.githubusercontent.com/citation-style-language/styles/master/harvard-anglia-ruskin-university.csl"
}

join_content () {
    mkdir -p "${BUILDDIR}"
    echo "Uniendo contenido"
    cat "${CONTENTDIR}/guia/introduccion.md" > "${PATHTMP}"
    echo "" >> "${PATHTMP}"
    cat "${CONTENTDIR}/guia/procesos.md" >> "${PATHTMP}"
    echo "" >> "${PATHTMP}"
    cat "${CONTENTDIR}/guia/diseno-despliegue.md" >> "${PATHTMP}"
    echo "" >> "${PATHTMP}"
    cat "${CONTENTDIR}/guia/admin-desarrollo.md" >> "${PATHTMP}"
    echo "" >> "${PATHTMP}"
    cat "${CONTENTDIR}/guia/pipeline.md" >> "${PATHTMP}"
    echo "" >> "${PATHTMP}"
    cat "${CONTENTDIR}/guia/infraestructura.md" >> "${PATHTMP}"
    echo "" >> "${PATHTMP}"
    echo "# Referencias" >> "${PATHTMP}"
}

pdf_print() {
    mkdir -p "${BUILDDIR}"
    echo "Creating pdf-print output"
    pandoc "${CONTENTDIR}/metadata.yaml" "${PATHTMP}" \
        --resource-path="${CONTENTDIR}" \
        --filter pandoc-citeproc \
        --template="./layouts/template.tex" \
        -N \
        --bibliography="${CONTENTDIR}/bibliography.bib" \
        --csl="${ASSETSDIR}/citation-style.csl" \
        --from="markdown+tex_math_single_backslash+tex_math_dollars+raw_tex" \
        --to="latex" \
        --output="${BUILDDIR}/output_print.pdf" \
        --pdf-engine="xelatex" 
}

$*
