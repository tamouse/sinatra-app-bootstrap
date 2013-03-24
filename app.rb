#!/usr/bin/env ruby
=begin

app.rb

*Author*::    Tamara Temple <tamara@tamaratemple.com>
*Copyright*:: Tamara Temple Web Development
*License*::   MIT
*Since*::     2013-03-24T15:23:08

== Description

Default application file for generic sinatra application.

=end


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

# Start your sinatra app using rackukp! See config.ru for configuration settings.
