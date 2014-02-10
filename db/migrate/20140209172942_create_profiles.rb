class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :location
      t.integer :user_id
      t.text :bio
      t.string :facebook
      t.string :github

      t.timestamps
    end
  end
end
