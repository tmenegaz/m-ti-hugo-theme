[Readme](./README.md#publicações "README") | [Próximo ->](./comandos-basicos-theme-conteudo.md#ambiente-de-desenvolvimento-comandos-básicos-theme-e-conteúdo "Comandos básicos, theme e conteúdo")

# [GOHUGO](https://gohugo.io)

[![Hugo - apresentação e instalação](http://i3.ytimg.com/vi/opniOry4hOM/maxresdefault.jpg
)](https://www.youtube.com/watch?v=opniOry4hOM)

## Hugo é um dos geradores de sites estáticos de código aberto mais populares. Com sua incrível velocidade e flexibilidade, Hugo torna a construção de sites algo divertida. E quem não gosta né!?.

- Hugo é rápido;

- Hugo suporta tipos de conteúdo ilimitados, taxonomias, menus, conteúdo dinâmico orientado a API e muito mais, tudo isso, sem plugins.

- Agrada à muitos a bela simplicidade da sintaxe do Markdown, mas há momentos que se quer mais flexibilidade. Os códigos de acesso Hugo permitem beleza e flexibilidade.

- Hugo é fornecido com modelos pré-fabricados para fazer um trabalho rápido de SEO, comentários, análises e outras funções. Basta saber o que escrever e então digitar em uma linhas de código. e pronto! bastou uma linha!.

- Hugo fornece suporte completo ao i18n para sites em vários idiomas com a mesma experiência direta de desenvolvimento que os usuários de Hugo adoram em sites em no seu próprio idioma.

- Hugo permite que você produza seu conteúdo em vários formatos, incluindo JSON ou AMP, e facilita a criação do seu próprio.

- Hugo é uma estrutura de site de uso geral. Tecnicamente falando, Hugo é um gerador de site estático. Ao contrário dos sistemas que constroem uma página dinamicamente a cada solicitação de visitante, Hugo cria páginas quando você cria ou atualiza seu conteúdo. Como os sites são visualizados com muito mais frequência do que os sistemas gerando a partir de uma solicitação e resposta dinâmica, o Hugo foi então, projetado para fornecer uma experiência de mão-dupla:
   
    - a visualização ideal do conteúdo para os usuários finais do site;
    - uma experiência de escrita ideal para os autores do site.

- Os sites criados com Hugo são extremamente rápidos e seguros. Os sites da Hugo podem ser hospedados em qualquer lugar, incluindo Netlify, Heroku, GoDaddy, DreamHost, GitHub Pages, GitLab Pages, Surge, Aerobatic, Firebase, Google Cloud Storage, Amazon S3, Rackspace, Azure e CloudFront e funcionam bem com CDNs (rede de fornecimento de conteúddo). Os sites Hugo são executados sem a necessidade de um banco de dados ou dependências de trabalhos muito elebarados para responder a uma demanda em tempos de execução. Então, não precisa de um back-end com linguagens como Ruby, Python ou PHP.

- Pensou-se em Hugo como a ferramenta ideal de criação de sites com tempos de criação quase instantâneos, capazes de reconstruir sempre que uma alteração é feita.

## Mas oque o Hugo faz?

- Em termos técnicos, Hugo pega um diretório de origem de arquivos e modelos e os usa como entrada para criar um site completo.

## Para quem o hugo foi feito?

- Hugo é para pessoas que preferem escrever em um editor de texto em vez de um navegador.

- Hugo é para pessoas que desejam codificar manualmente seu próprio site sem se preocupar em configurar tempos de execução complicados e dependências e bancos de dados.

- Hugo é para pessoas que estão criando um blog, um site da empresa, um site de portfólio, documentação, uma única página de destino ou um site com milhares de páginas.

## Instalação

Abra o terminal no seu Linux 

```bash
Ctrl+Alt+t
```

Pra instalar no Debian ou Ubuntu precisa dessas dependências instaladas

```bash
# dependências
sudo apt-get install build-essential curl file git

# instala o brew para linux
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"

# configura o brew
test -d ~/.linuxbrew && eval $(~/.linuxbrew/bin/brew shellenv)
test -d /home/linuxbrew/.linuxbrew && eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
test -r ~/.bash_profile && echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.bash_profile
echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.profile
```

Você usa outra distro, então é possível saber mais em [Homebrew-on-Linux](https://docs.brew.sh/Homebrew-on-Linux)

Agora digite a linha abaixo é tudo o que você precisa para usar o Hugo será instalado:

```bash
brew install hugo
```

Para isntalar no Windows você pode precisar do [chocolatey](https://chocolatey.org/) ou do [scoop](https://scoop.sh/). Depois, basta digitar no ```cmd:```

```bat
choco install hugo -confirm
```

ou

```bat
scoop install hugo
```

Para isntalar no Mac você vai usar o [brew](https://brew.sh/)

```sh
brew install hugo
```

---

[Readme](./README.md#publicações "README") | [Próximo ->](./comandos-basicos-theme-conteudo.md#ambiente-de-desenvolvimento-comandos-básicos-theme-e-conteúdo "Comandos básicos, theme e conteúdo")