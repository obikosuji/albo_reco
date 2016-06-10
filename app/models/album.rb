class Album < ActiveRecord::Base

  validates :name, :presence => true, :uniqueness => true
  validates :musician_id, :presence => true
  validates :year, :presence => true

  belongs_to :musician, :class_name => "Musician", :foreign_key => "name"
end
