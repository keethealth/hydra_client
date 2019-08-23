=begin
#ORY Hydra

#Welcome to the ORY Hydra HTTP API documentation. You will find documentation for all HTTP APIs here.

OpenAPI spec version: latest

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require 'date'

module HydraClient
  class LoginRequest
    # Challenge is the identifier (\"login challenge\") of the login request. It is used to identify the session.
    attr_accessor :challenge

    attr_accessor :client

    attr_accessor :oidc_context

    # RequestURL is the original OAuth 2.0 Authorization URL requested by the OAuth 2.0 client. It is the URL which initiates the OAuth 2.0 Authorization Code or OAuth 2.0 Implicit flow. This URL is typically not needed, but might come in handy if you want to deal with additional request parameters.
    attr_accessor :request_url

    # RequestedScope contains the access token audience as requested by the OAuth 2.0 Client.
    attr_accessor :requested_access_token_audience

    # RequestedScope contains the OAuth 2.0 Scope requested by the OAuth 2.0 Client.
    attr_accessor :requested_scope

    # SessionID is the login session ID. If the user-agent reuses a login session (via cookie / remember flag) this ID will remain the same. If the user-agent did not have an existing authentication session (e.g. remember is false) this will be a new random value. This value is used as the \"sid\" parameter in the ID Token and in OIDC Front-/Back- channel logout. It's value can generally be used to associate consecutive login requests by a certain user.
    attr_accessor :session_id

    # Skip, if true, implies that the client has requested the same scopes from the same user previously. If true, you can skip asking the user to grant the requested scopes, and simply forward the user to the redirect URL.  This feature allows you to update / set session information.
    attr_accessor :skip

    # Subject is the user ID of the end-user that authenticated. Now, that end user needs to grant or deny the scope requested by the OAuth 2.0 client. If this value is set and `skip` is true, you MUST include this subject type when accepting the login request, or the request will fail.
    attr_accessor :subject

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'challenge' => :'challenge',
        :'client' => :'client',
        :'oidc_context' => :'oidc_context',
        :'request_url' => :'request_url',
        :'requested_access_token_audience' => :'requested_access_token_audience',
        :'requested_scope' => :'requested_scope',
        :'session_id' => :'session_id',
        :'skip' => :'skip',
        :'subject' => :'subject'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'challenge' => :'String',
        :'client' => :'OAuth2Client',
        :'oidc_context' => :'OpenIDConnectContext',
        :'request_url' => :'String',
        :'requested_access_token_audience' => :'Array<String>',
        :'requested_scope' => :'Array<String>',
        :'session_id' => :'String',
        :'skip' => :'BOOLEAN',
        :'subject' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'challenge')
        self.challenge = attributes[:'challenge']
      end

      if attributes.has_key?(:'client')
        self.client = attributes[:'client']
      end

      if attributes.has_key?(:'oidc_context')
        self.oidc_context = attributes[:'oidc_context']
      end

      if attributes.has_key?(:'request_url')
        self.request_url = attributes[:'request_url']
      end

      if attributes.has_key?(:'requested_access_token_audience')
        if (value = attributes[:'requested_access_token_audience']).is_a?(Array)
          self.requested_access_token_audience = value
        end
      end

      if attributes.has_key?(:'requested_scope')
        if (value = attributes[:'requested_scope']).is_a?(Array)
          self.requested_scope = value
        end
      end

      if attributes.has_key?(:'session_id')
        self.session_id = attributes[:'session_id']
      end

      if attributes.has_key?(:'skip')
        self.skip = attributes[:'skip']
      end

      if attributes.has_key?(:'subject')
        self.subject = attributes[:'subject']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          challenge == o.challenge &&
          client == o.client &&
          oidc_context == o.oidc_context &&
          request_url == o.request_url &&
          requested_access_token_audience == o.requested_access_token_audience &&
          requested_scope == o.requested_scope &&
          session_id == o.session_id &&
          skip == o.skip &&
          subject == o.subject
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [challenge, client, oidc_context, request_url, requested_access_token_audience, requested_scope, session_id, skip, subject].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = HydraClient.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end