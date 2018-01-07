class AddShatranjIdToUSer < ActiveRecord::Migration
  def change
  	add_column :users , :shatranj_id , :integer

  end
end
