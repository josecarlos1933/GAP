class CreatePublisherHouses < ActiveRecord::Migration[5.0]
  def change
    create_table :publisher_houses do |t|
      t.string :name
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
