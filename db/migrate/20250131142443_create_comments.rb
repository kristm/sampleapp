class CreateComments < ActiveRecord::Migration[8.0]
  def change
    create_table :comments do |t|
      t.string :comment
      t.string :author
      t.integer :post_id
      t.timestamps
    end
  end
end
