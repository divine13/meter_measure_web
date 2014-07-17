class CreateMeters < ActiveRecord::Migration
  def change
    create_table :meters do |t|
      t.integer :_id
      t.text :day
      t.text :time
      t.integer :reading
      t.text :note

      t.timestamps
    end
  end
end
