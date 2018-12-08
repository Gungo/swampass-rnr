class CreateToilets < ActiveRecord::Migration[5.2]
  def change
    create_table :toilets do |t|
      t.string :name
      t.string :address
      t.string :location
      t.numeric :poop_rating
      t.numeric :atmosphere

      t.timestamps
    end
  end
end
