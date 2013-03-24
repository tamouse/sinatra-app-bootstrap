=begin

paths.rb

*Author*::    Tamara Temple <tamara@tamaratemple.com>
*Copyright*:: Tamara Temple Web Development
*License*::   MIT
*Since*::     2013-03-24T14:48:51

== Description

This will set up the testing paths for cucumber.

When you add more paths to your application, make sure to add them here as well.

=end



module NavigationHelpers

  def path_to(page_name)
    case page_name

    when /the home\s?page/
      '/'

    else
      raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
        "Now, go and add a mapping in #{__FILE__}"
    end
  end
end

World(NavigationHelpers)
