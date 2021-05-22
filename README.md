# README

# Getting Started

1. Install Ruby 2.7.2
2. bundle install
3. rake db:create
4. rake db:migrate

# TODO

- [x] JSON API endpoint for books
- [x] Each library has a limited selection of books
- [x] Each book can be checkout out or available
- [x] Each book in the response should indicate if they are available or, if they are checked out,
- [x] Have some reference back to the user who checked them out


There are lots of ways this could be implemented, or additional requirements we could dream up, but
I'd encourage you to keep it as simple as you can to avoid feeling stuck, while still feeling like
this would be okay to ship to production as your first endpoint in a new product. We're trying to
get a general sense of how you write code, how you write tests and how you model data, but we're not
expecting anything resembling the maturity of a full-fledged product.
