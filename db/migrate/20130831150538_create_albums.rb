class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name
      t.text :description
     
      t.integer :user_id		# "clef étrangère" vers le créateur de l'album
      t.integer :photos_count 	#cache pour le nombre de photos liées => Ajout d'une propriété counter_cache: true dans le modèle photos

      t.timestamps
    end
    add_index :albums, :user_id
    
  end
end
