require 'faker'

dishes = [
  {
    "name": "Pigs In A Blanket Wreath",
    "description": "This adorable holiday app will become an instant legend to all of your family and friends (who doesn't love pigs in a blanket!?). It's a centerpiece worthy of your holiday table—plus one that you can eat, which is the best kind of centerpiece in our opinion."
  },
  {
    "name": "Roasted Fennel With Delicata Squash & Apples",
    "description": "In-season vegetables find their way into this healthy, colorful side dish that's perfect for elegant dinner party menus, simple weeknight meals, or paired with richer, holiday spreads."
  },
  {
    "name": "Copycat Honey Baked Ham",
    "description": "Honey Baked ham is grand, deliciously smoky, and has a signature caramelized crust all over. Sadly, it's something you have to plan to order in advance and can be a little on the pricey side. If you didn't have time to order a ham, want to save some money, or just try a homemade version of this classic centerpiece, this copycat recipe is for you."
  },
  {
    "name": "Fancy Christmas Cheese Ball",
    "description": "Looking for a stunning Christmas app that comes together in no time? Look no further than the humble cheese ball. They're a retro idea that we've really run with here at Delish, taking them fully into modern times with creative ingredients and decorating methods. "
  },
  {
    "name": "Salmon En Croute",
    "description": "A cheesy, garlicky, spinach mixture is the perfect balance to a tender salmon fillet. Everything is nestled together in the puff pastry dough, and after 20 minutes in the oven, you'll have a buttery, flaky crust with perfectly tender salmon inside."
  },
  {
    "name": "Spinach-Artichoke Christmas Tree Skewers",
    "description": "Spinach-artichoke dip is a classic appetizer, but let's make it a little more festive! Wrapped in puff pastry, the dip can be shaped into cute little Christmas trees and becomes individual apps. The tree gets topped with a little cheese star, as all trees should be."
  },
  {
    "name": "Naughty Knots",
    "description": "Though these cheesy, herby bites of deliciousness may make you feel like you should be written up on the naughty list, we promise that if you make these for your holiday dinner guests, you will be sealed on the good list forever."
  },
  {
    "name": "Cranberry Apple Quinoa Salad",
    "description": "We don't believe in boring salads at Delish, and crunchy apples and tart cranberries bring a lot of life to this one. The slightly sweet and lemony dressing is easy to make, and you'll want to have extra on hand to pour it over everything."
  },
  {
    "name": "Antipasto Christmas Tree Cheese Ball",
    "description": "Nothing says hostess with the most-est like a charming and delicious antipasto Christmas tree. This cheesy appetizer sculpture will help you decorate for your Christmas party and feed your guests all in one fell swoop. "
  },
  {
    "name": "Baked Brie Wreath",
    "description": "Honey-glazed melted brie, plus herby crispy pizza dough, is an equation for true happiness. Your friends, family, or colleagues will be ready to dive into this edible wreath once you stroll through the door… after all, you want to eat the cheese while it's warm and gooey. "
  },
  {
    "name": "Perfect Prime Rib",
    "description": "Prime rib, also referred to as standing rib roast, is the beautiful piece of meat we turn to whenever we need a truly show-stopping holiday roast. A well-cooked prime rib is juicy, full of flavor, and not at all difficult to make. You'll make your guests think you labored for hours, but it'll be your little secret that it was no sweat and really your oven did all the work."
  },
  {
    "name": "Brûléed Brie Crostini",
    "description": "Mini brie toasts are a super-easy appetizer, and caramelizing the tops is a great party trick. The crunchy sugar topping gives way to an oozy slice of brie and sweet jam. "
  },
  {
    "name": "Grapefruit & Goat Cheese Fennel Salad",
    "description": "Crisp licorice-y fennel is best from winter to early spring, so we paired it with some more winter-friendly ingredients: juicy grapefruit, briny Kalamata olives, creamy goat cheese, and some rich toasted pine nuts. "
  },
  {
    "name": "Cranberry Whipped Feta Dip",
    "description": "Ever wonder how you can get all of the flavors of a holiday cheese board with a fraction of the effort? Wonder no more. This cranberry-topped whipped feta dip is here to save your holiday appetizer planning."
  },
  {
    "name": "Melting Potatoes",
    "description": "These melt-in-your-mouth potatoes got their name for good reason: With a tender, soft middle and an herby topping, one bite and you'll get it. Smothered in butter, garlic, and fresh herbs, they really are amazing with everything, from weeknight dinners to romantic special occasions."
  },
  {
    "name": "Bacon-Wrapped Dates",
    "description": "If you're unfamiliar with dates, it's time to familiarize yourself! The date's sweetness is the PERFECT counterpoint to crisp, salty bacon and creamy goat cheese. We guarantee these will fly off the plate whenever you serve them."
  },
  {
    "name": "Fish Pie",
    "description": "Fish pie is usually seafood in a cream sauce topped with mashed potatoes. For this version, we took inspiration from Greek cuisine (specifically avgolemono soup) and added dill and lemon."
  },
  {
    "name": "Mushroom, Spinach & Gruyère Stuffed Pork Tenderloin",
    "description": "Fast-cooking pork tenderloin is a regular in our weeknight dinner rotation, but that doesn't mean we let it become so routine that it doesn't dazzle come holiday time. Instead, we mix it up each week with a variety of different flavors and preparations, and this ultra-stuffed mushroom, spinach, and Gruyère pork tenderloin certainly does that."
  },
  {
    "name": "Goat Cheese-Stuffed Rolls",
    "description": "Just when we thought dinner rolls couldn't get any better—we stuffed them with goat cheese. These golden brown beauties are rich, soft, and full of honey and herby goat cheese. Best part of a cheese-stuffed roll? It doesn't need any butter."
  },
  {
    "name": "Crab-Stuffed Mushrooms",
    "description": "In the world of fancy appetizers, the crab-stuffed mushroom reigns supreme, but they also make for a great main. Transform these into a dinner-worthy entrée by using portobello mushrooms instead of cremini."
  },
  {
    "name": "Corn Casserole",
    "description": "This corn casserole is the perfect side dish for any occasion. It's loaded with cheese and corn and topped with crispy breadcrumbs. It's so good, you'll want to eat this with everything."
  },
  {
    "name": "Tourtiere",
    "description": "Tourtiere is basically a prettier way of saying “meat pie.” Originally from Quebec, the pie is traditionally made in a “tourtiere” dish and eaten during Christmas. It's been around for hundreds of years and has yet to lose its meaty luster."
  },
  {
    "name": "Crockpot Green Bean Casserole",
    "description": "Is it even the holidays without this cozy side? This recipe makes green bean casserole even simpler; instead of using an oven, it can be mixed and cooked in your slow cooker."
  },
  {
    "name": "Parmesan Brussels Sprouts Salad",
    "description": "Making this salad might seem intimidating, but it doesn't actually require much prep. Tossed with a combo of toasted almonds, shaved Parmesan, and pomegranate seeds, Brussels make a great side for any fall get-together."
  },
  {
    "name": "Broccoli Cauliflower Casserole",
    "description": "We tenderize the broccoli and cauliflower in no time thanks to the microwave, then toss it with a no-cook sauce made of ranch powder, sweet-tart sun-dried tomatoes, and warming red pepper flakes. Serve this as a side, or feel free to mix in some shredded rotisserie chicken to make this a full meal."
  },
  {
    "name": "Santa's Hat Cocktail",
    "description": "This deep red drink is an ode to a dirty Shirley. You get that fresh lime juice, the kick from the vodka, and the sweetness and color from grenadine. If you want to have it virgin, just follow our Shirley temple recipe! Don't forget about the garnishes though. "
  },
  {
    "name": "Bacon Brie Crescent Wreath",
    "description": "Looking for an appetizer that doubles at a centerpiece? This cheesy, savory crescent ring is perfect for your holiday gathering. And if it's a vegetarian app you're after, we'd suggest subbing in sautéed mushrooms for the bacon."
  },
  {
    "name": "Garlic Mashed Potatoes",
    "description": "You know what's great? Mashed potatoes. You know what's even better? Roasted garlic mashed potatoes! That extra savory flavor from melty, roasted garlic adds the perfect kick to classic mashed spuds. (We also add a splash of tangy balsamic vinegar to kick them up a notch.)"
  },
  {
    "name": "Kale Salad With Apples and Toasted Almonds",
    "description": "Need a simple Christmas salad that comes together fast? Kale yeah you do! Pair apples and kale with dried cherries, toasty almonds, and feta for a salad everyone will love this holiday season."
  },
  {
    "name": "Instant Pot Pork Puttanesca",
    "description": "For this dish, we were inspired by classic Italian puttanesca, a tomato-based dish with anchovies, capers, and olives that's traditionally served over pasta. Pork makes it extra hearty, so we served it over creamy polenta, but feel free to sub in pasta, rice, or whatever else you can dream up."
  },
  {
    "name": "Beef Wellington",
    "description": "While the origins of this famous dish are unknown, we do know it's a holiday showstopper that is not for the faint of heart. Below, we break down all the elements of a classic beef Wellington from the inside out, so you can fearlessly make the best version you can. We believe in you!"
  },
  {
    "name": "Candied Yams",
    "description": "For many, candied yams are an indispensable part of the holiday meal, along with mashed potatoes. We agree! Our version gets an added kick from bourbon—we think once you try them, you'll never want yams without it."
  },
  {
    "name": "Chicken and Mushroom White Lasagna",
    "description": "Few things are more pleasing than a melty, cheesy square of lasagna. This creamy white version, made extra-luxurious from a cheesy béchamel-type sauce called Mornay, is packed with chopped chicken, spinach, mushroom, and fresh herbs–and a few time-saving secrets. 😉"
  },
  {
    "name": "Slow Cooker Vegan Butternut Squash Soup",
    "description": "This vegan butternut squash soup is made in a slow cooker, so after you chop up all your vegetables, it's essentially hands-off. A quick blitz with an immersion blender at the end, and you've got a silky, drinkable butternut squash soup."
  },
  {
    "name": "Garlic & Herb Turkey Roulade",
    "description": "This turkey roulade is a great alternative to a whole bird. It's a lot easier to make, and it's perfect for a smaller crowd. Plus, it's stuffed with a delicious garlic-herb butter, so you know it's going to be good."
  },
  {
    "name": "Baked Brie In Puff Pastry",
    "description": "We filled ours with raspberry jam, but use your favorite spread or jelly. Drizzle it with some honey and you'll have a warm, cheesy app that feels extra fancy in no time at all."
  },
  {
    "name": "Slow-Cooker Garlic-Parmesan Chicken",
    "description": "When you think Parm + chicken, you may be thinking of the melty, saucy chicken Parm. We suggest you might like this recipe as much or even more. Bone-in skin-on chicken thighs ensure a flavor-packed and tender result. "
  },
  {
    "name": "Skillet Cornbread",
    "description": "Not only does this cornbread involve less cleanup (we love an oven-to-table vessel), but it promotes the ideal texture of crackly crust around moist, decadent corn cake. Pouring the batter into a preheated cast-iron creates a sear to the batter (nothing like that sizzling sound when it's poured in) and speeds up the bake time too."
  },
  {
    "name": "Roasted Fingerling Potatoes",
    "description": "This going to be your new go-to potato side. The secret to the ultra-crispy skin? A cornstarch slurry! For some flavor we added rosemary and garlic, but just like our other roasted potatoes, feel free to add any herbs or flavors your heart desires."
  },
  {
    "name": "Brown Sugar Pineapple Ham",
    "description": "This retro glazed ham is a classic stunner for the center of a table, and just a few easy sides short of a fantastic Christmas feast."
  },
  {
    "name": "Ruth's Chris Sweet Potato Casserole",
    "description": "A layer of mashed, soufflé-like sweet potato gets topped with a crunchy, sweet brown sugar and pecan crust and baked into a winning combination of textures. Serve this as a side or dessert this holiday season."
  },
  {
    "name": "Chicken Pot Pie Casserole",
    "description": "If chicken pot pie excites you, but pie crust intimidates you, you've arrived at the perfect recipe. Classic chicken pot pie filling is baked into a stress-free casserole and, best of all, topped with biscuits for that tantalizing golden brown finish."
  },
  {
    "name": "Perfect Pot Roast",
    "description": "When it comes to stick-to-your-ribs comfort food, it's difficult to beat tender, flavorful pot roast. A classic main player on holiday tables, this slow-cooking dish is the meal to make when you want to impress and satisfy without a crazy amount of effort. The shredded beef meal comes complete with tender potatoes and carrots and a sauce you'll want to spoon over everything."
  },
  {
    "name": "French Onion Soup",
    "description": "You can't go wrong with bubbling, melty cheese on top of soup. We use white wine instead of red, and a combo of chicken and beef stock to make this wintery soup extra special."
  },
  {
    "name": "Garlic-Parmesan Roasted Carrots",
    "description": "This recipe made us wonder, Why don't we roast carrots more often? When they roast, their flavor concentrates and sweetens. Pair that with copious amounts of umami-packed Parmesan and just a touch of lemon, and you've got a super-irresistible side."
  },
  {
    "name": "Osso Buco",
    "description": "Literally translated to “off the bone”, osso buco is a traditional northern Italian stew that celebrates the impossible tenderness of crosscut veal shank. It's true, this recipe does take a bit of time, but we promise, it's worth it. Lucky for you, this is the epitome of a make-ahead dish—it tastes even better the next day!"
  },
  {
    "name": "Fluffy Potato Rolls",
    "description": "Have a leftover baked potato? The only logical thing to do is to mash the insides and make dinner rolls. These are truly the Fluffiest. Dinner. Rolls. Ever. Fresh out of the oven, each roll has a crispy bottom, buttery top, and unbelievably soft center."
  },
  {
    "name": "Mashed Potato Casserole",
    "description": "This recipe begins—as you might expect—with classic mashed potatoes. We then add herb-infused milk and some cream cheese, then fold in the secret ingredient—eggs! Eggs are stirred in before baking to lighten up the potatoes, and they help the mixture “soufflé” a bit in the oven. "
  },
  {
    "name": "Cranberry Brie Bites",
    "description": "Our love for crescent roll recipes is no secret. Why make dough from scratch when everyone loves the canned stuff?! These are a fan favorite every fall. They always disappear within minutes, probably because the combo of salty, creamy brie, sweet-tart cranberry sauce, and crunchy pecans is PERFECT."
  },
  {
    "name": "Turkey Meatloaf",
    "description": "Meatloaf is a classic alternative to turkey on Thanksgiving, so why not keep with the theme and make your with turkey. This one is LOADED with flavor. How? Worcestershire garlic, rosemary, and thyme. (The herbs are our favorite part, so don't skip 'em!)"
  },
  {
    "name": "Creamy Penne With Sausage & Sun-Dried Tomatoes",
    "description": "If you're looking for an easy pasta recipe that will make everyone fall in love with you, look no further. This one is quick enough for a holiday weeknight dinner, but impressive enough to serve to guests too."
  },
  {
    "name": "Shepherd's Pie",
    "description": "Shepherd's pie is traditionally made with a ground-lamb filling, but we make ours with ground beef. The sauce is really simple and flavorful, but the best part is the insanely fluffy mashed potato topping. "
  },
  {
    "name": "Vegetarian Mushroom Gravy",
    "description": "Vegetarians and meat-eaters alike will be piling this flavor-packed gravy on top of all the Thanksgiving sides. This gravy comes together in minutes—and you won't miss roasting a whole turkey or chicken to make it."
  },
  {
    "name": "Pesto Pizza Stuffed Star Bread",
    "description": "This star bread is the perfect appetizer for your holiday party. It's stuffed with pesto, mozzarella, and sun-dried tomatoes, and it's so fun to pull apart and eat."
  },
  {
    "name": "Crispy Cheddar Pork Chops with Brussels and Apples",
    "description": "It's time for some next-level shake and bake with these crispy, cheddary pork chops served with an easy Brussels sprouts and apple side. Both the panko and the cheddar crisp up on the outside of the chops to form a tasty crust that keeps the pork super-juicy and tender."
  },
  {
    "name": "Stuffed Mushrooms",
    "description": "These stuffed mushrooms are the perfect bite-sized appetizer for your next party. They're stuffed with a creamy filling made with goat cheese and Parmesan, and topped with crispy panko breadcrumbs."
  },
  {
    "name": "Vegan Mushroom Pot Pie",
    "description": "When it's cold out over Christmas, a steaming hot pot pie filled with creamy, flavorful gravy, sweet and tender veggies, and topped with a shatteringly flaky crust is EVERYTHING. Here, mushrooms replace meat and are every bit as satisfying as their meaty counterparts."
  },
  {
    "name": "Cranberry Sauce",
    "description": "Cranberry sauce is a staple on any holiday table. This version is made with fresh cranberries, orange juice, and orange zest, and it's so easy to make. You'll never go back to the canned stuff!"
  },
  {
    "name": "Roasted Pork Tenderloin",
    "description": "Pork tenderloin is one of our favorite cuts to cook. It's super tender, cooks fast, and is super versatile. This version is roasted with a simple garlic-herb coating, and it's SO good."
  },
  {
    "name": "Sweet Potato Salad",
    "description": "This sweet potato salad is the perfect way to lighten up any holiday dinner spread. Feta, dried cranberries, and red onions pair really nicely with the earthy sweetness of the orange super food. Did we mention it's great warm or cold?"
  },
  {
    "name": "Pizza Casserole",
    "description": "From the realms of cheesy pizza and bubbling baked pasta comes a new family favorite: pizza casserole. Loaded with sausage, veggies, and plenty of cheese, this meal has all of the cheesy, tomato-filled goodness of our favorite take-out pizza, neatly packaged in a 13\"-by-9\" pan."
  },
  {
    "name": "Roasted Baby Carrots",
    "description": "Sweet baby carrots are the perfect match for this tangy balsamic glaze. Fancy enough for a holiday meal, but easy enough for a weeknight, this recipe is endlessly riffable and guaranteed to deliver crisp-tender carrots every time."
  },
  {
    "name": "Slow-Roasted Pork And Peppers",
    "description": "There's very little prep for this simple dinner—it's just a matter of halving bell peppers and cutting onions into wedges, then the oven does the rest of the work, transforming the boneless pork shoulder into meltingly tender meat that's perfect for a holiday weeknight dinner or company."
  },
  {
    "name": "Baked Feta Bites",
    "description": "If you're a fan of our cranberry brie bites, we've got news for you: There's a new app in town, and it's inspired by another fan fave, baked feta pasta. This cheesy finger food features the flavors you know and love, all nestled into bite-sized cups of golden crescent roll dough."
  },
  {
    "name": "Roasted Beet Goat Cheese Salad",
    "description": "Beet lovers rejoice! Creamy goat cheese, roasted beets, and avocado combine into the perfect arugula salad. Instead of buying precooked beets, you simply wrap them in foil and bake them like a baked potato. It takes about an hour, but the resulting beets will be tender, earthy and slightly sweet in a way that no store-bought beet can."
  },
  {
    "name": "Beef Short Ribs",
    "description": "These Korean-style beef short ribs are SO full of flavor. They do take a bit of time to make (~4 hours), but most of it is hands-off. Trust us, it's worth it!"
  },
  {
    "name": "Holiday Roasted Vegetables",
    "description": "The dried cranberries and balsamic vinegar add some sweetness and tartness, while the pecans add a crunch to these holiday-worthy vegetables. We use Brussels sprouts and carrots, but feel free to add extra vegetables or swap in some of your favorites."
  },
  {
    "name": "Perfect Roast Beef",
    "description": "Roast beef might sound fancy and complicated to make, but it's actually quite simple! With a good piece of meat and some simple herbs, you can have roast beef that's way more tender and flavorful than the store-bought kind."
  },
  {
    "name": "Classic Roast Chicken",
    "description": "Roast chicken is a classic for a reason. It's easy to make, the meat is tender, and the skin is crispy. This version is flavored with lemon and rosemary, but feel free to use whatever herbs you have on hand."
  },
  {
    "name": "Honey-Glazed Carrots",
    "description": "How do you make a picky eater fall in love with vegetables? When it comes to carrots, our answer is two-part: slather them in a sweet and sticky glaze and then roast them. In the oven, the honey and butter in the glaze will caramelize, transforming plain, boring carrots into the perfect holiday side dish."
  },
  {
    "name": "Baked Ham With Brown Sugar Glaze",
    "description": "Pro tip for taking your usual holiday ham over the top? Make your own homemade glaze! Our go-to combo is brown sugar, Dijon mustard, and apple cider."
  },
  {
    "name": "Sausage Balls",
    "description": "Many of you might be thinking: Wait, what even is a sausage ball?! The answer: addictive bites of cooked pork sausage, cheddar, and Bisquick that will be the most popular appetizer at your party. Just make sure your guests finish them; otherwise, you'll be popping these bad boys for days after your party ends. 😋"
  },
  {
    "name": "Pull-Apart Christmas Tree",
    "description": "Now this is the ultimate Christmas app. Super-cheesy and herby, this centerpiece appetizer has the looks and taste to impress. Plus, it's ready in under an hour!"
  },
  {
    "name": "Honey Balsamic Glazed Brussels Sprouts",
    "description": "The hardest part of making these Brussels sprouts is leaving them alone. They're cooked until perfectly tender and golden brown, then glazed with a balsamic glaze that will change your life. If you're anything like us, you're going to be popping these in your mouth like they're popcorn."
  },
  {
    "name": "Maple Glazed Ham Steak ",
    "description": "Want a holiday ham experience without the commitment to using up those leftovers? Maple ham steaks are just the thing for when you're celebrating with a smaller crowd."
  },
  {
    "name": "Braised Lamb Shank",
    "description": "Braising lamb shanks might sound a little intimidating, but honestly, it couldn't be easier. After a quick sear, the oven does all the work for you."
  },
  {
    "name": "Potatoes Au Gratin",
    "description": "They may be classic for Thanksgiving, but they're too delicious not to make at Christmas too. Don't be intimidated by the French name. \"Gratin\" quite literally means to cover with cheese or bread crumbs and brown. You've got this."
  },
  {
    "name": "Roast Lamb",
    "description": "Roasting a lamb shoulder is just as easy, if not easier, than roasting a chicken. All you need to do is rub your roast with a mixture of fresh herbs, garlic, and olive oil and throw it in the oven for an hour or so. Bonus points if you roast the meat on top of a bed of potatoes for the perfect complete Christmas meal."
  },
  {
    "name": "Beef Tenderloin",
    "description": "Don't be intimidated by this dish's beauty (and size). Beef tenderloin is actually insanely easy to make, thanks to a marinade made up of ingredients you probably already have, and a surprisingly quick cook time. "
  },
  {
    "name": "Cherry Bourbon Glazed Ham",
    "description": "Get ready to plan a Christmas dinner party around this ham alone! The tart cherries and bourbon work together to bring a slight sour and oaky tartness to the spiral ham, and the glaze has just enough cayenne pepper to deliver a subtle smoky heat."
  }
]

restaurants = [
  {
    name: "Burger King",
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.cell_phone.gsub(/\D/, '')[0..9],
    description: "Burger King is an American multinational chain of hamburger fast food restaurants. Headquartered in the unincorporated area of Miami-Dade County, Florida, the company was founded in 1953 as Insta-Burger King, a Jacksonville, Florida–based restaurant chain."
  }, {
    name: "McDonald's",
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.cell_phone.gsub(/\D/, '')[0..9],
    description: "McDonald's Corporation is an American fast food company, founded in 1940 as a restaurant operated by Richard and Maurice McDonald, in San Bernardino, California, United States."
  }, {
    name: "Quick Rabrab",
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.cell_phone.gsub(/\D/, '')[0..9],
    description: "Quick Rabrab is a fast food restaurant chain headquartered in the United States. Founded in 1953 in Jacksonville, Florida, the company operates 21000 locations worldwide."
  }, {
    name: "KFC Hvolsvöllur",
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.cell_phone.gsub(/\D/, '')[0..9],
    description: "KFC is an American fast food restaurant chain headquartered in Louisville, Kentucky, that specializes in fried chicken. It is the world's second-largest restaurant chain after McDonald's, with 22,621 locations globally in 150 countries as of December 2019."
  }
]

# create Restaurants
restaurants.each_with_index do |item, index|
  restaurant = Restaurant.new(
    name: item[:name],
    address: item[:address],
    phone_number: item[:phone_number],
    description: item[:description]
  )

  restaurant.logo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'restaurants', "restaurant#{index + 1}.jpg")), filename: "#{restaurant.name.parameterize}.jpg", content_type: 'image/jpg')
  if restaurant.save
    puts "Created Restaurant: #{restaurant.name}"
  end
end

restaurants = Restaurant.all

# prevent SQLite3::BusyException: database is locked
ActiveRecord::Base.transaction do
  # create Dishes
  dishes.each do |item|
    dish = Dish.new(
      dish_group: Faker::Food.ethnic_category,
      name: item[:name],
      description: item[:description],
      price: Faker::Commerce.price(range: 1..200.0),
    )

    dish.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'dishes', "#{dish.name.parameterize}.jpg")), filename: "#{dish.name.parameterize}.jpg", content_type: 'image/jpg')
    dish.restaurant = restaurants.sample
    if dish.save
      puts "Created Dish: #{dish.name}"
    end
  end
end

def create_orders_for_restaurant(restaurant)
  order_count = rand(1..5)
  puts "Creating random #{order_count} order(s) for Restaurant: #{restaurant.name} at #{Time.now}"
  puts "Start at #{Time.now}"

  dishes = restaurant.dishes.select(:id, :price)

  ActiveRecord::Base.transaction do
    (1..order_count).each do

      order = Order.new(
        date: Faker::Date.between(from: 20.days.ago, to: 20.days.from_now),
        sub_total: 0,
        taxes: Faker::Number.between(from: 1, to: 10),
        total: 0,
      )
      order.restaurant = restaurant

      # add random Items to Order
      dishes = dishes.sample(rand(1..5))
      dishes.each do |dish|
        item = order.items.build
        item.dish_id = dish.id
        item.price = dish.price
      end

      total = order.items.map(&:price).sum

      # set total to order from items
      order.sub_total = total
      # calculate taxes
      taxes = (total * order.taxes) / 100
      order.total = total + taxes
      
      order.save
    end
  end

  puts "Done at #{Time.now}"
end

# create random Orders
restaurants.each do |restaurant|
  create_orders_for_restaurant(restaurant)
  sleep 1
end

# create default User
user = User.new(email: 'admin@test.local', full_name: 'Admin', role: 'system', username: 'admin')
user.password = '123456'
user.password_confirmation = '123456'
user.save!
