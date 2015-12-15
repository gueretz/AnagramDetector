Rails.application.routes.draw do
  root 'anagram#index'
  get '/how-to-use' , to: 'anagram#how_to_use'
  post '/check', to: 'anagram#verify'
end
