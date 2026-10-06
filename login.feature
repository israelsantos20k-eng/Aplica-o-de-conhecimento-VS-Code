            #language: pt

            Funcionalidade: Tela de Login
            Como cliente da EBAC-SHOP
            Quero me autenticar
            Para visualizar meus pedidos

            Cenário: Autenticação válida
            Dado que eu acesse a página de autenticação do portal da EBAC-SHOP
            Quando eu informar um usuário "Jonas@ebac.com"
            E informar a senha "Ebac@123"
            Então deve ser exibida a mensagem "Bem-vindo, Jonas!"

            Cenário: Usuário inexistente
            Dado que eu acesse a página de autenticação do portal da EBAC-SHOP
            Quando eu informar um usuário "dffjis@ebac.com"
            E informar a senha "Ebac@123"
            Então deve ser exibida a mensagem "Usuário inexistente!"

            Cenário: Usuário com senha inválida
            Dado que eu acesse a página de autenticação do portal da EBAC-SHOP
            Quando eu informar um usuário "jonas@ebac.com"
            E informar a senha "jgvzdxhjn"
            Então deve ser exibida a mensagem "usuário ou senha incorretos!"

            Esquema do Cenário: Autenticação de multiplos usuários
            Dado que eu acesse a página de autenticação do portal da EBAC-SHOP
            Quando eu informar o "<usuario>"
            E informar a "<senha>"
            Então deve ser exibida a "<mensagem>"

            Exemplos:
            | usuario          | senha      | mensagem                      |
            | joão@ebac.com    | Ebac@123   | Bem-vindo, joão!              |
            | maria@ebac.com   | Ebac@123   | Bem-vindo, maria!             |
            | jonas@ebac.com   | Ebac@123   | Bem-vindo, jonas!             |
            | douglas@ebac.com | Ebac@123   | Bem-vindo, douglas!           |