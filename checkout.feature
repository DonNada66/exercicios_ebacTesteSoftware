            #language: pt

            Funcionalidade: Checkout de produtos
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que estou na tela de checkout da EBAC-SHOP

            Esquema do Cenário: Validação de campos obrigatórias
            Dado que preencha os campos <nome>, <sobrenome>, <pais>, <endereco>, <cidade>, <cep>, <telefone> e <email>
            E tentar finalizar a compra
            Então o sistema deve exibir a <mensagem>
            E o produto deve ser <resultado>

            Exemplos:
            | nome | sobrenome   | pais   | endereco             | cidade              | cep      | telefone    | email          | mensagem                      | resultado                       |
            | Joao | Silva Sauro | Brasil | Rua XV de Novembro   | São Miguel do Oeste | 89900000 | 49999999999 | joao@email.com | Compra finalizada com sucesso | Finalizar compra do usuário     |
            |      | Silva Sauro | Brasil | Rua XIV de Novembro  | São Miguel do Oeste | 89900000 | 49999999999 | joao@email.com | Informe seu nome              | Não finalizar compra do usuário |
            | Joao |             | Brasil | Rua XIII de Novembro | São Miguel do Oeste | 89900000 | 49999999999 | joao@email.com | Informe seu sobrenome         | Não finalizar compra do usuário |
            | Joao | Silva Sauro |        | Rua XV de Novembro   | São Miguel do Oeste | 89900000 | 49999999999 | joao@email.com | Informe seu país              | Não finalizar compra do usuário |
            | Joao | Silva Sauro | Brasil |                      | São Miguel do Oeste | 89900000 | 49999999999 | joao@email.com | Informe seu endereco          | Não finalizar compra do usuário |
            | Joao | Silva Sauro | Brasil | Rua XV de Novembro   |                     | 89900000 | 49999999999 | joao@email.com | Informe sua cidade            | Não finalizar compra do usuário |
            | Joao | Silva Sauro | Brasil | Rua XV de Novembro   | São Miguel do Oeste |          | 49999999999 | joao@email.com | Informe o CEP                 | Não finalizar compra do usuário |
            | Joao | Silva Sauro | Brasil | Rua XV de Novembro   | São Miguel do Oeste | 89900000 |             | joao@email.com | Informe seu telefone          | Não finalizar compra do usuário |
            | Joao | Silva Sauro | Brasil | Rua XV de Novembro   | São Miguel do Oeste | 89900000 | 49999999999 |                | Informe seu e-mail            | Não finalizar compra do usuário |
            | Joao | Silva Sauro | Brasil | Rua XV de Novembro   | São Miguel do Oeste | 89900000 | 49999999999 | joao@email.com | Compra finalizada com sucesso | Finalizar compra do usuário     |
            | Joao | Silva Sauro | Brasil | Rua XV de Novembro   | São Miguel do Oeste | 89900000 | 49999999999 | joao@email.com | Compra finalizada com sucesso | Finalizar compra do usuário     |
            | Joao | Silva Sauro | Brasil | Rua XV de Novembro   | São Miguel do Oeste | 89900000 | 49999999999 | joao@email.com | Compra finalizada com sucesso | Finalizar compra do usuário     |

