
Dish.create!([
  {restaurant_id: 1, name: "celery root agnolotti", desc: " beurre fondue, balsamic, fine herbs"}
])
Farm.create!([
  {name: "Nichols Farm and Orchard", address: "2602 Hawthorne Rd. Marengo, IL 60152", website_url: "http://www.nicholsfarm.com/"}
])
Restaurant.create!([
  {email: "r@r.com", name: "The Bristol", address: "2152 N Damen, Chicago, IL", website_url: "http://www.thebristolchicago.com/", farm_id: 1}
])
