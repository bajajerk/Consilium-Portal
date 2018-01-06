class AddCollegeToUser < ActiveRecord::Migration
  def change
  	add_column :users , :collegename , :string

  end
end
