Rails.application.routes.draw do
      root "calculator#add" # Default to the add form
    get "/add", to: "calculator#add"
    get "/wizard_add", to: "calculator#wizard_add"
    get "/subtract", to: "calculator#subtract"
    get "/wizard_subtract", to: "calculator#wizard_subtract"
    get "/multiply", to: "calculator#multiply"
    get "/wizard_multiply", to: "calculator#wizard_multiply"
    get "/divide", to: "calculator#divide"
    get "/wizard_divide", to: "calculator#wizard_divide"
end
