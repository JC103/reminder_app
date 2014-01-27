class AddPickupdateToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :pickupdate, :string
  end
end
