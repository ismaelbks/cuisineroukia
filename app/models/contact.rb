class Contact

  include ActiveModel::Validations
  include ActiveModel::Conversion
  include ActiveModel::Naming

  attr_accessor :nom, :email, :telephone, :message
  validates :nom, :email, :telephone, :message, presence: true
  validates :email, :format => { :with => %r{/\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i} }, allow_blank: true

  def persisted?
    false
  end

  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

end