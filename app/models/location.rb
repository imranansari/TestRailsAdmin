class Location
  include Mongoid::Document
  include Mongoid::Timestamps

  field :venueImg, :type => String
  field :desc, :type => String
  field :tel, :type => String
  field :latitude, :type => String
  field :longitude, :type => String

  embeds_one :address
  accepts_nested_attributes_for :address

  embedded_in :conference

end
