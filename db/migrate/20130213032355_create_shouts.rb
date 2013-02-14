class CreateShouts < ActiveRecord::Migration
  def change
    create_table :shouts do |t|
      t.references :user
      t.string :content

      t.timestamps
    end
  end
end
