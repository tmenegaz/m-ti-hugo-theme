#!/bin/bash

# use aspas duplas se quiser usar um nome com palavras separadas: "m ti hugo theme" (não recomendado).
hugo new site m-ti-hugo-theme

# ir para m-ti-hugo-theme
cd m-ti-hugo-theme

# cria uma pasta oculta chamada .git com as configurações necessárias
# para usar o git, a partir daqui
git init

# par salvar e recuperar arquivos do projeto no repositório github que você, eventualmente criou, coloque o nome do seu usuário githyb em SEU-USUÁRIO-GITHUB.
# git remote add origin https://github.com/SEU-USUÁRIO-GITHUB/m-ti-hugo-theme.git

# limpar a tela
clear

# vou pegar um theme no github
git submodule add https://github.com/budparr/gohugo-theme-ananke.git themes/ananke

# comando para adicionar o thme chamado ananke no meu projeto Hugo
echo 'theme = "ananke"' >> config.toml

subl m-ti-hugo-theme
# criar um pouco de conteúdo
hugo new posts/meu-primeiro-post.md

# iniciar o servidor pra exibir o conteúdo que ainda é um rascunho
hugo server -D
