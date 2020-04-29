class CreatePost < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :user_name
      t.text :content
      t.timestamps
    end
  end
end
