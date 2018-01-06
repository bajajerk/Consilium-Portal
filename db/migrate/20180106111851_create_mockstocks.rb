class CreateMockstocks < ActiveRecord::Migration
  def change
    create_table :mockstocks do |t|
      t.string :name
      t.integer :teamcount
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
