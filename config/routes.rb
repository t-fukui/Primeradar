Primeradar::Application.routes.draw do
  root 'top#index'

  resources :top, only: :index do
    collection do
      get :search
      get :search_prime
      get :search_twins_prime
    end
  end

  resources :prime, only: [] do
    collection do
      get :introduction_prime
      get :history_prime
      get :twins_prime
      get :largest_prime
      get :prime_triplet
      get :prime_quadruplet
      get :mersenne_number
      get :goldbachs_conjecture
      get :fermats_little_theorem
      get :prime_factorization
    end
  end

  get '*anything' => 'top#routing_error'
end
