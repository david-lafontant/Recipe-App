class RemoveUserFromRecipeFood < ActiveRecord::Migration[7.0]
  def change
    remove_reference :recipe_foods, :user, index: true, foreign_key: true
  end
end
