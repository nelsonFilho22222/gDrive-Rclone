#!/bin/bash




# Sincronizando Área de Trabalho
chmod +x LAreaTrabalho.sh
echo "Sincronizando Área de Trabalho..."


./LAreaTrabalho.sh -r
if [ $? -ne 0 ]; then
    echo "Erro ao sincronizar Área de Trabalho. Verifique o log para mais detalhes."
    exit 1
fi
echo "Area de Trabalho já foi"


chmod +x LImagens.sh
echo "Sincronizando Imagens..."


./LImagens.sh -r


if [ $? -ne 0 ]; then
    echo "Erro ao sincronizar Área de Trabalho. Verifique o log para mais detalhes."
    exit 1
fi
echo "Imagens.sh foi"



# Sincronizando Músicas
chmod +x LMusicas.sh
echo "Sincronizando Músicas..."


./LMusicas.sh -r


if [ $? -ne 0 ]; then
    echo "Erro ao sincronizar Músicas. Verifique o log para mais detalhes."
    exit 1
fi
echo "Musicas já foi"


# Sincronizando Vídeos
chmod +x LVideos.sh
echo "Sincronizando Vídeos..."


./LVideos.sh -r
if [ $? -ne 0 ]; then
    echo "Erro ao sincronizar Vídeos. Verifique o log para mais detalhes."
    exit 1
fi
echo "Videos já foi"


# Sincronizando Documentos
chmod +x LDocumentos.sh
echo "Sincronizando Documentos..."


./LDocumentos.sh -r
if [ $? -ne 0 ]; then
    echo "Erro ao sincronizar Documentos. Verifique o log para mais detalhes."
    exit 1
fi
echo "Documentos já foi"

# Finalizar
echo "!!!!!BACKUP CONCLUÍDO!!!!!!"
