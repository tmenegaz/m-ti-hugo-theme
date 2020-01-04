[Index](./README.md#publicações "index") | [<- Voltar](./comandos-basicos-theme-conteudo.md#ambiente-de-desenvolvimento-comandos-básicos-theme-e-conteúdo "Comandos básicos, theme e conteúdo") | [Próximo ->](./ramo-e-folha.md#ramo-e-folha "Ramo e folha")

# Estrutura dos diretórios

[![Hugo - estrutura dos diretórios](http://i3.ytimg.com/vi/qcUQXzdqqgU/hqdefault.jpg)](https://youtu.be/qcUQXzdqqgU)

> Script em bash para retomar o treinamento a partir do final do vídeo 2(![comandos básicos, theme e conteúdo](comandos-basicos-theme-conteudo.md)): ![video-2.sh](./scripts/video-2.sh)

- Abra o seu editor no projeto que você criou, conforme o vídeo anterior e deixe o terminal aberto.
 
- Você lembra que a CLI de Hugo cria uma estrutura de diretórios de projeto: o hugo pega esse diretório único e o usa como entrada para criar um site completo. Isso aconteceu quando você digitou ```hugo new site``` e atribuiu um nome pro seu site, que foi ```m-ti-hugo-theme```.

- No terminal digite ```ls -h``` para ter uma visão mais humana da forma como estão organizados os diretórios e arquivos. Você també pode ver pelo seu editor.

```bash
ls -h
archetypes/  content/  layouts/    static/
config.toml  data/     resources/  themes/
```

- Vamos fazer isso. Então abra o ```subl``` e use Ctrl+k+b para ver seu projeto na ```side bar```. Ele deve ter, basicamente estes arquivos e direórios:

![Estrutura do projeto](./imagens/estrut-proj.png 'Estrutura gerada a partir do comando "hugo new site"')

## archetypes

- archetypes contém arquivos que são modelos usados ​​quando você cria um novo conteúdo.

> Você pode criar novos arquivos de conteúdo no Hugo usando o comando ```hugo new.```
>
> Por padrão, Hugo criará novos arquivos de conteúdo com pelo menos data, título (inferidos do nome do arquivo) e draft = true. Isso economiza tempo e promove consistência para sites que usam vários tipos de conteúdo. Você também pode criar seus próprios arquétipos com campos de front matter pré-configurados e personalizados.
>
> Então vamos fazer algo prático para configurar o nosso archetypes. Acrescente no arquivo ```default.md,``` no cabeçalho do arquivo, entre os ```---``` o  ```featured_image: ""```.
>
> Crie um segundo post e verifique se agora o ```featured_image: ""``` está disponível. Em seguida coloque um arquivo ```.jpg``` no diretório ```static/images```. e, em ```featured_image: ""```, do seu post, coloque o caminho e o nome do arquivo ```.jpg```.

![Imagem usada em featured_image](./imagens/float.jpg 'Imagem usada em featured_image: Boia com Grapfruit')

> Caso você não saiba como criar um diretório, digite no terminal, dentro do seu projeto, ```mkdir -p static/images/```.
>
> Pare o servidor com ```Ctrl+c``` (caso estaja ligado) e carregue novamente com ```hugo server -D```.
>
> Veja a imagem carregada no seu post. Legal, né!

## contente

- Hugo usa seções para atribuir tipos de conteúdo padrão.

> Todo o conteúdo do seu site ficará dentro deste diretório. Cada pasta de nível superior em Hugo é considerada uma seção de conteúdo. Por exemplo, se seu site possui três seções principais - blog, artigos e tutoriais - você terá três diretórios em ```content:``` ```blog/conteúdo.md```; ```artigos/conteúdo.md``` e ```tutoriais/conteúdo.md.```

## layouts

> Armazena modelos na forma de arquivos ```.html``` que especificam como as visualizações do seu conteúdo serão renderizadas em um site estático. Os ```layouts``` incluem páginas de lista, sua página inicial, modelos de taxonomia, parciais, modelos de página única e muito mais.
>
> Vamos colocar uma imagem apenas para a página que tem o conteúdo, a partir do ```layouts.```

```md
# digite no post o shortcode
{{< pagina src="/images/float.jpg" title="Boia com Grapfruit" >}}
```

> shortcodes: Hugo é fornecido com um conjunto de códigos de acesso predefinidos que representam um uso muito comum. Esses códigos de acesso são para a conveniência do autor e para manter seu conteúdo de remarcação limpo.
>
> Agora faça o seguinte:

```bash
# crie o diretório
mkdir -p layouts/shortcodes/

# cria o arquivo com o mesmo nome que está no shortcode do post: {{< pagina src ... 
:> layouts/shortcodes/pagina.html

# o comando :> serve da criar um arquivo da mesma forma que touch

```

> O conteúdo do arquivo ```pagina.html```  é o seguinte:

```html

<!-- image -->
<figure {{ with .Get "class" }}class="{{.}}"{{ end }}>
    {{ with .Get "link"}}<a href="{{.}}">{{ end }}
        <img src="{{ .Get "src" }}" {{ if or (.Get "alt") (.Get "caption") }}alt="{{ with .Get "alt"}}{{.}}{{else}}{{ .Get "caption" }}{{ end }}"{{ end }} />
    {{ if .Get "link"}}</a>{{ end }}
    {{ if or (or (.Get "title") (.Get "caption")) (.Get "attr")}}
    <figcaption>{{ if isset .Params "title" }}
        <h4>{{ .Get "title" }}</h4>{{ end }}
        {{ if or (.Get "caption") (.Get "attr")}}<p>
        {{ .Get "caption" }}
        {{ with .Get "attrlink"}}<a href="{{.}}"> {{ end }}
            {{ .Get "attr" }}
        {{ if .Get "attrlink"}}</a> {{ end }}
        </p> {{ end }}
    </figcaption>
    {{ end }}
</figure>
<!-- image -->
```

> O elemento ```figure``` cria um bloco para a imagem e para as demais propriedades que quiseremos usar. Em seguida usa-se variáveis e funções para automatizar o processo de renderização da imagem jundo com o elemento pra legendas ```figcaption.``` Observe que as variáveis e funções são escritas demtro de ```{{ }}``` e o ```ponto``` representa a raiz do projeto. Falaremos sobre isso em um outro vídeos.
>
> Veja que no seu código ```html``` tem ```.Get "src"```; ```.Get "alt"``` etc. Agora, no seu post acrescente um ```alt="metade do grapfruit dentro de uma boia salva vidas",``` (o alt pode ter o que quiser. O meu é dá imagem que carreguei).
>
> O que o código diz é: carregar(pegar) as propriedades definidas no ```post``` para o ```html,``` se existirem. 

## static

> Armazena todo o conteúdo estático: imagens, CSS, JavaScript etc. Quando Hugo cria o site, todos os ativos dentro do diretório estático são copiados como estão. Já usamos o static e vacês vão ver que a gente vai usar muito esse diretório.

## data

> Esse diretório é usado para armazenar arquivos de configuração que podem ser usados ​​por Hugo ao gerar seu site. Você pode gravar esses arquivos no formato YAML, JSON ou TOML. Além dos arquivos adicionados a esta pasta, você também pode criar modelos de dados extraídos do conteúdo dinâmico. Veremos isso em outro vídeo.

**O ```assets``` e o ```config``` não são criados automaticamente**

## config

> Hugo é fornecido com um grande número de diretivas de configuração. O diretório de configuração é onde essas diretivas são armazenadas como arquivos JSON, YAML ou TOML. Todo objeto de configuração raiz pode permanecer como seu próprio arquivo e estruturado por ambientes. Projetos com configurações mínimas e sem necessidade de conscientização do ambiente podem usar um único arquivo config.toml na raiz.
>
> Muitos sites podem precisar de pouca ou nenhuma configuração, mas Hugo é fornecido com um grande número de diretivas de configuração para obter instruções mais detalhadas sobre como você deseja que Hugo crie seu site. Veremos isso em outro vídeo, também. Nota: o diretório config não é criado por padrão.

## assets

> Armazena todos os arquivos que precisam ser processados ​​pelo Hugo Pipes. Somente os arquivos cujos .Permalink ou .RelPermalink estão em uso serão publicados no diretório público.

---

[Index](./README.md#publicações "index") | [<- Voltar](./comandos-basicos-theme-conteudo.md#ambiente-de-desenvolvimento-comandos-básicos-theme-e-conteúdo "Comandos básicos, theme e conteúdo") | [Próximo ->](./ramo-e-folha.md#ramo-e-folha "Ramo e folha")