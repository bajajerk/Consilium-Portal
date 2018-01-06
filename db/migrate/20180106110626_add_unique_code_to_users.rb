class AddUniqueCodeToUsers < ActiveRecord::Migration
  def change
  	add_column :users , :uniquecode , :string
  end
end
