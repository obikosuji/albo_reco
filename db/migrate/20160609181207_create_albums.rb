class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :musician_id
      t.integer :year
      t.string :name

      t.timestamps

    end
  end
end
