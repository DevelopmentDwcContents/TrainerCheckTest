#!/bin/sh

# delete unstaged changes
git checkout -- .

# move to main branch
git switch main

# resetup application
rails db:migrate:reset
rails db:seed

# move to test branch
git switch Both-1

# test
