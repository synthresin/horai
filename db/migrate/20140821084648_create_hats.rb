class CreateHats < ActiveRecord::Migration
  def change
    create_table :hats do |t|
      t.string :name
      t.text :description
      t.string :photo

      t.timestamps
    end
  end
end
