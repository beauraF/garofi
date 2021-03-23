# frozen_string_literal: true

module Rails
  Struct.new('Root') do
    def join(*)
      File.expand_path('fixtures/application.yml', __dir__)
    end
  end

  Struct.new('Config') do
    def before_configuration
      yield
    end
  end

  Struct.new('Credentials') do
    def secret_key_base
      '903e517'
    end
  end

  Struct.new('Application') do
    def credentials
      Struct::Credentials.new
    end
  end

  class << self
    def application
      Struct::Application.new
    end

    def env
      "production"
    end

    def root
      Struct::Root.new
    end
  end

  class Railtie
    class << self
      def config
        Struct::Config.new
      end
    end
  end
end

require "bundler/setup"
Bundler.require(:default)
require "minitest/autorun"