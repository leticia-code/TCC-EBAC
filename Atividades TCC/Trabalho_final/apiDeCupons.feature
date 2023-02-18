            #language: pt

            Funcionalidade: API de Cupons
            Como admin da EBAC-SHOP
            Quero criar um serviço de cupom
            Para poder listar e cadastrar os cupons

            Cenário: Buscar cupom por ID
            Dado que eu acesse a API de cupons
            Quando eu informar um ID de cupom no método GET
            Então as informações do cupom devem ser listadas

            Esquema do Cenário: Cadastrar cupom
            Dado que eu acesse a API de cupons
            E acesse o método POST
            E informe o <codigo> do cupom 
            E o <valor>
            E o tipo de <desconto>
            E a <descricao>
            Quando eu clicar para cadastrar
            Então o cupom deve ser cadastrado corretamente

            | codigo     | valor | desconto      | descricao           |
            | Ganhe10    | 10.00 | fixed_product | Cupom de teste      |
            | Ganhe15    | 15.00 | fixed_product | Desconto de R$15.00 |
            | Liquida50  | 50.00 | fixed_product | Desconto de R$50.00 |

            