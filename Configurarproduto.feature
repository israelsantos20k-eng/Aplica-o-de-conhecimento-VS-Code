            #language: pt
            Funcionalidade: Configuração de produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

Contexto: Configuração de produto
    Dado que estou na página de configuração do produto

            Esquema do Cenário: 1- Seleções de cor, tamanho e quantidade
            E escolho a cor "<cor>" do produto
            E escolho o tamanho "<tamanho>" do produto
            E escolho a quantidade "<quantidade>" do produto
            Quando eu clico no botão "Adicionar ao carrinho"
            Então ele deve ser adicionado ao carrinho com as configurações selecionadas

            exemplos:
            | cor      | tamanho | quantidade |
            | Preto    | M       | 1          |
            | Branco   | G       | 2          |
            | Vermelho | GG      | 3          |

           
           
            Esquema do Cenário: 2 - Limitar quantidade de produtos
            Quando seleciono a cor "<cor>"
            E seleciono o tamanho "<tamanho>"
            E informo a quantidade "<quantidade>"
            Então o sistema deve "<resultado>"

            exemplos:
            | cor  | tamanho | quantidade | resultado               |
            | azul | M       | 9          | permitir a configuração |
            | azul | M       | 10         | permitir a configuração |
            | azul | M       | 11         | bloquear a configuração |



Esquema do Cenário: 3 - Limpar configurações do produto
    E selecionei a cor "azul"
    E selecionei o tamanho "M"
    E informei a quantidade "2"
    Quando clico no botão "Limpar"
    Então a cor deve voltar ao estado original
    E o tamanho deve voltar ao estado original
    E a quantidade deve voltar ao estado original