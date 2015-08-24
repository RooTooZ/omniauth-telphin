require 'omniauth-oauth2'

module OAuth2
  module Strategy
    class ClientCredentials < Base
      def get_token(params = {}, opts = {})
        params.merge!('grant_type' => 'client_credentials')
        params.merge! client_params
        @client.get_token(params, opts.merge('refresh_token' => nil))
      end
    end
  end
end