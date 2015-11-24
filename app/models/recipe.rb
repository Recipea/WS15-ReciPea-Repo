class Recipe < ActiveRecord::Base
  has_many :ingredient, dependent: :destroy
  belongs_to :category
  has_and_belongs_to_many :user
  has_and_belongs_to_many :tag, :join_table => :tags_and_recipes
  
  validates :name, presence: true
  # It returns the recipes whose titles contain one or more words that form the query
  def self.search(query)
    # where(:title, query) -> This would return an exact match of the query
    where("title like ?", "%#{query}%") 
  end  
  
end