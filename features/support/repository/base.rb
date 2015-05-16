class Base
  def initialize(attributes = {})
    @attributes = @@attributes
    @attributes.merge(attributes)
  end

  def attributes
    @attributes
  end

  def self.default_attributes(attributes = {})
    @@attributes = attributes
  end

  def to_json
    @attributes.to_json
  end

end

