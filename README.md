# User actions

1. See all restaurants - C[R]UD - #all - localhost:3000/restaurants - index
2. See details about one restaurant - C[R]UD - #find - localhost:3000/restaurants/:id - show
3. Create a restaurant (Show form) - [C]RUD - #new -> #save, #create  - localhost:3000/restaurants/new - new
3.1. Create a restaurant (Receive form) - [C]RUD - #new -> #save   - POST localhost:3000/restaurants - create
4. Update a restaurant (Show form) - CR[U]D - #find - GET localhost:3000/restaurants/:id/edit - edit
4.1. Update a restaurant (Receive form) - CR[U]D - #find -> #update -  PATCH localhost:3000/restaurants/:id - edit
6. Destroy a restaurant - CRU[D] - #find -> #delete -  DELETE localhost:3000/restaurants/:id - destroy