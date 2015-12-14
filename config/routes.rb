Rails.application.routes.draw do
  root 'anagram#index'
  post '/check', to: 'anagram#verify'
end
