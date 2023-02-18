            #language: pt

            Funcionalidade: Adicionar item ao carrinho
            Como cliente da EBAC-SHOP
            Quero adicionar produtos no carrinho
            Para realizar a compra dos itens

            Cenário: Inserir mais de 10 itens do mesmo produto
            Dado que eu acesse o sistema EBAC-SHOP
            E eu adiciono 10 itens do mesmo produto ao carrinho
            Quando eu clicar para adicionar mais 1 item no mesmo produto
            Então a ação não será permitida
            E será exibida uma mensagem de erro 

            Esquema do Cenário: Receber cupom
            Dado que eu acesse o sistema EBAC-SHOP
            E adicione itens ao carrinho
            Quando o valor da minha compra for <valor>
            Então devo ganhar <desconto> % de desconto

            | valor | desconto |
            | 120   | 0        |
            | 210   | 10       |
            | 400   | 10       |
            | 590   | 10       |
            | 605   | 15       |
            | 680   | 15       |

            