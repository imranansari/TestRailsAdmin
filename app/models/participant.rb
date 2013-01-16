class Participant
  include Mongoid::Document
  include Mongoid::Document

  field :name, :type => String
  field :bio, :type => String
  field :title, :type => String
  field :pic_file_name, :type => String
  field :group_name, :type => String


  #belongs_to :session

  has_and_belongs_to_many :sessions

end
