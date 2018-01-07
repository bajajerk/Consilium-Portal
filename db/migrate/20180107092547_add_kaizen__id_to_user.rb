class AddKaizenIdToUser < ActiveRecord::Migration
  def change
  	add_column :users , :kaizen_id , :integer

  end
end
