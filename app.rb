#!/usr/bin/env ruby
require 'rubygems'
require 'bundler'

require 'sinatra/base'
require 'sinatra/assetpack'
require 'haml'
require 'json'

class App < Sinatra::Base

  configure do
    set :appname, 'My App'      # use this for page title, app heading
  end


  set :root, File.dirname(__FILE__)
  register Sinatra::AssetPack
  assets do
    serve '/javascript', from: 'assets/javascript'
    serve '/css',        from: 'assets/css'
    serve '/images',     from: 'assets/images'

    js :app, '/javascript/app.js', [
                                    '/javascript/bootstrap.js'
                                   ]

    css :app, '/css/app.css', [
                               '/css/bootstrap.css'
                              ]
    
  end


  get '/' do
    haml :main, :locals => {title: settings.appname}
  end

end


if __FILE__ == $0
  App.run!
end
