class CreateMusicians < ActiveRecord::Migration
  def change
    create_table :musicians do |t|
      t.text :genre
      t.string :name

      t.timestamps

    end
  end
end
