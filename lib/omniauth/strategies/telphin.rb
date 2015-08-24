require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Telphin < OmniAuth::Strategies::OAuth2
      option :name, 'telphin'

      args [:client_id, :client_secret]
      option :client_options, {
                                :site => 'https://pbx.telphin.ru',
                                :token_url => '/oauth/token.php'
                            }

      def request_phase
        redirect callback_url
      end

      def callback_phase
        self.access_token = client.client_credentials.get_token
        env['omniauth.auth'] = auth_hash
        call_app!
      end
    end
  end
end

OmniAuth.config.add_camelization "telphin", "Telphin"