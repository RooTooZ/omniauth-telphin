require 'bundler/setup'
require 'sinatra'
require 'omniauth-telphin'

class OmniTelphinDemo < Sinatra::Base
  use Rack::Session::Cookie
  use OmniAuth::Builder do
    # provider :telphin, '<<telphin_Ключ клиента>>', '<<telphin_Секрет клиента>>', :provider_ignores_state => true, :debug => true
    provider :telphin, 'F~PUJXc8X5_2vUy7W5B~IBjXm6Hv~dRT', 'x~X1r206MB~ckpYhb6c.W4ch4OLx_9If', :provider_ignores_state => true
  end

  get '/' do
     <<-HTML
      <a href='/auth/telphin'>Sign in</a>
      HTML
  end

  get '/auth/telphin/callback' do
    @auth = request.env['omniauth.auth']
    @auth.to_json
  end

  get '/auth/failure' do
    "Sorry, but something went wrong :("
  end
end

OmniTelphinDemo.run!