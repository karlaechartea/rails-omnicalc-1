Rails.application.routes.draw do
 # Routes for square calculation
 get "/square/new", to: "calculations#new_square"
 get "/square/result", to: "calculations#result_square"

 # Routes for square root calculation
 get "/square_root/new", to: "calculations#new_square_root"
 get "/square_root/result", to: "calculations#result_square_root"

 # Routes for random number generation
 get "/random/new", to: "calculations#new_random"
 get "/random/result", to: "calculations#result_random"

 # Routes for monthly payment calculation
 get "/payment/new", to: "calculations#new_payment"
 get "/payment/result", to: "calculations#result_payment"

 # Root route
 root "calculations#new_square"
end
