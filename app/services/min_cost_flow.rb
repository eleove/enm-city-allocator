# frozen_string_literal: true

require 'rubygems'
require 'relax4'

# A general network flow problem:

#      (2)          edges are directed ((1,2), (1,3), ...)
#     / | \         each edge has a cost and a capacity
#    /  |  \
#  (1)  |  (4)      the aim is to find the flow on each edge such that we
#    \  |  /        move four units of flow from (1) to (4) at minimum cost
#     \ | /
#      (3)

p Relax4.solve(
  demands: [-4, 0, 0, 4],
  start_nodes: [1, 1, 2, 2, 3],
  end_nodes: [2, 3, 3, 4, 4],
  costs: [2, 5, 3, 7, 1],
  capacities: [5, 2, 1, 2, 4]
) #=> [2, 2, 1, 1, 3]

# An assignment problem:

p Relax4.solve_assignment_problem(costs: [[nil, 8, 6, 12, 1],
                                          [15, 12, 7, nil, 10],
                                          [10, nil, 5, 14, nil],
                                          [12, nil, 12, 16, 15],
                                          [18, 17, 14, nil, 13]]) #=> [4, 2, 3, 0, 1]

# demand = -1 pour les students
# demand/capacity = nb_seats pour les cities
# demands should balance (sum to zero), or else the problem will be infeasible (but you can add a dummy node).
# :start_nodes = index of node at the start of each arc, where the first node is numbered 1.
# :end_nodes = index of node at the end of each arc, where the first node is numbered 1.
# cost = rank
# If you have more agents than tasks (or vice versa), you can add some columns (or rows) of zeros to the cost matrix.
# costs = square matrix with
    # n rows (one for each agent)
    # n columns (one for each task)
# a cost of +nil+ means that the corresponding assignment is not allowed
# negative costs are# allowed.

# 5 cities: 1) Aix 2) Bordeaux 3) Libourne 4) Marseille 5) Paris
# a student makes 3 choices

# costs = [[1, 2, 3, 0, 0] # student 1 --> 1) Aix 2) Bordeaux 3) Libourne
#          [3, 0, 0, 2, 3] # student 2 --> 1) Paris, 2) Marseille, 3) Aix
#          [0,        ] 1 student 3 --> 1) Libourne 2) Paris 3) Bordeaux
#                     ]


