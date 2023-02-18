            #language: pt

            Funcionalidade: Login na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login na plataforma
            Para visualizar meus pedidos


            Cenário: Senha inválida
            Dado que eu acesse o sistema EBAC-SHOP na seção de login
            Quando eu inserir um login válido
            E uma senha inválida
            Então será exibida uma mensagem de erro

            Esquema do Cenário: Login por e-mail, login ou cpf
            Dado que eu acesse o sistema EBAC-SHOP na seção de login
            Quando eu inserir o login <login>
            E a senha <senha>
            Então deve ser permitido acesso ao sistema

            |       login              |   senha  |
            | leticiacardoso@gmail.com | Ebac@123 |
            | le.cardoso               | Ebac@123 |
            | 123.456.789-10           | Ebac@123 |