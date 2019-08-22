class Mushroom < ActiveRecord::Migration[5.0]
  def change
    change_column :posts, :category, :integer, :default => 0
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
