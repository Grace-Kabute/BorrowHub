class CreateProfiles < ActiveRecord::Migration[8.0]
  def change
    create_table :profiles do |t|
      t.references :user, null: false, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :library_code

      t.timestamps
    end
    add_index :profiles, :library_code, unique: true
  end
end
