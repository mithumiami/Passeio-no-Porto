Rails.application.routes.draw do
  devise_for :admins, skip: [:registrations, :passwords], controllers: {
    sessions: 'admins/sessions'
  }

  namespace :admin do
    get 'top' => 'homes#top', as: 'top'
    resources :areas, only: [:new, :index, :create, :destroy]
    resources :genres, only: [:create, :new, :index, :destroy]
    resources :users, only: [:index, :edit, :show, :destroy, :update]
    resources :posts, only: [:index, :edit, :show, :destroy, :update]
    resources :contacts, only: [:index, :show, :create]


  end

  devise_for :users, skip: [:passwords], controllers: {
    sessions: 'devise/sessions',
    registrations: 'devise/registrations'
  }

  scope module: :public do
    root to: 'homes#top'
    get 'about' => 'homes#about', as: 'about'
    resources :genres, only: [:index, :show]
    resources :areas, only: [:index, :show]
    resources :posts, only: [:create, :new, :edit, :update, :index, :show, :destroy]do
    resource :likes, only: [:create, :destroy]end
    resources :users, only: [:edit, :update, :show]
    get '/users/:id/check' => 'users#check', as: 'check'         #退会確認画面
    patch '/users/:id/goodbye' => 'users#goodbye', as:'goodbye'    #退会処理（ステータスの更新）
    resources :contacts, only: [:new, :create, :index]
    get 'search' => 'posts#search'
    
    #get '/contacts/thanks' => 'contacts#thanks', as:'thanks'    #問い合わせ送信処理
  end
end
