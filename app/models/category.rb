class Category < ActiveRecord::Base

  has_and_belongs_to_many :pages
  validates_presence_of :slug
  
  extend FriendlyId
  friendly_id :name, use: [:slugged, :finders]
  
end
