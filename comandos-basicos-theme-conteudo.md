[Readme](./README.md#publicações "README") | [<- Voltar](./apresentacao-instalacao.md#gohugo "Apresentação e instalação") | [Próximo ->](./estrutura-dos-diretorios.md#estrutura-dos-diretórios "Estrutura dos diretórios")

# Ambiente de desenvolvimento, comandos básicos, theme e conteúdo

[![Hugo - comandos básicos, theme e conteúdo](http://i3.ytimg.com/vi/k6Wot5LZCUA/maxresdefault.jpg
)](https://www.youtube.com/watch?v=k6Wot5LZCUA)

- Eu vou usar no ```ubuntu 18.04``` o ```sublime-text3``` e o ```terminal``` com ```fish```;

- Abra o terminal e instale o seu editor. O git foi instalado no vídeo anterior e o fish é opcional. Por via das dúvidas ai estão as linhas de código que você precisa para as dependências, configurações, o ```sublime-text, git, hugo``` e ```fish```.

```bash
#dependências
sudo apt-get install build-essential curl file git 

# instala o brew para linux. Dúvidas, acesse: https://docs.brew.sh/Homebrew-on-Linux
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"

# configura o brew
test -d ~/.linuxbrew && eval $(~/.linuxbrew/bin/brew shellenv)
test -d /home/linuxbrew/.linuxbrew && eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
test -r ~/.bash_profile && echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.bash_profile
echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.profile

# download do repositório do sublime-text3
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -

# habilita o repositório
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

# atualiza os repositórios
sudo apt update

# instala
sudo apt install sublime-text fish

# instala
brew install hugo
```

- É importante ter um lugar para trabalhar. Eu vou trabalha em um endereço que é o seguinte: ```~/Documentos/aula/blog/go_youtube/projeto_hugo_theme```.

- Pra isso eu vou digitar no terminal:

```bash
# criar o diretório
mkdir -P ~/Documentos/aula/blog/go_youtube/projeto_hugo_theme

# ir para o diretório
cd ~/Documentos/aula/blog/go_youtube/projeto_hugo_theme

# mudar de bash para fish
fish

#limpara a tela
Ctrl+l
```

- Essa pasta, ```projeto_hugo_theme``` vai concentrar tudo o que eu preciso prara o desenvolvimento do projeto: ```git init, hugo``` e os demais arquivos, como ```css, html, js, md etc```.

- Rapidinho aqui! Pra quem não sabe usar muito bem o terminal:

> Quando eu quero saber onde eu estou, qual é o meu diretório atual eu digito ```pwd```;
Quando eu quero mudar de diretório para frente, ir para uma pasta filha ou subpasta usa-se ```cd``` e o endereço. Ex.: estou em ```Documentos``` então, digito no terminal ```cd aula/blog/go_youtube/projeto_hugo_theme```
Onde, estes diretórios são descendentes de ```Documentos```.

> Quando o que se quer é voltar, digita-se ```cd``` e o endereço das pastas pais. Ex.: estou em ```projeto_hugo_theme``` então, digito no terminal ```cd ../../../../../Documentos/``` onde, estes diretórios são ascendentes de ```projeto_hugo_theme```.

- É muito importante que você domine isso: saber aonde está e para onde vai. Cada vez que você digita ```../``` você volta um nível para o diretório ascendente. Veja:

```bash
# ir para descendente
~/Documentos [1] $ cd aula/blog/go_youtube/projeto_hugo_theme/

# saber onde estou
~/D/a/b/g/projeto_hugo_theme $ pwd
/home/tmenegaz/Documentos/aula/blog/go_youtube/projeto_hugo_theme

# voltar para um ascendente
~/D/a/b/g/projeto_hugo_theme $ cd ../

# saber onde estou
~/D/a/b/go_youtube $ pwd
/home/tmenegaz/Documentos/aula/blog/go_youtube

# voltar para um ascendente
~/D/a/b/go_youtube $ cd ../

# saber onde estou
~/D/a/blog $ pwd
/home/tmenegaz/Documentos/aula/blog

# voltar para um ascendente
~/D/a/blog $ cd ../

# saber onde estou
~/D/aula $ pwd
/home/tmenegaz/Documentos/aula

# voltar para um ascendente
~/D/aula $ cd ../
~/Documentos $ 

```

- Então treine navegar pelos diretório e subdiretório, se você ainda não domina isso.

- Voltando!

- Então vamos usar Hugo: digite ai no seu terminal, e tenha certeza de que está no diretório do seu projeto:

```bash
# use aspas duplas se quiser usar um nome com palavras separadas: "m ti hugo theme" (não recomendado).
hugo new site m-ti-hugo-theme

# ir para m-ti-hugo-theme
cd m-ti-hugo-theme
```

- Agora vou iniciar o git para o projeto no meu github e também para poder pegar themes.

- O repositório já existe no meu [github](https://github.com/tmenegaz). Se você não sabe o básico do git com o github, dá uma olhada no meu vídeo

[![Git portable - Windows 10](http://i3.ytimg.com/vi/CPPl0gNLYVg/hqdefault.jpg)](https://youtu.be/CPPl0gNLYVg)

- Nesse vídeo também tem informações sobre como instalar alguns plugins no sublime-text3.

- vamos escrver no terminal, no diretório do meu site ```m-ti-hugo-theme```:

```bash
# cria uma pasta oculta chamada .git com as configurações necessárias para usar o git, a partir daqui
git init

# posso salvar e recuperar arquivos do meu projeto no meu repositório github
git remote add origin https://github.com/tmenegaz/m-ti-hugo-theme.git

# limpar a tela
Ctrl+l

# vou pegar um theme no github
git submodule add https://github.com/budparr/gohugo-theme-ananke.git themes/ananke

# comando para adicionar o thme chamado ananke no meu projeto Hugo
echo 'theme = "ananke"' >> config.toml

# criar um pouco de conteúdo
hugo new posts/meu-primeiro-post.md

# iniciar o servidor pra exibir o conteúdo que ainda é um rascunho
hugo server -D
```

- Agora é só abrir no navegador em  ```http://localhost:1313/```.

[Readme](./README.md#publicações "README") | [<- Voltar](./apresentacao-instalacao.md#gohugo "Apresentação e instalação") | [Próximo ->](./estrutura-dos-diretorios.md#estrutura-dos-diretórios "Estrutura dos diretórios")