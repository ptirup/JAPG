class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :pseudo
      t.string :password
      t.string :first_name
      t.string :last_name
      t.string :email
      t.boolean :is_admin, default: false
      
      t.integer :comments_count #cache le nombre de commentaire posté par l'utilisateur (propriété counter_cache: true dans le modèle comments)
      t.integer :albums_count # cache pour le nombre d'albums (propriété counter_cache: true dans le modèle albums)

      t.timestamps
    end
  end
end
