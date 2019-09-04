Rails.application.routes.draw do

  get 'members/index' => "members#index"
  get "members/registers" => "members#registers"
  post "members/create" => "members#create"
  post "members/:id/destroy" => "members#destroy"
get "members/:id/edit" => "members#edit"
post "members/:id/update" => "members#update"
get "signin" => "members#signin_form"
post "signin" => "members#signin"
post "signout" => "members#signout"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "cancer/top" => "cancer#top"
  get "cancer/registers" => "cancer#registers"
  post "cancer/create" => "cancer#create"
  post "cancer/:id/destroy" => "cancer#destroy"
  get "cancer/:id/edit" => "cancer#edit"
  post "cancer/:id/update" => "cancer#update"


end
