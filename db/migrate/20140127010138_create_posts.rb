class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :phone
      t.string :email
      t.date :date
      t.string :time
      t.string :cartype

      t.timestamps
    end
  end
end
