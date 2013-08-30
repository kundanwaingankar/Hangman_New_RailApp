class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.belongs_to :user
      t.integer :played
      t.integer :win
      t.integer :lose
      t.timestamps
    end
  end
end
