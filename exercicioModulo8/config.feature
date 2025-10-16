#language: pt

Funcionalidade: Configuração
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto e escolher a quantidade
Para depois inserir no carrinho

Contexto:
Dado que estou na página de um produto da EBAC

Cenário: Seleções obrigatórias de cor, tamanho e quantidade
Dado que não selecionei a cor, tamanho ou quantidade
Quando eu tentar adicionar o produto ao carrinho
Então deve ser exibida uma mensagem informando que todos os campos são obrigatórios
E o produto não deve ser adicionado ao carrinho

Cenário: Limite máximo de 10 produtos por venda
Dado que estou configurando um produto
Quando eu selecionar uma quantidade maior que 10
Então o sistema deve impedir a ação de adicionar ao carrinho
E deve exibir uma mensagem informando que o limite máximo é de 10 produtos por venda

Cenário: Botão "Limpar" restaura estado original
Dado que selecionei uma cor, tamanho e quantidade
Quando eu clicar no botão “Limpar”
Então as seleções devem ser removidas
E os campos devem retornar ao estado original (sem seleção)