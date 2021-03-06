class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.references :post, foreign_key: true
      t.text :comment
      t.references :user

      t.timestamps
    end
  end
end
