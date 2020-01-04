[Index](./README.md#publicações "index") | [<- Voltar](./estrutura-dos-diretorios.md#estrutura-dos-diretórios "Estrutura dos diretórios") | [Próximo ->](./404.md#ops "Ops!")

# Ramo e folha

### Hugo - folha , ramo e layouts/1

[![Hugo - folha , ramo e layouts/1](http://i3.ytimg.com/vi/rWdilEzyODo/hqdefault.jpg "Hugo - folha , ramo e layouts/1")](https://youtu.be/rWdilEzyODo)

### Hugo - folha , ramo e layouts/2

[![Hugo - folha , ramo e layouts/2](http://i3.ytimg.com/vi/2TvjRkOvjXI/hqdefault.jpg "Hugo - folha , ramo e layouts/2")](https://youtu.be/2TvjRkOvjXI)

 Os pacotes de páginas são a principal forma de organizar os arquivos de conteúdo. Os nós de folhas e galhos das árvores de [```Estrutura de Dados```](https://en.wikipedia.org/wiki/Tree%5F(data%5Fstructure)) servem como uma grande analogia para ajudar a se relacionar com os pacotes configuráveis do ​​Hugo. Você pode escolher duas meneiras distintas de organizar seu pacotes.

> - Folha - Leaf
>
>       Um nó sem filhos.
>
> - Ramo - Branch
>       
>       Um nó com pelo menos um filho (um filho pode ser uma folha).

O hugo introduziu os pacotes de páginas a partir da versão ```0.32.``` Um dos benefício do uso de um pacote de páginas em vez de uma página normal é que você pode colocar os arquivos de recursos associados à postagem (como imagens) no mesmo diretório da própria postagem. Isso significa que você não precisa mais colocá-los no diretório ```static/,``` o que tem sido bastante confuso para iniciantes do Hugo.

Vejamos então, um rápido resumo das diferenças entre esses tipos de pacotes

descrição | pacote de folhas | pacote de ramos
----------|------------------|----------------
Uso | Coleção de conteúdo e anexos para páginas únicas | Coleção de anexos para páginas de seção (home page, seção, termos de taxonomia, lista de taxonomia)
Nome do arquivo para identificar cada tipo | index.md | _index.md
Recursos permitidos | Tipos de página e não página (como imagens, pdf, etc) | Apenas tipos que não são de página (como imagens, pdf, etc.)
Onde os Recursos podem estar? | Em qualquer nível de diretório dentro do diretório do pacote configurável folha(index.md). | Somente no nível do diretório do pacote configurável da ramificação, ou seja, o diretório que contém o _index.md.
Tipo de layout |  Única página | Lista de páginas
Aninhamento | Não permite o aninhamento de mais feixes embaixo dele | Permite o aninhamento de feixes de folhas ou galhos embaixo dele
Exemplo | ```content/posts/my-post/index.md``` | ```content/posts/_index.md```
Conteúdo de arquivos de páginas que não são de index | Acessado apenas como recursos da página | Acessado apenas como páginas regulares

Então uma pacote de folha (Bundle Leaf) é um diretório em qualquer hierarquia dentro do ```content/,``` que contém um arquivo index.md.

Mas o pacote de ramificação é considerado pelo hugo como uma seção, dá mesma forma que o primeiro nível de diretório em ```content.``` Vamos colocar o nosso ```_index.md``` no 1º nível de ```content.``` Lembrem-se de que o tipo de ```layout``` é ```lista``` para o pacote de ramos.

```bash
# apague seu projeto antigo caso não tenha feito
sudo rm -r m-ti-hugo-theme

# crie um novo projeto
hugo new site m-ti-hugo-theme

# vá para dentro do projeto
cd m-ti-hugo-theme

# criar o pacote de ramo
hugo new _index.md
```

A estrutura inicial ficou assim:

![Estrutura básica](./imagens/estrutura.png 'Estrutura básica gerada pelo comando "hugo new site m-ti-hugo-theme" e pacote de ramos com o comando "hugo new _index.md"')

No seu arquivo ```_index.md``` escreva o ```title: "m ti - Moderna Tecnologia da Informação"``` e um pouco de conteúdo, como no vídeo passado, para [```definir um shortcodes```](./estrutura-dos-diretorios.md#layouts "Estrutura dos diretórios - layouts").

Esse é oconteúdo de ```_index.md```

```md
{{< 
    blocks class1="blocks"
    
    href=""
        
    class2="blocks-inner"
        
    class3="blocks-inner"
        
    h1="O layout grid"

    src="/images/grid.jpg" alt="Imagem de um grade em verde com linhas brancas onde está escrito: css grid layout"

    class4="blocks-inner"

    p="Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
>}}
```

É importante organizar os diretórios e seguir as regras do ```hugo.``` Vimos que um dos fundomantos do ```hugo``` é se estruturar em [pacotes de páginas](./ramo-e-folha.md#ramo-e-folha) e agora poderemos organizar os diretórios de ```content``` com uma [estrutura de diretórios](./estrutura-dos-diretorios.md#estrutura-dos-diretórios "Estrutura dos diretórios") como essa:


```bash
# cria um lugar para os pacotes de posts e as imagens
mkdir -p archetypes/post-bundle/images
```

> Tem uma imagem no material [Estrutura dos diretórios](./estrutura-dos-diretorios.md#archetypes "Estrutura dos diretórios")

```bash
# copiar ou colocar uma imagem (será usada em outro vídeo).
sudo cp static/images/float.jpg archetypes/post-bundle/images/

# uma folha para página
:> archetypes/post-bundle/index.md
```

>Copie e cole o conteúdo do ```archetypes/default.md``` para o arquivo ```archetypes/post-bundle/index.md```.
> Agora crie o post do tipo de pacote folha(página única): ```float-layout``` 

```bash
# o primeiro post com --kind para determinar que é do tipo post-bundle na seção post-bundle
hugo new --kind post-bundle posts/float-layout
```

Agora é importante criar um arquivo chamado ```index.html``` em ```layouts/```

Faça o download do arquivo [```modelo-v-1.zip```](./scripts/modelo-v-1.zip) para usar o modelo da ```home page,``` se quiser, e extráia para dentro de ```static``` do seu projeto.

Mova o arquivo ```index.html``` que você extraiu do ```modelo-v-1.zip``` para o diretório ```layouts``` ou, se preferir, crie o seu próprio, junto com o diretório ```shortcodes```:

```bash
# cria um arquivo index.html em layouts - pode substituir o comando ":>" por "touch" caso esteja no bash.
:> layouts/index.html

# cria o diretório em layouts
mkdir -p layouts/shortcodes

```

No arquivivo ```blocks.html,``` que deve ser criado em ```layouts/shortcodes/,```
coloque esse código:

```html
<div class="{{.Get "class1"}}">
    <a href="{{.Get "href"}}">
        <h1 class="{{.Get "class2"}}">{{.Get "h1"}}</h1>
        <img class="{{.Get "class3"}}" src="{{.Get "src"}}" alt="{{.Get "alt"}}">
        <p class="{{.Get "class4"}}">{{.Get "p"}}</p>
    </a>
</div>
```

É importante modificar a página ```index.html,``` em ```layouts,``` pra que o ```blog``` funcione com as ```function```  do ```hugo```.

- Coloque um ```/``` antes que  cada ```css```

- Em ```title``` substitua o título por ```{{ .Title }}``` para usar o título definido em ```content/_index.md```

- Na ```div id=top-container">,``` em ```a href="/"``` substitua o  ```/``` por ```{{.URL}}``` 

- Comente ou apague as div com ```class="blocks"``` e  ```class="blocks-1"```

- No  lugar dessas ```div's``` chame o conteúdo definido no codeblocks de ```content/_index.md``` com a ```variável``` ```{{.Content}}```

---

[Index](./README.md#publicações "index") | [<- Voltar](./estrutura-dos-diretorios.md#estrutura-dos-diretórios "Estrutura dos diretórios") | [Próximo ->](./404.md#ops "Ops!")