# frozen_string_literal: true

# this has to be launched in the console with load 'app/services/allocator_script.rb'

# best practice Pierre: declare a class and then launch the method on the class
# (you shouldn't have methods not inside a class)

# the methods I considered at first are not working / are not efficient at all
# indeed, by granting all first choices that are not disputed, we only allocate a city to 3 students
# for 1st + 2nd non-disputed choices, we allocate 4 cities...

# NEXT
# this problem can be solved with a 'minimum cost maximum flow' algorithm with a graph library
# Python has a library for this (networkx), currently investigating with Arnaud
# I couldn't find the equivalent in Ruby. Relax4 seems to be an option but it's not enough documented
# I started digging into it in the min_cost_flow file (not finished)

# Reminder: other methods that were to be investigated
# compute the number of possibilities with brute force to see if this could be considered
# rank students (according to the total 'weight' of their wishes) & cities (according to the weighted average of wishes it has)