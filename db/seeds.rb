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

u1 = User.create(first_name: "Jules", last_name: "Vernes", email: "jules@vernes.com", password: "testtest")

b1 = Bicycle.new(model: "Riverside", description: "Notre équipe de concepteurs passionnés a développé ce vélo tout chemin pour vos sorties occasionnelles. Le Riverside 100 est le vélo tout chemin le moins cher de notre gamme, il vous accompagne dans vos sorties occasionnelles.", price_per_day: 5, start_date: 20191223, end_date: 20210115, address: "16 Villa Gaudelet, Paris", user_id: u1.id)
b1_bike_1 = URI.open("https://contents.mediadecathlon.com/p1278200/k$7192f14d7934be9acf1864cd6ccbfdd2/sq/V+LO+TOUT+CHEMIN+RIVERSIDE+500+BLANC.webp?f=1000x1000")
b1.photos.attach(io: b1_bike_1, filename: 'riverside-1.jpg', content_type: 'image/jpg')
b1_bike_2 = URI.open("https://contents.mediadecathlon.com/p1158881/k$bc5a3eb40931b3752df256c85d3236c5/riverside-120-hybrid-bike.jpg?&f=800x800")
b1.photos.attach(io: b1_bike_2, filename: 'riverside-2.jpg', content_type: 'image/jpg')
b1_bike_3 = URI.open("https://contents.mediadecathlon.com/p1278190/k$560df21c956e1bdf74a2a5cfa891f18b/sq/V+LO+TOUT+CHEMIN+RIVERSIDE+500+BLANC.webp?f=1000x1000")
b1.photos.attach(io: b1_bike_3, filename: 'riverside-3.jpg', content_type: 'image/jpg')
b1.save

b2 = Bicycle.new(model: "Cowboy", description: "L'assistance automatique s'adapte naturellement à la vitesse dont vous avez besoin. Quel que soit le terrain, accélerez en un éclair.", price_per_day: 12, start_date: 20191120, end_date: 20210101, address: "33 boulevard Barbès, Paris", user_id: u1.id)
b2_bike_1 = URI.open("https://techcrunch.com/wp-content/uploads/2019/10/Cowboy-10.jpg?w=730&crop=1")
b2.photos.attach(io: b2_bike_1, filename: 'cowboy-1.jpg', content_type: 'image/jpg')
b2_bike_2 = URI.open("https://cdn.vox-cdn.com/thumbor/fQJiiGmLe4lFSRICXgXGb_pCpzk=/0x0:2040x1351/1200x675/filters:focal(857x513:1183x839)/cdn.vox-cdn.com/uploads/chorus_image/image/63971448/verge-DSC_4815__1_-2040pxl.0.0.jpg")
b2.photos.attach(io: b2_bike_2, filename: 'cowboy-2.jpg', content_type: 'image/jpg')
b2_bike_3 = URI.open("https://keyassets.timeincuk.net/inspirewp/live/wp-content/uploads/sites/2/2019/07/sh01-920x614.png")
b2.photos.attach(io: b2_bike_3, filename: 'cowboy-3.jpg', content_type: 'image/jpg')
b2.save

u2 = User.create(first_name: "Charles", last_name: "Baudelaire", email: "charles@baudelaire.com", password: "testtest")

b3 = Bicycle.new(model: "Peugeot Reynold 531", description: "Vélo Course vintage Homme Peugeot Reynold 531 10 vitesses 1976, très léger 10 kilos. gris. Vif et souple à conduire même dans les rues Parisienne.", price_per_day: 4, start_date: 20191223, end_date: 20210115, address: "10 rue du Pressoir, Paris", user_id: u2.id)
b3_bike_1 = URI.open("https://img5.leboncoin.fr/ad-image/10dde786d7fc6d40805d0f5566db9748486a2d11.jpg")
b3.photos.attach(io: b3_bike_1, filename: 'peugeot-reynold-1.jpg', content_type: 'image/jpg')
b3_bike_2 = URI.open("https://img2.leboncoin.fr/ad-image/bb8b95d2b09b5ef86bae47a17013327ca77dee1c.jpg")
b3.photos.attach(io: b3_bike_2, filename: 'peugeot-reynold-2.jpg', content_type: 'image/jpg')
b3_bike_3 = URI.open("https://img0.leboncoin.fr/ad-image/d043fa77b1e13d8018d0d8f93e0cae10361be3f1.jpg")
b3.photos.attach(io: b3_bike_3, filename: 'peugeot-reynold-3.jpg', content_type: 'image/jpg')
b3.save

b4 = Bicycle.new(model: "Vélo de Ville Elops 120", description: "Evadez-vous pour tous vos trajets en ville grâce à un vélo de style hollandais à la fois simple et confortable. Et avec son porte-bagage, simplifiez vos sorties !", price_per_day: 3, start_date: 20191120, end_date: 20210101, address: "100 rue Vasco de Gama, Paris", user_id: u2.id)
b4_bike_1 = URI.open("https://contents.mediadecathlon.com/p1317467/k$dd30b9aad36da1e2e177c2a99db7dbf5/sq/VELO+DE+VILLE+ELOPS+120+CADRE+HAUT+BLEU.webp?f=1000x1000")
b4.photos.attach(io: b4_bike_1, filename: 'elops-1.jpg', content_type: 'image/jpg')
b4_bike_2 = URI.open("https://contents.mediadecathlon.com/p1317469/k$b19789bbccbda213d1ea4c27030661ac/sq/VELO+DE+VILLE+ELOPS+120+CADRE+HAUT+BLEU.webp?f=1000x1000")
b4.photos.attach(io: b4_bike_2, filename: 'elops-2.jpg', content_type: 'image/jpg')
b4_bike_3 = URI.open("https://contents.mediadecathlon.com/p1317466/k$3576813e6c2d350ada77c0bc42202c03/sq/VELO+DE+VILLE+ELOPS+120+CADRE+HAUT+BLEU.webp?f=1000x1000")
b4.photos.attach(io: b4_bike_3, filename: 'elops-3.jpg', content_type: 'image/jpg')
b4.save

u3 = User.create(first_name: "Leila", last_name: "Slimani", email: "leila@slimani.com", password: "testtest")

b5 = Bicycle.new(model: "Vélo Quipplan Pliable", description: "Un vélo pratique pour les balades en ville. C'est pliable en deux alors pas de problème au niveau du stationnement.", price_per_day: 6, start_date: 20191120, end_date: 20210101, address: "13 avenue de Choisy, Paris", user_id: u3.id)
b5_bike_1 = URI.open("https://www.quipplan-mobility.com/app/uploads/2017/02/quipplan_q26_R10_PLUS_allterrain_EQ_XPSL_W_02.jpg")
b5.photos.attach(io: b5_bike_1, filename: 'quipplan-1.jpg', content_type: 'image/jpg')
b5_bike_2 = URI.open("https://www.quipplan-mobility.com/app/uploads/2017/02/quipplan_q26_R10_PLUS_allterrain_EQ_XPSL_W_07-1000x600.jpg")
b5.photos.attach(io: b5_bike_2, filename: 'quipplan-2.jpg', content_type: 'image/jpg')
b5_bike_3 = URI.open("https://www.quipplan-mobility.com/app/uploads/2017/02/quipplan_q26_R10_PLUS_allterrain_EQ_XPSL_W_07-1000x600.jpg")
b5.photos.attach(io: b5_bike_3, filename: 'quipplan-3.jpg', content_type: 'image/jpg')
b5.save

b6 = Bicycle.new(model: "Rockrider ST 100", description: "Efficacité ? Robustesse ? Les 2 s'il vous plaît ! Franchissez sans peine et sans casse vos premiers obstacles : cadre aluminium léger et roues en 27,5'' montées sur jantes double parois.", price_per_day: 5, start_date: 20191120, end_date: 20210101, address: "22 rue du Faubourg du Temple, Paris", user_id: u3.id)
b6_bike_1 = URI.open("https://contents.mediadecathlon.com/p1633470/k$29c282707c6d811afcedc81b08c59e6e/sq/VELO+VTT+ST+100+JAUNE+27+5.webp?f=1000x1000")
b6.photos.attach(io: b6_bike_1, filename: 'rockrider-1.jpg', content_type: 'image/jpg')
b6_bike_2 = URI.open("https://contents.mediadecathlon.com/p1563852/k$05e187015917b0eae8d44e1f937dced4/sq/VELO+VTT+ST+100+JAUNE+27+5.webp?f=1000x1000")
b6.photos.attach(io: b6_bike_2, filename: 'rockrider-2.jpg', content_type: 'image/jpg')
b6_bike_3 = URI.open("https://contents.mediadecathlon.com/p1424781/k$146b7588e1469fff90efd6371ea5db32/sq/VELO+VTT+ST+100+JAUNE+27+5.webp?f=1000x1000")
b6.photos.attach(io: b6_bike_3, filename: 'rockrider-3.jpg', content_type: 'image/jpg')
b6.save

u4 = User.create(first_name: "Jamel", last_name: "Debbouze", email: "jamel@debbouze.com", password: "testtest")
