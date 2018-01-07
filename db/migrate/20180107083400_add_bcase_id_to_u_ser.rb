class AddBcaseIdToUSer < ActiveRecord::Migration
  def change
  	add_column :users , :bcase_id , :integer

  end
end
