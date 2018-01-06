class AddMockIdToUser < ActiveRecord::Migration
  def change
  	add_column :users , :mockstock_id , :integer

  end
end
