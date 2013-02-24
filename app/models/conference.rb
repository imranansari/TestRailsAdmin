class Conference
  include Mongoid::Document
  include Mongoid::Timestamps

  self.include_root_in_json = true

  field :name, :type => String
  field :desc

  field :dateStart, :type => Date
  field :dateEnd, :type => Date

  embeds_one :location
  accepts_nested_attributes_for :location

  #validates_presence_of :name, :message => "ERROR: Name is required"
  #validates_presence_of :dateStart, :message => "ERROR: Start Date is required"

end