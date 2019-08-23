# hydra_client

HydraClient - the Ruby gem for the ORY Hydra

Welcome to the ORY Hydra HTTP API documentation. You will find documentation for all HTTP APIs here.

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: latest
- Package version: 1.0.0
- Build package: io.swagger.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build hydra_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./hydra_client-1.0.0.gem
```
(for development, run `gem install --dev ./hydra_client-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'hydra_client', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'hydra_client', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'hydra_client'

api_instance = HydraClient::AdminApi.new

consent_challenge = 'consent_challenge_example' # String | 

opts = { 
  body: HydraClient::AcceptConsentRequest.new # AcceptConsentRequest | 
}

begin
  #Accept an consent request
  result = api_instance.accept_consent_request(consent_challenge, opts)
  p result
rescue HydraClient::ApiError => e
  puts "Exception when calling AdminApi->accept_consent_request: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *http://localhost*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*HydraClient::AdminApi* | [**accept_consent_request**](docs/AdminApi.md#accept_consent_request) | **PUT** /oauth2/auth/requests/consent/accept | Accept an consent request
*HydraClient::AdminApi* | [**accept_login_request**](docs/AdminApi.md#accept_login_request) | **PUT** /oauth2/auth/requests/login/accept | Accept an login request
*HydraClient::AdminApi* | [**accept_logout_request**](docs/AdminApi.md#accept_logout_request) | **PUT** /oauth2/auth/requests/logout/accept | Accept a logout request
*HydraClient::AdminApi* | [**create_json_web_key_set**](docs/AdminApi.md#create_json_web_key_set) | **POST** /keys/{set} | Generate a new JSON Web Key
*HydraClient::AdminApi* | [**create_o_auth2_client**](docs/AdminApi.md#create_o_auth2_client) | **POST** /clients | Create an OAuth 2.0 client
*HydraClient::AdminApi* | [**delete_json_web_key**](docs/AdminApi.md#delete_json_web_key) | **DELETE** /keys/{set}/{kid} | Delete a JSON Web Key
*HydraClient::AdminApi* | [**delete_json_web_key_set**](docs/AdminApi.md#delete_json_web_key_set) | **DELETE** /keys/{set} | Delete a JSON Web Key Set
*HydraClient::AdminApi* | [**delete_o_auth2_client**](docs/AdminApi.md#delete_o_auth2_client) | **DELETE** /clients/{id} | Deletes an OAuth 2.0 Client
*HydraClient::AdminApi* | [**flush_inactive_o_auth2_tokens**](docs/AdminApi.md#flush_inactive_o_auth2_tokens) | **POST** /oauth2/flush | Flush Expired OAuth2 Access Tokens
*HydraClient::AdminApi* | [**get_consent_request**](docs/AdminApi.md#get_consent_request) | **GET** /oauth2/auth/requests/consent | Get consent request information
*HydraClient::AdminApi* | [**get_json_web_key**](docs/AdminApi.md#get_json_web_key) | **GET** /keys/{set}/{kid} | Fetch a JSON Web Key
*HydraClient::AdminApi* | [**get_json_web_key_set**](docs/AdminApi.md#get_json_web_key_set) | **GET** /keys/{set} | Retrieve a JSON Web Key Set
*HydraClient::AdminApi* | [**get_login_request**](docs/AdminApi.md#get_login_request) | **GET** /oauth2/auth/requests/login | Get an login request
*HydraClient::AdminApi* | [**get_logout_request**](docs/AdminApi.md#get_logout_request) | **GET** /oauth2/auth/requests/logout | Get a logout request
*HydraClient::AdminApi* | [**get_o_auth2_client**](docs/AdminApi.md#get_o_auth2_client) | **GET** /clients/{id} | Get an OAuth 2.0 Client.
*HydraClient::AdminApi* | [**introspect_o_auth2_token**](docs/AdminApi.md#introspect_o_auth2_token) | **POST** /oauth2/introspect | Introspect OAuth2 tokens
*HydraClient::AdminApi* | [**list_o_auth2_clients**](docs/AdminApi.md#list_o_auth2_clients) | **GET** /clients | List OAuth 2.0 Clients
*HydraClient::AdminApi* | [**list_subject_consent_sessions**](docs/AdminApi.md#list_subject_consent_sessions) | **GET** /oauth2/auth/sessions/consent | Lists all consent sessions of a subject
*HydraClient::AdminApi* | [**reject_consent_request**](docs/AdminApi.md#reject_consent_request) | **PUT** /oauth2/auth/requests/consent/reject | Reject an consent request
*HydraClient::AdminApi* | [**reject_login_request**](docs/AdminApi.md#reject_login_request) | **PUT** /oauth2/auth/requests/login/reject | Reject a login request
*HydraClient::AdminApi* | [**reject_logout_request**](docs/AdminApi.md#reject_logout_request) | **PUT** /oauth2/auth/requests/logout/reject | Reject a logout request
*HydraClient::AdminApi* | [**revoke_authentication_session**](docs/AdminApi.md#revoke_authentication_session) | **DELETE** /oauth2/auth/sessions/login | Invalidates all login sessions of a certain user Invalidates a subject's authentication session
*HydraClient::AdminApi* | [**revoke_consent_sessions**](docs/AdminApi.md#revoke_consent_sessions) | **DELETE** /oauth2/auth/sessions/consent | Revokes consent sessions of a subject for a specific OAuth 2.0 Client
*HydraClient::AdminApi* | [**update_json_web_key**](docs/AdminApi.md#update_json_web_key) | **PUT** /keys/{set}/{kid} | Update a JSON Web Key
*HydraClient::AdminApi* | [**update_json_web_key_set**](docs/AdminApi.md#update_json_web_key_set) | **PUT** /keys/{set} | Update a JSON Web Key Set
*HydraClient::AdminApi* | [**update_o_auth2_client**](docs/AdminApi.md#update_o_auth2_client) | **PUT** /clients/{id} | Update an OAuth 2.0 Client
*HydraClient::HealthApi* | [**is_instance_alive**](docs/HealthApi.md#is_instance_alive) | **GET** /health/alive | Check alive status
*HydraClient::HealthApi* | [**is_instance_ready**](docs/HealthApi.md#is_instance_ready) | **GET** /health/ready | Check readiness status
*HydraClient::PublicApi* | [**disconnect_user**](docs/PublicApi.md#disconnect_user) | **GET** /oauth2/sessions/logout | OpenID Connect Front-Backchannel enabled Logout
*HydraClient::PublicApi* | [**discover_open_id_configuration**](docs/PublicApi.md#discover_open_id_configuration) | **GET** /.well-known/openid-configuration | OpenID Connect Discovery
*HydraClient::PublicApi* | [**oauth2_token**](docs/PublicApi.md#oauth2_token) | **POST** /oauth2/token | The OAuth 2.0 token endpoint
*HydraClient::PublicApi* | [**oauth_auth**](docs/PublicApi.md#oauth_auth) | **GET** /oauth2/auth | The OAuth 2.0 authorize endpoint
*HydraClient::PublicApi* | [**revoke_o_auth2_token**](docs/PublicApi.md#revoke_o_auth2_token) | **POST** /oauth2/revoke | Revoke OAuth2 tokens
*HydraClient::PublicApi* | [**userinfo**](docs/PublicApi.md#userinfo) | **GET** /userinfo | OpenID Connect Userinfo
*HydraClient::PublicApi* | [**well_known**](docs/PublicApi.md#well_known) | **GET** /.well-known/jwks.json | JSON Web Keys Discovery
*HydraClient::VersionApi* | [**get_version**](docs/VersionApi.md#get_version) | **GET** /version | Get service version


## Documentation for Models

 - [HydraClient::AcceptConsentRequest](docs/AcceptConsentRequest.md)
 - [HydraClient::AcceptLoginRequest](docs/AcceptLoginRequest.md)
 - [HydraClient::CompletedRequest](docs/CompletedRequest.md)
 - [HydraClient::ConsentRequest](docs/ConsentRequest.md)
 - [HydraClient::ConsentRequestSession](docs/ConsentRequestSession.md)
 - [HydraClient::EmptyResponse](docs/EmptyResponse.md)
 - [HydraClient::FlushInactiveOAuth2TokensRequest](docs/FlushInactiveOAuth2TokensRequest.md)
 - [HydraClient::GenericError](docs/GenericError.md)
 - [HydraClient::HealthNotReadyStatus](docs/HealthNotReadyStatus.md)
 - [HydraClient::HealthStatus](docs/HealthStatus.md)
 - [HydraClient::JSONWebKey](docs/JSONWebKey.md)
 - [HydraClient::JSONWebKeySet](docs/JSONWebKeySet.md)
 - [HydraClient::JsonWebKeySetGeneratorRequest](docs/JsonWebKeySetGeneratorRequest.md)
 - [HydraClient::LoginRequest](docs/LoginRequest.md)
 - [HydraClient::LogoutRequest](docs/LogoutRequest.md)
 - [HydraClient::OAuth2Client](docs/OAuth2Client.md)
 - [HydraClient::OAuth2TokenIntrospection](docs/OAuth2TokenIntrospection.md)
 - [HydraClient::Oauth2TokenResponse](docs/Oauth2TokenResponse.md)
 - [HydraClient::OauthTokenResponse](docs/OauthTokenResponse.md)
 - [HydraClient::OpenIDConnectContext](docs/OpenIDConnectContext.md)
 - [HydraClient::PreviousConsentSession](docs/PreviousConsentSession.md)
 - [HydraClient::RejectRequest](docs/RejectRequest.md)
 - [HydraClient::SwaggerFlushInactiveAccessTokens](docs/SwaggerFlushInactiveAccessTokens.md)
 - [HydraClient::SwaggerJsonWebKeyQuery](docs/SwaggerJsonWebKeyQuery.md)
 - [HydraClient::SwaggerJwkCreateSet](docs/SwaggerJwkCreateSet.md)
 - [HydraClient::SwaggerJwkSetQuery](docs/SwaggerJwkSetQuery.md)
 - [HydraClient::SwaggerJwkUpdateSet](docs/SwaggerJwkUpdateSet.md)
 - [HydraClient::SwaggerJwkUpdateSetKey](docs/SwaggerJwkUpdateSetKey.md)
 - [HydraClient::SwaggerOAuthIntrospectionRequest](docs/SwaggerOAuthIntrospectionRequest.md)
 - [HydraClient::SwaggerRevokeOAuth2TokenParameters](docs/SwaggerRevokeOAuth2TokenParameters.md)
 - [HydraClient::Swaggeroauth2TokenParameters](docs/Swaggeroauth2TokenParameters.md)
 - [HydraClient::UserinfoResponse](docs/UserinfoResponse.md)
 - [HydraClient::Version](docs/Version.md)
 - [HydraClient::WellKnown](docs/WellKnown.md)


## Documentation for Authorization


### basic

- **Type**: HTTP basic authentication

### oauth2

- **Type**: OAuth
- **Flow**: accessCode
- **Authorization URL**: /oauth2/auth
- **Scopes**: 
  - offline: A scope required when requesting refresh tokens
  - openid: Request an OpenID Connect ID Token

