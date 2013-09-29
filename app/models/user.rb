class User < ActiveRecord::Base
	has_many :albums
	has_many :comments
	
	validates :pseudo, presence: true, uniqueness: true, length: {minimum: 2}
	# validates :password, presence: true, confirmation: true, length: {minimum: 6}
	validates :email, presence: true, confirmation: true, format: { with: /\A[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\Z/i }
	
	# TODO
	# chiffrer le password avant stockage
	# "stripper" l'email sur une ligne pour éviter le code malicieux
	# password non présent dans les vues... 
	# ajouter des scopes / routes : 
	#		albums de l'utilisateur 
	# 		photos de l'utilisateur
	#		commentaires de l'utilisateur ...
	
end
