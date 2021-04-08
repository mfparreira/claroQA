
Dado('que a devedor acesse o sistema') do
    visit 'http://clarohomologacao.negociafacil.com.br/'
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
            log "logado"
            page.save_screenshot('log/screenshots/' + "Sucesso" + '.png')
        else
            log 'não logado'
        end
end

Dado('Preencha o cpf invalido {string}') do |cpf_inválido|
  @Login.PreencheCampoCpfInvalido(cpf_inválido)
    
  end
  
  
  
  Então('deve ver uma mensagem de erro informando {string}') do |msg|
    
    msg_error = find('.error').text
    expect(msg_error).to eql msg
    page.save_screenshot('log/screenshots/' + "erro" + '.png')
  end