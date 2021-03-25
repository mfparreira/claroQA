#language: pt

@Login_steps
Funcionalidade: Login
Sendo uma revendedora Boticário com uma dívida ativa
Posso acessar  o sistema com meu CPF para visualizar meus débitos
Para assim poder efetuar acordos


            # @consultar_devedor_bd
            # Cenario: Consultar devedor no banco de dados
            # Dado que um teste vai ser iniciado
            # Entao consulto no banco um devedor


            @cpf_valido
            Cenario: Usuário faz login

            Dado que a devedor acesse o sistema
            E Preencha o cpf 
            E clique em consulte
            Então vejo o menu principal


            @cpf_nao_encontrado
            Cenario: CPF Não Encontrado

            Dado que a devedor acesse o sistema
            E Preencha o cpf invalido "35967338802"
            E clique em consulte
            Então deve ver uma mensagem de erro informando "CPF ou CNPJ não encontrado."


