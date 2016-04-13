require 'mailgun'

class EmailController < ApplicationController
    def mail
        
    end
    def good
    
        @soju = params[:title]
        @maxju = params[:content]
        @somax = params[:email]
        
        mg_client = Mailgun::Client.new("key-05ca93f069e687f8b2518140a1cdca44")

        message_params =  {
                   from: 'dnjsrhks98@naver.com',
                   to:   @somax,
                   subject: @soju,
                   text:    @maxju
                  }

        result = mg_client.send_message('sandbox5b8336651c714603afb0b177d331fdfa.mailgun.org', message_params).to_h!

        message_id = result['id']
        message = result['message']
    end
end
