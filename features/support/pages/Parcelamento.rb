class Parcelamento < SitePrism::Page
    include Capybara::DSL

    #Elementos do front mapeados
    elements :selecionarContratoANegociar, '.default_button'
    elements :opcoesPgt, '.offers-picker'
    element :continuarBtn, '.default_button'
    element :selecionarDuasVezes, '.offers-picker__checkbox'

    

    def selecionarContrato
        selecionarContratoANegociar[0].click 
    end

    
    def exibeOpcoesParcelamento
        @opções = opcoesPgt.to_s      
    end

    def continuarAcordo
        continuarBtn.click
    end
     
    def selecionarDuasVezes
        selecionarDuasVezes[1].click
    end
    
    
end