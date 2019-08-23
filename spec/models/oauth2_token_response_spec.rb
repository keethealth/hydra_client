=begin
#ORY Hydra

#Welcome to the ORY Hydra HTTP API documentation. You will find documentation for all HTTP APIs here.

OpenAPI spec version: latest

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for HydraClient::Oauth2TokenResponse
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'Oauth2TokenResponse' do
  before do
    # run before each test
    @instance = HydraClient::Oauth2TokenResponse.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Oauth2TokenResponse' do
    it 'should create an instance of Oauth2TokenResponse' do
      expect(@instance).to be_instance_of(HydraClient::Oauth2TokenResponse)
    end
  end
  describe 'test attribute "access_token"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "client_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "code"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "redirect_uri"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end