module Garofi
  class Railtie < ::Rails::Railtie
    config.before_configuration do
      Garofi.load
    end
  end
end