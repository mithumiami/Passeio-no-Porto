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
    get 'about' => 'homes#about', as: 'about'
    resources :posts, only: [:create, :new, :edit, :update, :index, :show]
    resources :users, only: [:edit, :update, :show]
    get '/users/:id/check' => 'users#check', as: 'check'         #退会確認画面
    patch '/users/:id/goodbye' => 'users#goodbye', as:'goodbye'    #退会処理（ステータスの更新）
  end
end
