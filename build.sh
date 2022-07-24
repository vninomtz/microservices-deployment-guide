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
    mkdir "${BUILDDIR}" -p
    echo "Uniendo contenido"
    cat "${CONTENTDIR}/guia/introduccion.md" > "${PATHTMP}"
    echo "" >> "${PATHTMP}"
    cat "${CONTENTDIR}/guia/procesos.md" >> "${PATHTMP}"
    # cat "./procesos/README.md" "./procesos/diseno.md" "./procesos/preparacion-plataforma.md" >> "${PATHTMP}"
    echo "" >> "${PATHTMP}"
    cat "${CONTENTDIR}/guia/diseno-despliegue.md" >> "${PATHTMP}"
    # cat "./diseno-despliegue/README.md" "./diseno-despliegue/arquitectura.md" "./diseno-despliegue/estrategia.md" "./diseno-despliegue/tecnologias-infraestructura.md" "./diseno-despliegue/configuracion.md" "./diseno-despliegue/observabilidad.md" >> "${PATHTMP}"
    echo "" >> "${PATHTMP}"
    cat "${CONTENTDIR}/guia/admin-desarrollo.md" >> "${PATHTMP}"
    # cat "./admin-entorno-desarrollo/README.md" "./admin-entorno-desarrollo/admin-config.md" "./admin-entorno-desarrollo/control-versiones.md" "./admin-entorno-desarrollo/admin-construccion.md" "./admin-entorno-desarrollo/admin-artefactos.md" >> "${PATHTMP}"
    echo "" >> "${PATHTMP}"
    # cat "./pipeline-despliegue/README.md" "./pipeline-despliegue/integracion-continua.md" "./pipeline-despliegue/servidor-ci.md" "./pipeline-despliegue/automatizacion-liberaciones.md" "./pipeline-despliegue/entrega-continua.md" >> "${PATHTMP}"
    cat "${CONTENTDIR}/guia/pipeline.md" >> "${PATHTMP}"
    echo "" >> "${PATHTMP}"
    cat "./infraestructura/README.md" "./infraestructura/admin-infra.md" "./infraestructura/infra-como-codigo.md" >> "${PATHTMP}"
    echo "" >> "${PATHTMP}"
    echo "# Referencias" >> "${PATHTMP}"
}

pdf_print() {
    mkdir "${BUILDDIR}" -p
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
