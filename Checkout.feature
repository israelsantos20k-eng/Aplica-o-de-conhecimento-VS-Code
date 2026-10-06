            #language: pt
            Funcionalidade: Tela de checkout
            Como cliente da EBAC-SHOP
            Quero concluir meu cadastro
            Para finalizar minha compra

            Contexto: Checkout
            Dado que estou na página de checkout

            Esquema do Cenário: 1 - Informações corretas no checkout
            E preencho o campo "Nome" com "<joão>"
            E preencho o campo "Endereço" com "<Rua das Flores, 123>"
            E preencho o campo "Cidade" com "<são paulo>"
            E preencho o campo "País" com "<brasil>"
            E preencho o campo "CEP" com "<12345-678>"
            E preencho o campo "Telefone" com "<(11) 98765-4321>"
            E preencho o campo "Email" com "<joao@email.com>"
            Quando clico no botão "Finalizar Compra"
            Então devo ver a mensagem 'Compra finalizada com sucesso!'



Esquema do Cenário: 2 - Email inexistente no checkout
E preencho o campo "Email" com "jhvec@ebac.com"
Quando clico no botão "Finalizar Compra"
Então devo ver a mensagem 'Email não existe, por favor cadastre-se antes de finalizar a compra'



Esquema do Cenário: 3 - Campos vazios no checkout
E preencho o campo "Nome" com "<>"
E preencho o campo "Endereço" com "<>"
E preencho o campo "Cidade" com "<>"
E preencho o campo "País" com "<>"
E preencho o campo "CEP" com "<>"
E preencho o campo "Telefone" com "<>"
E preencho o campo "Email" com "<>"
Quando clico no botão "Finalizar Compra"
Então devo ver a mensagem 'Por favor, preencha todos os campos obrigatórios antes de finalizar a compra'