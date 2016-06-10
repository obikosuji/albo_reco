class Musician < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true
  validates :genre, :presence => true


  has_many :albums, :class_name => "Album", :foreign_key => "musician_id"
  
end
