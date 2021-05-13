Before do
    #Variaveis globais
    @Login = Login.new
    # @Banco = Banco.new
    @Httparty = HttParty.new
   
   
end


# #Befora para pegar dados da base para fazer as chamadas HTTP e para fazer login. 
# Before("@login") do
#     log 'capturando dados do banco para teste'
#     @dados_obtidos = @Banco.consultarDevedorBDClaro
#     @cpf_obtido = [@dados_obtidos[0]]
#     @dev_id_obtido = @dados_obtidos[1].to_s
#     # log 'CPF selecionado para o teste ' + @cpf_obtido.to_s
#     # log 'dev id selecionado para o teste ' + @dev_id_obtido
#     @dados_obtidos_net = @Banco.consultarDevedorBDNet
#     @cpf_obtido_net = [@dados_obtidos[0]]
#     @dev_id_obtido_net = @dados_obtidos[1].to_s
# end

Before("@login") do
    visit 'http://clarohomologacao.negociafacil.com.br/'
    @Login.PreencheCampoCpf
    @Login.ClicaBotaoEntrar
end


After do |scenario|
    if scenario.failed?
      take_screenshot(scenario)
    end
  end
  
  def take_screenshot(scenario)
    if RbConfig::CONFIG["host_os"] == "mingw32"
      screenshot_path = 'C:\Users\Parreira\Documents\Professional Projects\NEGOCIAFACIL_AUTOMACAO_TESTES_CLARONET2' + '#{scenario.__id__}.png'
    else
      screenshot_path = './features/support/log/' + '#{scenario.__id__}.png'
    end   	
    
    page.driver.browser.save_screenshot(screenshot_path)
    embed(screenshot_path, "image/png", "SCREENSHOT")
  end