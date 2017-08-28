#
# => goals :data persistence, testing storage of a global variable, 
# => implementing hashes to store all multiple variables of input.+   
#
#      * variables of the pizza 
#      * pizzas in order hashes  
#      # Delivery address is a variable the order and not the pizzas
#
#   BUILD DATA:
# - Either we need to design the full datastructure at once (messy, error prone) OR
    # Start and add to it 
#
#   page 1: order get all pizaa variable names and iterate in view 
#  	  - Build a form to get initial pizza values  (REQUESTS)
#     - For the confirmation page we loop through pizza variables again
#     - And this time the values we just recieved on the last page
#     -  ONE PIZZA DONE
#     - Redirect back to the index page to start a new pizza 
#     - input delivery_address on THIRD PAGE     


$global_variable = {}

requests = {"pickem"=>{"NotCat"=>"NotCat", "Beef"=>"Beef", "Eggplant"=>"Eggplant", "Onjion"=>"Onjion", "Olives"=>"Olives", "Moozerr
ella"=>"Moozerrella", "Prova_lone"=>"Prova_lone", "Fermunda"=>"Fermunda", "HandTouched"=>"HandTouched", "Small"=>"Small"
}, "address"=>"1234 E-z Ave."}

confirmations = {"pickem"=>{"NotCat"=>"NotCat", "Swausage"=>"on", "Beef"=>"Beef", "Eggplant"=>"Eggplant", "Onjion"=>"on", "Olives"=>"Oli
ves", "Moozerrella"=>"Moozerrella", "MUH_rican"=>"on", "Prova_lone"=>"Prova_lone", "Fermunda"=>"on", "Thin"=>"Thin", "Sm
all"=>"Small"}, "address"=>"1234 E-z Ave."}