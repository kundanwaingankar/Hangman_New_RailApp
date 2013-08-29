class CreatePlays < ActiveRecord::Migration
  def change
    create_table :plays do |t|
      t.integer :missedCount

      t.timestamps
    end
  end
end
