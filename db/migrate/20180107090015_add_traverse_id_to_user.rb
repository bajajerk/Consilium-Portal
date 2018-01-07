class AddTraverseIdToUser < ActiveRecord::Migration
  def change
  	add_column :users , :tradeverse_id , :integer

  end
end
