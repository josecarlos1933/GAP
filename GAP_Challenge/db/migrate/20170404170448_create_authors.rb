class CreateAuthors < ActiveRecord::Migration[5.0]
  def change
    create_table :authors do |t|
      t.string :first_name
      t.string :last_name
      t.date :birthdate
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end