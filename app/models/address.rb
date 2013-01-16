class Address

  include Mongoid::Document
  include Mongoid::Timestamps

  field :address1
  field :address2

  field :city, :type => String
  field :state, :type => String

  field :zip, :type => String

  embedded_in :location
end

