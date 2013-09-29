class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :title
      t.text :comment
      
      t.integer :photo_id #clé étrangère vers la photo
      t.integer :user_id #clé étrangère vers la photo

      t.timestamps
    end
    add_index :comments, :photo_id
    add_index :comments, :user_id
    
  end
end
