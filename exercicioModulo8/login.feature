            #language: pt

            Funcionalidade: Tela de Login
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página de autenticação da EBAC-SHOP

            Cenário: Autenticação Válida
            Quando eu digitar o usuário "joao@ebac.com.br"
            E a senha "senha@123"
            Então deve exibir uma mensagem de boas vindas
            E ser direcionado para a tela de checkout

            Cenário: Usuário inexistente
            Quando eu digitar o usuário "michelangelo@ebac.com.br"
            E a senha "senha@123"
            Então deve exibir uma mensagem de alerta: "Usuário ou senha inválidos"

            Cenário: Usuário com senha inválida
            Quando eu digitar o usuário "joao@ebac.com.br"
            E a senha "fgfauisfhauif"
            Então deve exibir uma mensagem de alerta: "Usuário ou senha inválidos"