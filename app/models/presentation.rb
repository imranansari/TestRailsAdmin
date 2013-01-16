class Presentation

  include Mongoid::Document
  include Mongoid::Timestamps

  field :title, :type => String
  field :url, :type => String

  embedded_in :session

end