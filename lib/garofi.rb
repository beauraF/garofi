# frozen_string_literal: true

require 'yaml'
require 'erb'
require_relative 'garofi/version'

module Garofi
  CONFIGURATION_PATH = 'config/application.yml'

  class << self
    def load
      read_configuration
      set_global_configuration
      set_environment_configuration
    end

    private

    def read_configuration
      @configuration = ::YAML.load(
        ERB.new(File.read(CONFIGURATION_PATH)).result
      )
    end

    def set_global_configuration
      @configuration.each do |key, value|
        next if value.is_a?(Hash)
        ENV[key] = value
      end
    end

    def set_environment_configuration
      @configuration.fetch(::Rails.env, {}).each { |key, value| ENV[key] = value }
    end
  end
end

require_relative 'garofi/railtie'
