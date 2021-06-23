# this has to be launched in the console with load 'app/services/allocator_script.rb'

# best practice Pierre: declare a class and then launch the method on the class
# you shouldn't have methods not inside a class

#############################
###### FIRST METHOD #########
#############################

# STEP #1 - grant all first choices that are not disputed

# SELECT cities.name, cities.nb_seats, count(choices.id) 
# FROM cities INNER JOIN choices ON cities.id = choices.city_id 
# WHERE choices.rank = 1 
# GROUP BY cities.name, cities.nb_seats;

p Choice.all.count
grantable_first_choices = Choice.all.select { |choice| choice.rank == 1}
p grantable_first_choices.size


# STEP #2 - do the same for second to last choices

# STEP #3 - Use brute force for remanining possibilites


#############################
###### SECOND METHOD ########
#############################

# brute force only (see if it crashes)

#############################
######  THIRD METHOD ########
#############################

# STEP #1 - grant all first choices that are not disputed

# STEP #2 - do the same for second to last choices

# STEP #3 - rank remaining students
# a student has a high rank if he/she asked for cities that many people asked for. 
# As these students run the risk of having a consequent impact on the sum of distances, we give them in priority one of their first choices

#############################
######  FOURTH METHOD #######
#############################

# think about other ways to allocate cities (apart from steps #1 & #2)