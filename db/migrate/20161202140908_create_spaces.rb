class CreateSpaces < ActiveRecord::Migration[5.0]
  def change
    create_table :spaces do |t|
      t.float :latitude
      t.float :longitude
      t.text :notes
      t.integer :rating
      t.string :address_line_one
      t.string :address_line_two
      t.string :postcode
      t.string :city
      t.string :locality
      t.datetime :created_at
      t.string :country_code

      t.timestamps
    end
  end
end
