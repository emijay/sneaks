# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Brand.create(name: "Adidas")
Brand.create(name: "Air Jordan")
Brand.create(name: "Asics")
Brand.create(name: "Balenciaga")
Brand.create(name: "Chanel")
Brand.create(name: "Converse")
Brand.create(name: "Diadora")
Brand.create(name: "Dior")
Brand.create(name: "Gucci")
Brand.create(name: "Li-Ning")
Brand.create(name: "Louis Vuitton")
Brand.create(name: "New Balance")
Brand.create(name: "Nike")
Brand.create(name: "Prada")
Brand.create(name: "Puma")
Brand.create(name: "Reebok")
Brand.create(name: "Saucony")
Brand.create(name: "Under Armour")
Brand.create(name: "Vans")



Size.create(size: 7)
Size.create(size: 7.5)
Size.create(size: 8)
Size.create(size: 8.5)
Size.create(size: 9)
Size.create(size: 9.5)
Size.create(size: 10)
Size.create(size: 10.5)
Size.create(size: 11)
Size.create(size: 11.5)
Size.create(size: 12)
Size.create(size: 12.5)
Size.create(size: 13)


Shoe.create(name: 'Jordan 1 Retro High Satin Black Toe (W)', color: 'BLACK/WHITE-UNIVERSITY RED', release_year: '2019', style: 'CD0461-016', description: 'Jordan Brand adds a twist to a classic with the Air Jordan 1 WMNS Satin “Black Toe”, now available on StockX. Jordan is no stranger to adding satin to the Jordan 1. In May of 2018, they released a satin rendition of the “Shattered Backboard” 1 in a similar fashion, revealing that the release would be in women’s sizing. This AJ 1 features classic “Black Toe” color scheme. This design is constructed in a mix of leather and satin construction providing a luxury feel. A metal Wings logo on the heel completes the design. These sneakers released in August of 2019 and retailed for $160.', cost_price: '160', first_image_url: 'https://stockx-360.imgix.net/Air-Jordan-1-Retro-High-Satin-Black-Toe-W/Images/Air-Jordan-1-Retro-High-Satin-Black-Toe-W/Lv2/img01.jpg?auto=format,compress&q=90&updated_at=1566245180&w=1000', second_image_url: 'https://stockx-360.imgix.net/Air-Jordan-1-Retro-High-Satin-Black-Toe-W/Images/Air-Jordan-1-Retro-High-Satin-Black-Toe-W/Lv2/img10.jpg?auto=format,compress&q=90&updated_at=1566245180&w=1000', third_image_url: 'https://stockx-360.imgix.net/Air-Jordan-1-Retro-High-Satin-Black-Toe-W/Images/Air-Jordan-1-Retro-High-Satin-Black-Toe-W/Lv2/img20.jpg?auto=format,compress&q=90&updated_at=1566245180&w=1000', fourth_image_url: 'https://stockx-360.imgix.net/Air-Jordan-1-Retro-High-Satin-Black-Toe-W/Images/Air-Jordan-1-Retro-High-Satin-Black-Toe-W/Lv2/img28.jpg?auto=format,compress&q=90&updated_at=1566245180&w=1000', brand_id: 2, size_id: 11, user_id: 1)
Shoe.create(name: 'Air Max 97 Ultra Sprite (W)', color: 'WHITE/BLUE NEBULA-VOLT', release_year: '2018', style: 'AH6806-101', description: '', cost_price: '160', first_image_url: 'https://stockx.imgix.net/Nike-Air-Max-97-Ultra-Sprite-W.png?fit=fill&bg=FFFFFF&w=700&h=500&auto=format,compress&q=90&trim=color&updated_at=1538080256&w=1000', second_image_url: '', third_image_url: '', fourth_image_url: '', brand_id: 13, size_id: 11, user_id: 1)
Shoe.create(name: 'Yeezy Boost 350 V2 Lundmark (Non Reflective)', color: 'LUNDMARK/LUNDMARK/LUNDMARK', release_year: '2019', style: 'FU9161', description: 'JLike newer 350 V2 models, the adidas Yeezy Boost 350 V2 Lundmark sports a subtle summer color with the back heel tab removed. Replacing the SPLY-350 boost stripe that was traditionally found on the original 350s is a transparent stripe that reveals a more cream colored inner. A boost midsole is covered by a light tan rubber outsole that features a pink middle stripe. Adding to the exclusivity of these is the fact this colorway is a North and Latin America exclusive. The Lundmark Yeezy Boost 350 V2 released on July 11, 2019 at a retail price of $220.', cost_price: '220', first_image_url: 'https://stockx-360.imgix.net/adidas-Yeezy-Boost-350-V2-Lundmark/Images/adidas-Yeezy-Boost-350-V2-Lundmark/Lv2/img01.jpg?auto=format,compress&q=90&updated_at=1562948358&w=1000', second_image_url: 'https://stockx-360.imgix.net/adidas-Yeezy-Boost-350-V2-Lundmark/Images/adidas-Yeezy-Boost-350-V2-Lundmark/Lv2/img10.jpg?auto=format,compress&q=90&updated_at=1562948358&w=1000', third_image_url: 'https://stockx-360.imgix.net/adidas-Yeezy-Boost-350-V2-Lundmark/Images/adidas-Yeezy-Boost-350-V2-Lundmark/Lv2/img18.jpg?auto=format,compress&q=90&updated_at=1562948358&w=1000', fourth_image_url: 'https://stockx-360.imgix.net/adidas-Yeezy-Boost-350-V2-Lundmark/Images/adidas-Yeezy-Boost-350-V2-Lundmark/Lv2/img28.jpg?auto=format,compress&q=90&updated_at=1562948358&w=1000', brand_id: 1, size_id: 11, user_id: 1)


Shoe.create(name: 'Gel-Lyte III Ronnie Fieg Salmon Toe 2.0 (Special Box)', color: 'NAVY/SALMON', release_year: '2016', style: 'H6B4K-5001', description: '', cost_price: '250', first_image_url: 'https://stockx-360.imgix.net/asics-gel-lyte-3-ronnie-fieg-salmon-toe-2pt0_TruView/Images/asics-gel-lyte-3-ronnie-fieg-salmon-toe-2pt0_TruView/Lv2/img01.jpg?auto=format,compress&q=90&updated_at=1538080256&w=1000', second_image_url: 'https://stockx-360.imgix.net/asics-gel-lyte-3-ronnie-fieg-salmon-toe-2pt0_TruView/Images/asics-gel-lyte-3-ronnie-fieg-salmon-toe-2pt0_TruView/Lv2/img08.jpg?auto=format,compress&q=90&updated_at=1538080256&w=1000', third_image_url: 'https://stockx-360.imgix.net/asics-gel-lyte-3-ronnie-fieg-salmon-toe-2pt0_TruView/Images/asics-gel-lyte-3-ronnie-fieg-salmon-toe-2pt0_TruView/Lv2/img13.jpg?auto=format,compress&q=90&updated_at=1538080256&w=1000', fourth_image_url: 'https://stockx-360.imgix.net/asics-gel-lyte-3-ronnie-fieg-salmon-toe-2pt0_TruView/Images/asics-gel-lyte-3-ronnie-fieg-salmon-toe-2pt0_TruView/Lv2/img20.jpg?auto=format,compress&q=90&updated_at=1538080256&w=1000', brand_id: 3, size_id: 6, user_id: 2)
Shoe.create(name: 'NMD R1 White Rose (W)', color: 'WHITE/ROSE', release_year: '2017', style: 'BY9952', description: '', cost_price: '130', first_image_url: 'https://stockx-360.imgix.net/adidas-nmd-r1-white-rose-w_TruView/Images/adidas-nmd-r1-white-rose-w_TruView/Lv2/img36.jpg?auto=format,compress&q=90&updated_at=1538080256&w=1000', second_image_url: 'https://stockx-360.imgix.net/adidas-nmd-r1-white-rose-w_TruView/Images/adidas-nmd-r1-white-rose-w_TruView/Lv2/img10.jpg?auto=format,compress&q=90&updated_at=1538080256&w=1000', third_image_url: 'https://stockx-360.imgix.net/adidas-nmd-r1-white-rose-w_TruView/Images/adidas-nmd-r1-white-rose-w_TruView/Lv2/img18.jpg?auto=format,compress&q=90&updated_at=1538080256&w=1000', fourth_image_url: 'https://stockx-360.imgix.net/adidas-nmd-r1-white-rose-w_TruView/Images/adidas-nmd-r1-white-rose-w_TruView/Lv2/img27.jpg?auto=format,compress&q=90&updated_at=1538080256&w=1000', brand_id: 1, size_id: 6, user_id: 2)
Shoe.create(name: 'Chuck Taylor All-Star 70s Ox Chinatown Market UV', color: 'MULTI/WHITE', release_year: '2019', style: '166599C', description: '', cost_price: '95', first_image_url: 'https://stockx.imgix.net/Converse-Chuck-Taylor-All-Star-70s-Ox-Chinatown-Market.jpg?fit=fill&bg=FFFFFF&w=700&h=500&auto=format,compress&q=90&trim=color&updated_at=1564456219&w=1000', second_image_url: '', third_image_url: '', fourth_image_url: '', brand_id: 6, size_id: 6, user_id: 2)

Shoe.create(name: 'Old Skool Patta Mean Eyed Cat White', color: 'TRUE WHITE/BLACK', release_year: '2017', style: 'VA31Z9OXU', description: '', cost_price: '95', first_image_url: 'https://stockx.imgix.net/Vans-Old-Skool-Patta-Mean-Eyed-Cat-White.png?fit=fill&bg=FFFFFF&w=700&h=500&auto=format,compress&q=90&trim=color&updated_at=1538080256&w=1000', second_image_url: '', third_image_url: '', fourth_image_url: '', brand_id: 19, size_id: 1, user_id: 3)
Shoe.create(name: 'Human Race NMD Pharrell Holi Festival (Pink Glow)', color: 'PINK GLOW/FLASH GREEN/LAB PURP', release_year: '2018', style: 'AC7362', description: 'For fans of the NMD Human Race silhouette, these Pink Glow NMD Human Race shoes might be considered a "holi" grail. Created to honor the Hindu celebration of Holi, also known as the festival of color and love, the “Pink Glow" brings the colors of the festival to life. Featuring a powder dye finish across the knitted mesh upper, the sneaker also sports a white Boost midsole and black trail rubber outsole to make the colors pop.', cost_price: '95', first_image_url: 'https://stockx.imgix.net/Converse-Chuck-Taylor-All-Star-70s-Ox-Chinatown-Market.jpg?fit=fill&bg=FFFFFF&w=700&h=500&auto=format,compress&q=90&trim=color&updated_at=1564456219&w=1000', second_image_url: 'https://stockx-360.imgix.net/adidas-human-race-nmd-pharrell-holi-festival-pink-glow_TruView/Images/adidas-human-race-nmd-pharrell-holi-festival-pink-glow_TruView/Lv2/img09.jpg?auto=format,compress&q=90&updated_at=1538080256&w=1000', third_image_url: 'https://stockx-360.imgix.net/adidas-human-race-nmd-pharrell-holi-festival-pink-glow_TruView/Images/adidas-human-race-nmd-pharrell-holi-festival-pink-glow_TruView/Lv2/img16.jpg?auto=format,compress&q=90&updated_at=1538080256&w=1000', fourth_image_url: 'https://stockx-360.imgix.net/adidas-human-race-nmd-pharrell-holi-festival-pink-glow_TruView/Images/adidas-human-race-nmd-pharrell-holi-festival-pink-glow_TruView/Lv2/img24.jpg?auto=format,compress&q=90&updated_at=1538080256&w=1000', brand_id: 1, size_id: 1, user_id: 3)
Shoe.create(name: '1 Mid Pink Foam (GS)', color: 'PINK FOAM/BLACK-WHITE', release_year: '2019', style: '555112-601', description: 'Have some colorful fun while wearing the Jordan 1 Mid Pink Foam (GS). This AJ1 Mid comes with a pink upper, black Nike “Swoosh”, white midsole, and a black sole. These sneakers released in January 2019 and retailed for $90. ', cost_price: '90', first_image_url: 'https://stockx-360.imgix.net/Air-Jordan-1-Mid-Pink-Foam-GS/Images/Air-Jordan-1-Mid-Pink-Foam-GS/Lv2/img01.jpg?auto=format,compress&q=90&updated_at=1549053038&w=1000', second_image_url: 'https://stockx-360.imgix.net/Air-Jordan-1-Mid-Pink-Foam-GS/Images/Air-Jordan-1-Mid-Pink-Foam-GS/Lv2/img10.jpg?auto=format,compress&q=90&updated_at=1549053038&w=1000', third_image_url: 'https://stockx-360.imgix.net/Air-Jordan-1-Mid-Pink-Foam-GS/Images/Air-Jordan-1-Mid-Pink-Foam-GS/Lv2/img19.jpg?auto=format,compress&q=90&updated_at=1549053038&w=1000', fourth_image_url: 'https://stockx-360.imgix.net/Air-Jordan-1-Mid-Pink-Foam-GS/Images/Air-Jordan-1-Mid-Pink-Foam-GS/Lv2/img28.jpg?auto=format,compress&q=90&updated_at=1549053038&w=1000', brand_id: 2, size_id: 1, user_id: 3)




UpcomingShoe.create(name: 'Air Max 97 LX Swarovski Gold (W)', image_url: 'https://stockx-360.imgix.net/Nike-Air-Max-97-LX-Swarovski-Gold-W/Images/Nike-Air-Max-97-LX-Swarovski-Gold-W/Lv2/img01.jpg?auto=format,compress&q=90&updated_at=1546624248&w=1000', release_date: '22/03/2020', retail_price: '300', brand_id: '1')
UpcomingShoe.create(name: 'Converse Chuck Taylor All-Star 70s Hi Comme des Garcons PLAY White', image_url: 'https://stockx-360.imgix.net/Converse-Chuck-Taylor-All-Star-70s-Hi-Comme-Des-Garcons-PLAY-White/Images/Converse-Chuck-Taylor-All-Star-70s-Hi-Comme-Des-Garcons-PLAY-White/Lv2/img01.jpg?auto=format,compress&q=90&updated_at=1538080256&w=1000', release_date: '30/02/2020', retail_price: '500', brand_id: '6')
UpcomingShoe.create(name: 'Balenciaga Speed Trainer Black White Volt', image_url: 'https://stockx.imgix.net/Balenciaga-Speed-Trainer-Black-White-Volt-W.png?fit=fill&bg=FFFFFF&w=700&h=500&auto=format,compress&q=90&trim=color&updated_at=1557429820&w=1000', release_date: '25/12/2019', retail_price: '250', brand_id: '4')
UpcomingShoe.create(name: 'Li-Ning Way Of Wade 6 The Edition Boutique Art Basel', image_url: 'https://stockx-360.imgix.net/Li-Ning-Way-Of-Wade-6-The-Edition-Boutique-Art-Basel/Images/Li-Ning-Way-Of-Wade-6-The-Edition-Boutique-Art-Basel/Lv2/img01.jpg?auto=format,compress&q=90&updated_at=1562620884&w=1000', release_date: '11/11/2019', retail_price: '100', brand_id: '10')
UpcomingShoe.create(name: 'Under Armour Curry 5 Black Gold', image_url: 'https://stockx-360.imgix.net/Under-Armour-Curry-5-Black-Gold/Images/Under-Armour-Curry-5-Black-Gold/Lv2/img02.jpg?auto=format,compress&q=90&updated_at=1538080256&w=1000', release_date: '04/10/2019', retail_price: '80', brand_id: '18')