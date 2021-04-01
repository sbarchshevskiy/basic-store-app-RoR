class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :product_count
      t.string :integer
      t.string :category_count
      t.string :integer

      t.timestamps null: false
    end
  end
end
