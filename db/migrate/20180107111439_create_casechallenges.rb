class CreateCasechallenges < ActiveRecord::Migration
  def change
    create_table :casechallenges do |t|
      t.string :name
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
