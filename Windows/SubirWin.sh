

chmod +x WImagens.sh
echo "Sincronizando Imagens..."
./WImagens.sh -s
if [ $? -ne 0 ]; then
    echo "Erro ao sincronizar Área de Trabalho. Verifique o log para mais detalhes."
    exit 1
fi
echo "Imagens foi"



# Sincronizando Músicas
chmod +x WMusicas.sh
echo "Sincronizando Músicas..."
./WMusicas.sh -s
if [ $? -ne 0 ]; then
    echo "Erro ao sincronizar Músicas. Verifique o log para mais detalhes."
    exit 1
fi
echo "Musicas já foi"



# Sincronizando Vídeos
chmod +x WVideos.sh
echo "Sincronizando Vídeos..."
./WVideos.sh -s
if [ $? -ne 0 ]; then
    echo "Erro ao sincronizar Vídeos. Verifique o log para mais detalhes."
    exit 1
fi
echo "Videos já foi"


# Sincronizando Documentos
chmod +x WDocumentos.sh
echo "Sincronizando Documentos..."
./WDocumentos.sh -s
if [ $? -ne 0 ]; then
    echo "Erro ao sincronizar Documentos. Verifique o log para mais detalhes."
    exit 1
fi
echo "Documentos já foi"

# Finalizar
echo "!!!!!BACKUP CONCLUÍDO!!!!!!"



