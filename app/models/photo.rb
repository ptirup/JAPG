class Photo < ActiveRecord::Base
	
	belongs_to :album, counter_cache: true, dependent: :destroy
	has_many :comments

	#Ajouter : 
	# check de la présence du fichier avant sauvegarde
	# note comprise entre 0 (pas de note) et 5
	# colonne thumbnail 
	

end
