Rails.application.routes.draw do
  devise_for :admins, skip: [:registrations, :passwords], controllers: {
    sessions: 'admins/sessions'
  }

  namespace :admin do
    get 'top' => 'homes#top', as: 'top'
  end

  devise_for :users, skip: [:passwords], controllers: {
    sessions: 'devise/sessions',
    registrations: 'devise/registrations'
  }

  scope module: :public do
    root to: 'homes#top'
    resources :posts, only: [:create, :new, :edit, :update, :index, :show]
  end
end
