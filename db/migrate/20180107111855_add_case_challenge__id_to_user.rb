class AddCaseChallengeIdToUser < ActiveRecord::Migration
  def change
  	add_column :users , :casechallenge_id , :integer

  end
end
