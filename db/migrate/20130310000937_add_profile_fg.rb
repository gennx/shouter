class AddProfileFg < ActiveRecord::Migration
  def change
    add_column :users, :profile_fg, :string, :default => "000"
  end
end
