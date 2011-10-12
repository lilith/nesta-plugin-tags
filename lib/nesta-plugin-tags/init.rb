module Nesta
  module Plugin
    module Tags
      module Helpers
        # If your plugin needs any helper methods, add them here...
      end
    end
  end

  class App
    helpers Nesta::Plugin::Tags::Helpers
  end
end
