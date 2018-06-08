# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
School.create!("name":"Ecole primaire Michel Servet","address":"2-6 Rue Alsace Lorraine, 69001 Lyon","nb_student":"350","status":"public","latitude":"45.7720199","longitude":"4.8368897999999945","email":"ecole@elementaire.com")
School.create!("name":"OGEC GROUPE SCOLAIRE SAINT DENIS","address":"7 Rue Hénon, 69004 Lyon","nb_student":"100","status":"public","latitude":"45.779445","longitude":"4.831833999999958","email":"ecole@elementaire.com")
School.create!("name":"Ecole Primaire Privée Saint Sacrement","address":"15 Rue Etienne Dolet, 69003 Lyon","nb_student":"250","status":"public","latitude":"45.757568","longitude":"4.851882","email":"ecole@elementaire.com")
School.create!("name":"Ecole maternelle publique Anatole France","address":"15 Rue Louis, 69003 Lyon","nb_student":"50","status":"private","latitude":"45.7528455","longitude":"4.888221499999986","email":"ecole@elementaire.com")
School.create!("name":"Ecole maternelle Condorcet","address":"37 Rue Jules Massenet, 69003 Lyon","nb_student":"280","status":"public","latitude":"45.7482793","longitude":"4.8924376999999595","email":"ecole@elementaire.com")
School.create!("name":"Ecole Maternelle Audrey Hepburn","address":"8 Rue Tissot, 69009 Lyon","nb_student":"150","status":"public","latitude":"45.7766122","longitude":"4.80246360000001","email":"ecole@elementaire.com")
School.create!("name":"École élémentaire","address":"2-6 Rue Alsace Lorraine, 69001 Lyon","nb_student":"80","status":"public","latitude":"45.7722913","longitude":"4.834741","email":"ecole@elementaire.com")
User.create!("email":"jeremy@ynov.com","password":"jeremy")
