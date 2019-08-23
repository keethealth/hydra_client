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

# Unit tests for HydraClient::Version
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'Version' do
  before do
    # run before each test
    @instance = HydraClient::Version.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Version' do
    it 'should create an instance of Version' do
      expect(@instance).to be_instance_of(HydraClient::Version)
    end
  end
  describe 'test attribute "version"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
