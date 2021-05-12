
Dado('que a devedor acesse o sistema') do
    @Login.go
end
  
Dado('Preencha o cpf') do 
   @Login.PreencheCampoCpf
end
  
Dado('clique em consulte') do
    @Login.ClicaBotaoEntrar
    
end
  
Então('vejo o menu principal') do
    
    aux = find ('#linkOfertas')
        if aux 
            log 'logado'
        else
            log 'não logado'
        end
end


Dado('clique na opção para incluir CNPJ') do
    @Login.clicarCNPJ
end
  
Dado('Preencha o CNPJ') do
    @Login.PreencheCampoCNPJ
end


Dado('Preencha o cpf invalido {string}') do |cpf_inválido|
  @Login.PreencheCampoCpfInvalido(cpf_inválido)
    
end
  
Dado('Preencha a data de nascimento') do
    @Login.PreencheCampoDataNascimento
  end
  
  Dado('Preencha a data de nascimento errada {string}') do |data_nasc_errada|
    @Login.PreencheCampoDataNascimetoInvalido(data_nasc_errada)
  end
  
Então('deve ver uma mensagem de erro informando {string}') do |msg|
    msg_error = find('.errorList').text
    expect(msg_error).to eql msg
end