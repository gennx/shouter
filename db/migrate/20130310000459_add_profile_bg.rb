class AddProfileBg < ActiveRecord::Migration
  def change
    add_column :users, :profile_bg, :string, :default => "fff"
  end
end
