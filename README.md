# UNDERMARKET — Versão Web para Google AI Studio

**Status:** protótipo jogável inicial (vertical slice). **Local:** Nova Liberdade, Distrito 03, cidade brasileira fictícia subterrânea. **Tecnologia:** React + TypeScript no invólucro e game engine Canvas modular em JavaScript (importável e evolutiva). **Uso:** navegador em desktop; controles A/D, setas, Shift e E.

## Por onde começar

1. Leia `docs/01_PROMPT_PRINCIPAL_AI_STUDIO.md` para iniciar ou refinar no AI Studio Build.
2. Para aproveitar exatamente **este código**, coloque a pasta num repositório GitHub e use **Build → + → Importar do GitHub**. O AI Studio não documenta a importação de um ZIP local como projeto completo; o ZIP fornecido aqui serve para armazenar ou enviar ao GitHub.
3. Para teste local sem instalar npm: na pasta raiz, execute `python -m http.server 8000` e abra `http://localhost:8000/preview.html`.
4. Para trabalhar no projeto React/TypeScript: `npm install`, `npm run dev`. Requer acesso ao registro npm.
5. Para publicar via AI Studio, abra o projeto importado e siga a opção de publicação/deploy disponível na sua conta. O AI Studio oferece opção de Cloud Run. Preços/planos podem variar.

## O que funciona no protótipo

- Exploração 2D lateral com câmera e PNGs **reais, independentes** no parallax (convertidos para WEBP transparente para navegador).
- Trem separado percorrendo o nível superior, silhuetas movendo-se em camada distante e luminosidade oscilando.
- Sprite com animações de parado, andando, correndo e cansado; fadiga de corrida.
- Entrada nas lojas pela tecla E ou por seleção no mapa. Retorno ao cenário.
- Mercado, ferro-velho, oficina de ferramentas, Sua Loja, bar, restaurante, motel, elevador; lixão e serviço público acessíveis pelo mapa local.
- Dinheiro, inventário de mercadorias com estado/valor, compra, vitrine, simulação de venda.
- PC: nome da loja, dados do estoque, créditos, passar expediente e save.
- Reparo após 18h com consumo de peças e ferramenta solda; etiquetadora/embaladora valorizam itens.
- Licenças e jornal de boletins com notícias estáticas de demonstração; vasculhar sucata.
- Cinco idiomas com textos principais: pt-BR, inglês, espanhol, alemão, chinês simplificado. Tradução de notícias e textos narrativos ainda parcial.
- Autosave `localStorage`, exportação/importação JSON (somente no navegador atual).

## Não funciona ainda

- **Multiplayer real**, login, banco de dados remoto ou saves na nuvem. Online significa web hospedável, não partidas em rede.
- Economia online autoritativa, mercado partilhado, chats, autenticação ou sincronização entre dispositivos.
- Todas as cenas dos sete distritos. Apenas D3 está jogável; outros distritos são nós descritivos/bloqueados.
- Trabalho artístico final do parallax: camadas novas procedurais da reconstrução anterior ainda precisam de acabamento.
- Catálogo dinâmico completo, IA real de NPCs, complexidade profunda de negociação e reparo, mini-jogos, áudio e colisões avançadas.
- Teste automatizado de navegação visual. A engine foi submetida à checagem sintática Node; o navegador automatizado no ambiente de criação bloqueou abertura local.

## Estrutura

```text
UNDERMARKET_WEB_GOOGLE_AI_STUDIO/
├── README.md
├── index.html                      # Entrada React + Vite
├── preview.html                    # Alternativa leve sem npm
├── package.json
├── tsconfig.json
├── vite.config.ts
├── src/
│   ├── main.tsx
│   ├── App.tsx
│   ├── engine.js                    # Loop de canvas + mecânicas
│   ├── preview.js                   # Entrada independente do React
│   └── styles.css
├── public/assets/
│   ├── distrito03/                  # 11 camadas + trem + silhuetas
│   ├── personagem/                  # 4 estados, 16 quadros cada
│   ├── npcs/                        # 16 personagens em perfil
│   ├── interiores/                  # Telas conceituais de atendimento
│   └── referencia_distrito03.webp   # Arte aprovada pelo criador
└── docs/
    ├── 01_PROMPT_PRINCIPAL_AI_STUDIO.md
    ├── 02_GDD_RESUMIDO.md
    ├── 03_ARQUITETURA_WEB.md
    ├── 04_ROADMAP_E_PROMPTS.md
    ├── 05_GUIA_IMPORTACAO_PUBLICACAO.md
    ├── 06_IDIOMAS_E_CONTEUDO.md
    └── manifesto_original_distrito03.json
```

## Referências visuais e decisões invioláveis

O projeto **não** se passa em São Paulo real. Nova Liberdade é inspirada em comércio brasileiro, letreiros, improvisação e engenharia de metrô. Não existe vista do céu. Toda janela abre para túneis, corredores e outros níveis subterrâneos. A arte `public/assets/referencia_distrito03.webp` é referência do Distrito 03, sem licença para substituir a identidade visual. No modo atendimento, o jogador vê o cliente **frontal, imóvel, sem braços/pernas visíveis, com objeto separado e já apoiado na mesa**, e não vê suas próprias mãos. A loja mantém PC à esquerda, porta fechada com visor à esquerda, vitrine central, estoque ao fundo, bancada de conserto à direita e ferramentas em baixo.

### Dados

O protótipo usa valores e estoques de demonstração. Não existem microtransações reais, chaves secretas, chamadas à API Gemini ou contas online. Para introduzir IA no jogo, usar um backend e dados validados; jamais pôr chave de API no cliente.
