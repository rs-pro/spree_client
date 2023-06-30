=begin
#Platform API

#Spree Platform API

The version of the OpenAPI document: v2
Contact: we@sparksolutions.co
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.0-SNAPSHOT

=end

require 'date'
require 'time'

module SpreeClient
  class UpdateFeaturedArticleCmsSectionParamsCmsSection
    # Update this section name.
    attr_accessor :name

    # Change the section type.
    attr_accessor :type

    # Pass the position that you want this section to appear in. (The list is not zero indexed, so the first item is position: `1`)
    attr_accessor :position

    # Set the resource type that this section links to.
    attr_accessor :linked_resource_type

    # Change the ID of the resource that you would like this section to link to.
    attr_accessor :linked_resource_id

    # This value is used by front end developers to set CSS classes for content that fits the screen edge-to-edge, or stays within the boundaries of the central container.
    attr_accessor :fit

    # This value is used by front end developers for styling the section padding.
    attr_accessor :gutters

    # Update the text value of the button used in this section.
    attr_accessor :button_text

    # Update the title for the Section.
    attr_accessor :title

    # Update the subtitle for the Section.
    attr_accessor :subtitle

    # Update the content here, this can be rich text editor content.
    attr_accessor :rte_content

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'name',
        :'type' => :'type',
        :'position' => :'position',
        :'linked_resource_type' => :'linked_resource_type',
        :'linked_resource_id' => :'linked_resource_id',
        :'fit' => :'fit',
        :'gutters' => :'gutters',
        :'button_text' => :'button_text',
        :'title' => :'title',
        :'subtitle' => :'subtitle',
        :'rte_content' => :'rte_content'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'name' => :'String',
        :'type' => :'String',
        :'position' => :'Integer',
        :'linked_resource_type' => :'String',
        :'linked_resource_id' => :'String',
        :'fit' => :'String',
        :'gutters' => :'String',
        :'button_text' => :'String',
        :'title' => :'String',
        :'subtitle' => :'String',
        :'rte_content' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'linked_resource_type',
        :'linked_resource_id',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `SpreeClient::UpdateFeaturedArticleCmsSectionParamsCmsSection` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SpreeClient::UpdateFeaturedArticleCmsSectionParamsCmsSection`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'position')
        self.position = attributes[:'position']
      end

      if attributes.key?(:'linked_resource_type')
        self.linked_resource_type = attributes[:'linked_resource_type']
      end

      if attributes.key?(:'linked_resource_id')
        self.linked_resource_id = attributes[:'linked_resource_id']
      end

      if attributes.key?(:'fit')
        self.fit = attributes[:'fit']
      end

      if attributes.key?(:'gutters')
        self.gutters = attributes[:'gutters']
      end

      if attributes.key?(:'button_text')
        self.button_text = attributes[:'button_text']
      end

      if attributes.key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.key?(:'subtitle')
        self.subtitle = attributes[:'subtitle']
      end

      if attributes.key?(:'rte_content')
        self.rte_content = attributes[:'rte_content']
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
      type_validator = EnumAttributeValidator.new('String', ["Spree::Cms::Sections::HeroImage", "Spree::Cms::Sections::FeaturedArticle", "Spree::Cms::Sections::ProductCarousel", "Spree::Cms::Sections::ImageGallery", "Spree::Cms::Sections::SideBySideImages", "Spree::Cms::Sections::RichTextContent"])
      return false unless type_validator.valid?(@type)
      linked_resource_type_validator = EnumAttributeValidator.new('String', ["Spree::Taxon", "Spree::Product", "Spree::CmsPage"])
      return false unless linked_resource_type_validator.valid?(@linked_resource_type)
      fit_validator = EnumAttributeValidator.new('String', ["Screen", "Container"])
      return false unless fit_validator.valid?(@fit)
      gutters_validator = EnumAttributeValidator.new('String', ["Gutters", "No Gutters"])
      return false unless gutters_validator.valid?(@gutters)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["Spree::Cms::Sections::HeroImage", "Spree::Cms::Sections::FeaturedArticle", "Spree::Cms::Sections::ProductCarousel", "Spree::Cms::Sections::ImageGallery", "Spree::Cms::Sections::SideBySideImages", "Spree::Cms::Sections::RichTextContent"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] linked_resource_type Object to be assigned
    def linked_resource_type=(linked_resource_type)
      validator = EnumAttributeValidator.new('String', ["Spree::Taxon", "Spree::Product", "Spree::CmsPage"])
      unless validator.valid?(linked_resource_type)
        fail ArgumentError, "invalid value for \"linked_resource_type\", must be one of #{validator.allowable_values}."
      end
      @linked_resource_type = linked_resource_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] fit Object to be assigned
    def fit=(fit)
      validator = EnumAttributeValidator.new('String', ["Screen", "Container"])
      unless validator.valid?(fit)
        fail ArgumentError, "invalid value for \"fit\", must be one of #{validator.allowable_values}."
      end
      @fit = fit
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] gutters Object to be assigned
    def gutters=(gutters)
      validator = EnumAttributeValidator.new('String', ["Gutters", "No Gutters"])
      unless validator.valid?(gutters)
        fail ArgumentError, "invalid value for \"gutters\", must be one of #{validator.allowable_values}."
      end
      @gutters = gutters
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          type == o.type &&
          position == o.position &&
          linked_resource_type == o.linked_resource_type &&
          linked_resource_id == o.linked_resource_id &&
          fit == o.fit &&
          gutters == o.gutters &&
          button_text == o.button_text &&
          title == o.title &&
          subtitle == o.subtitle &&
          rte_content == o.rte_content
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [name, type, position, linked_resource_type, linked_resource_id, fit, gutters, button_text, title, subtitle, rte_content].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
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
        # models (e.g. Pet) or oneOf
        klass = SpreeClient.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
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
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

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
