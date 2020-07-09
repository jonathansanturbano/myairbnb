# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Booking.destroy_all
Bicycle.destroy_all
User.destroy_all

u1 = User.create(email: "jules@vernes.com", password: "testtest")

b1 = Bicycle.new(model: "Riverside", description: "Notre équipe de concepteurs passionnés a développé ce vélo tout chemin pour vos sorties occasionnelles. Le Riverside 100 est le vélo tout chemin le moins cher de notre gamme, il vous accompagne dans vos sorties occasionnelles.", price_per_day: 5, address: "16 Villa Gaudelet, Paris", user_id: u1.id)
b1_bike_1 = URI.open("https://contents.mediadecathlon.com/p1278200/k$7192f14d7934be9acf1864cd6ccbfdd2/sq/V+LO+TOUT+CHEMIN+RIVERSIDE+500+BLANC.webp?f=1000x1000")
b1.photos.attach(io: b1_bike_1, filename: 'riverside-1.jpg', content_type: 'image/jpg')
b1_bike_2 = URI.open("https://contents.mediadecathlon.com/p1158881/k$bc5a3eb40931b3752df256c85d3236c5/riverside-120-hybrid-bike.jpg?&f=800x800")
b1.photos.attach(io: b1_bike_2, filename: 'riverside-2.jpg', content_type: 'image/jpg')
b1_bike_3 = URI.open("https://contents.mediadecathlon.com/p1278190/k$560df21c956e1bdf74a2a5cfa891f18b/sq/V+LO+TOUT+CHEMIN+RIVERSIDE+500+BLANC.webp?f=1000x1000")
b1.photos.attach(io: b1_bike_3, filename: 'riverside-3.jpg', content_type: 'image/jpg')
b1.save

b2 = Bicycle.new(model: "Cowboy", description: "L'assistance automatique s'adapte naturellement à la vitesse dont vous avez besoin. Quel que soit le terrain, accélerez en un éclair.", price_per_day: 12, address: "33 boulevard Barbès, Paris", user_id: u1.id)
b2_bike_1 = URI.open("https://techcrunch.com/wp-content/uploads/2019/10/Cowboy-10.jpg?w=730&crop=1")
b2.photos.attach(io: b2_bike_1, filename: 'cowboy-1.jpg', content_type: 'image/jpg')
b2_bike_2 = URI.open("https://cdn.vox-cdn.com/thumbor/fQJiiGmLe4lFSRICXgXGb_pCpzk=/0x0:2040x1351/1200x675/filters:focal(857x513:1183x839)/cdn.vox-cdn.com/uploads/chorus_image/image/63971448/verge-DSC_4815__1_-2040pxl.0.0.jpg")
b2.photos.attach(io: b2_bike_2, filename: 'cowboy-2.jpg', content_type: 'image/jpg')
b2_bike_3 = URI.open("https://keyassets.timeincuk.net/inspirewp/live/wp-content/uploads/sites/2/2019/07/sh01-920x614.png")
b2.photos.attach(io: b2_bike_3, filename: 'cowboy-3.jpg', content_type: 'image/jpg')
b2.save

u2 = User.create(email: "charles@baudelaire.com", password: "testtest")

b4 = Bicycle.new(model: "Vélo de Ville Elops 120", description: "Evadez-vous pour tous vos trajets en ville grâce à un vélo de style hollandais à la fois simple et confortable. Et avec son porte-bagage, simplifiez vos sorties !", price_per_day: 3, address: "100 rue Vasco de Gama, Paris", user_id: u2.id)
b4_bike_1 = URI.open("https://contents.mediadecathlon.com/p1317467/k$dd30b9aad36da1e2e177c2a99db7dbf5/sq/VELO+DE+VILLE+ELOPS+120+CADRE+HAUT+BLEU.webp?f=1000x1000")
b4.photos.attach(io: b4_bike_1, filename: 'elops-1.jpg', content_type: 'image/jpg')
b4_bike_2 = URI.open("https://contents.mediadecathlon.com/p1317469/k$b19789bbccbda213d1ea4c27030661ac/sq/VELO+DE+VILLE+ELOPS+120+CADRE+HAUT+BLEU.webp?f=1000x1000")
b4.photos.attach(io: b4_bike_2, filename: 'elops-2.jpg', content_type: 'image/jpg')
b4_bike_3 = URI.open("https://contents.mediadecathlon.com/p1317466/k$3576813e6c2d350ada77c0bc42202c03/sq/VELO+DE+VILLE+ELOPS+120+CADRE+HAUT+BLEU.webp?f=1000x1000")
b4.photos.attach(io: b4_bike_3, filename: 'elops-3.jpg', content_type: 'image/jpg')
b4.save

u3 = User.create(email: "leila@slimani.com", password: "testtest")

b6 = Bicycle.new(model: "Rockrider ST 100", description: "Efficacité ? Robustesse ? Les 2 s'il vous plaît ! Franchissez sans peine et sans casse vos premiers obstacles : cadre aluminium léger et roues en 27,5'' montées sur jantes double parois.", price_per_day: 5, address: "22 rue du Faubourg du Temple, Paris", user_id: u3.id)
b6_bike_1 = URI.open("https://contents.mediadecathlon.com/p1633470/k$29c282707c6d811afcedc81b08c59e6e/sq/VELO+VTT+ST+100+JAUNE+27+5.webp?f=1000x1000")
b6.photos.attach(io: b6_bike_1, filename: 'rockrider-1.jpg', content_type: 'image/jpg')
b6_bike_2 = URI.open("https://contents.mediadecathlon.com/p1563852/k$05e187015917b0eae8d44e1f937dced4/sq/VELO+VTT+ST+100+JAUNE+27+5.webp?f=1000x1000")
b6.photos.attach(io: b6_bike_2, filename: 'rockrider-2.jpg', content_type: 'image/jpg')
b6_bike_3 = URI.open("https://contents.mediadecathlon.com/p1424781/k$146b7588e1469fff90efd6371ea5db32/sq/VELO+VTT+ST+100+JAUNE+27+5.webp?f=1000x1000")
b6.photos.attach(io: b6_bike_3, filename: 'rockrider-3.jpg', content_type: 'image/jpg')
b6.save

u4 = User.create(email: "jamel@debbouze.com", password: "testtest")

b7 = Bicycle.new(model: "Vélo Pliant Tilt 900", description: "Vous recherchez, sans concession, efficacité et agilité dans vos déplacements au quotidien, le Tilt 900, roulant et confortable répondra à vos attentes.", price_per_day: 3.5, address: "1 rue du Faubourg du Temple, Paris", user_id: u4.id)
b7_bike_1 = URI.open("https://contents.mediadecathlon.com/p1610862/k$3757e2606ff3b3e21db41e0169b41056/sq/VELO+PLIANT+TILT+900+ALUMINIUM+BRUT+VERNIS.webp?f=1000x1000")
b7.photos.attach(io: b7_bike_1, filename: 'Tilt-1.jpg', content_type: 'image/jpg')
b7_bike_2 = URI.open("https://contents.mediadecathlon.com/p1741825/k$b49e4d25a18a212fe3b6174ba3cb5728/sq/VELO+PLIANT+TILT+900+ALUMINIUM+BRUT+VERNIS.webp?f=1000x1000")
b7.photos.attach(io: b7_bike_2, filename: 'Tilt-2.jpg', content_type: 'image/jpg')
b7.save

b8 = Bicycle.new(model: "Van Rysel Ultra Shimano Ultegra DI2", description: "Fleuron de la gamme vélo route, ce vélo route carbone équipé d'une transmission électrique Ultegra DI2, vous apportera précision et performance ! Ultra performant, ce vélo carbone au groupe Shimano Ultegra DI2, vous apportera l'équilibre parfait entre légèreté, rendement et dynamisme !", price_per_day: 8, address: "Pont Alma, Paris", user_id: u4.id)
b8_bike_1 = URI.open("https://contents.mediadecathlon.com/p1703006/k$33bb3711dd333010751ff7cbe6cab354/sq/V+LO+DE+ROUTE+FEMME+VAN+RYSEL+ULTRA+RCR+CF+SHIMANO+ULTEGRA+DI2.webp?f=1000x1000")
b8.photos.attach(io: b8_bike_1, filename: 'rockrider-1.jpg', content_type: 'image/jpg')
b8_bike_2 = URI.open("https://contents.mediadecathlon.com/p1702960/k$e6a986c0221ddb2a2a3f468987fc5c91/sq/V+LO+DE+ROUTE+FEMME+VAN+RYSEL+ULTRA+RCR+CF+SHIMANO+ULTEGRA+DI2.webp?f=1000x1000")
b8.photos.attach(io: b8_bike_2, filename: 'rockrider-2.jpg', content_type: 'image/jpg')
b8_bike_3 = URI.open("https://contents.mediadecathlon.com/p1703005/k$c6213e54c25980096a8f878604f81345/sq/V+LO+DE+ROUTE+FEMME+VAN+RYSEL+ULTRA+RCR+CF+SHIMANO+ULTEGRA+DI2.webp?f=1000x1000")
b8.photos.attach(io: b8_bike_3, filename: 'rockrider-3.jpg', content_type: 'image/jpg')
b8.save
