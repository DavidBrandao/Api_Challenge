require 'byebug'
require 'capybara'
require 'cucumber'
require 'faker'
require 'rspec'
require "httparty"

Dir[File.join(File.dirname(__FILE__),
              '../services/*_services.rb')].each { |file| require_relative file }

# arquivos de configuração para uso de gems (bibliotecas) e
# auto instancia das mesmas para os aquivos com da pasta services