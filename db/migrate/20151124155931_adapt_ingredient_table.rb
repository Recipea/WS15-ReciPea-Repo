class AdaptIngredientTable < ActiveRecord::Migration
  def change
    change_table :ingredients do |t|
      t.string :description
    end
  end
end
