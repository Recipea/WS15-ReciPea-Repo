class Tag < ActiveRecord::Base
  has_and_belongs_to_many :recipe, :join_table => :tags_and_recipes
end