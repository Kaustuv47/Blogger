class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.references :Post, foreign_key: true
      t.text :Body

      t.timestamps
    end
  end
end
