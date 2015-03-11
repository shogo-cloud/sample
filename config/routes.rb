Rails.application.routes.draw do
  get 'top/index'

  root 'entries#index'
  get 'entries' => 'entries#index'
  get 'entries/new' => 'entries#new'
  post 'entries' => 'entries#create'
  get 'entries/rules' => 'rules#index'
  get 'entries/:id' => 'entries#update'

  resources :rules do
    collection do
    get 'flow_chart'
    get 'next'
    end
  end
  get 'about' => 'top#about'
end


