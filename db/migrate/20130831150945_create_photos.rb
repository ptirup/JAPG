class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :name
      t.string :description
      t.string :path
      t.integer :note, default: 0
      t.string :tags
      t.date :shot_date
      
      t.integer :album_id # clé étrangère vers l'album 
      t.integer :comments_count #zone "cache" pour le nombre de commentaire ( propriété counter_cache: true dans le modèle comment)

      t.timestamps
    end
    add_index :photos, :album_id
    
  end
end
