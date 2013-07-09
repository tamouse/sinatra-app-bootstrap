# Sinatra Application Bootstrap Template

This is a template to bootstrap a Sinatra application including RSpec and Cucumber tests, and employing Twitter Bootstrap.

## Desciption

This is a spare template that includes the following items:

* A baseline modular Sinatra app in `app.rb`.
* Utilization of `sinatra-assetpack` to give a nice way of minifying and delivering assets such as javascript, css, and image files. This is set to deliver assets as follows:
    * Javascript files: directory `assets/javascript`.
    * CSS files: directory `assets/css`.
    * Image files: directory `assets/images`.
* Twitter Bootstrap formatting. The bootstrap.css and bootstratp.js files are set up in the right places as above to be handles by sintra-assetpack.
* HAML and JSON rendering engines have been included.
* The `views` subdirectory contains a minimal `layout.haml` and `main.haml`.
* RSpec tests are set up in `spec` subdirectory.
* Cucumber tests are set up in the `features` subdirectory, including a nice set of web steps from `cucumber/rails`.
* A small rakefile that will drive the RSpec and Cucumber tests with `simplecov` coverage analysis.
* A Gemfile with the appropriate set of gems.
* Guard with appropriate plug-ins to work with the given tools above.

## Installation

Clone the template from the Github repository:

    git clone git://github.com/tamouse/sinatra-app-bootstrap.git <application name>

Reset the origin:

    git remote rename origin sinatra-app-bootstrap

Create your own git repo, and name it origin:

    git remote add origin <your git repo>

Run bundle install:

    bundle install --binstubs

(--binstubs is optional, of course, but make sure you run with `bundle
exec` instead then.)

Run the guard installation:

    guard init

Start guard:

    guard start

And you should be good to go with a running copy on `http://localhost:4567`.

## Configuration

There isn't much configuration to start with. You can add more as you like.

### Port

The `config.ru` file contains the -p switch on the first line. Change this to whatever port number you'd like. The default is the stock sinatra port of 4567.

### Application Name

The `app.rb` file contains one line to set the application name:

    set :appname, 'MyApp'

Change this as you'd like.

## License

MIT License:

Copyright &copy; 2013- Tamara Temple <tamouse@gmail.com>

> Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
> 
> The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
> 
> THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


## Contributing

* Fork it! [github repo](https://github.com/tamouse/sinatra-app-bootstrap)
* Crack your branch, make your changes, submit a pull request!
* Submit Issues and Requests! [Issues](https://github.com/tamouse/sinatra-app-bootstrap/issues)
* Email me! [tamouse's email](mailto:tamouse@gmail.com)

## Acknowledgements

This template is based on the sinatra application template for Cloud Foundry.  See this [blog post](http://blog.codenursery.com/2011/11/rake-file-for-sinatra-app-on-cloud.html) for more information.
