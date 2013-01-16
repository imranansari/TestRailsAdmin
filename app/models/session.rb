class Session
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title
  field :desc

  #field :date, :type => Date

  field :start, :type => Time
  field :end, :type => Time

  field :slot

  field :type

  #has_many :participants

  has_and_belongs_to_many :participants


  embeds_one :presentation

  accepts_nested_attributes_for :presentation

end