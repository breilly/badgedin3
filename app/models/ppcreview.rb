class Ppcreview

  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_accessor :user_id, :email, :name, :website, :channel, :budget, :goal, :timeline, :keywords

  validates :email, :name, :website, :channel, :budget, :goal, :timeline, :keywords, :presence => true
  validates :email, :format => { :with => %r{.+@.+\..+} }, :allow_blank => true
  
  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def persisted?
    false
  end

end
