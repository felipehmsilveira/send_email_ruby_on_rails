module Api
  module V1
    class EmailController < ApplicationController

      def index
          response = {}
          response[:aviso] = 'API em contrução'
          @data = response
      end

      def create
        response = {}

        if params[:token] == 'XXX-XXX-XXX'  # Aqui é o token de acesso da API, configure-o manualmente.
         unless params[:to].blank?
            response[:email] = 'Enviado com sucesso'
            SendEmailMailer.welcome_email(params[:link], params[:to]).deliver_now
            @data = response
         else
          response[:aviso] = 'Não há um destinatário presente.'
          @data = response
          end
        else
          response = {}
          response[:aviso] = 'Você não tem acesso para esta API. ¬¬'
          @data = response
        end
      end

      private
      
    end
  end
end
