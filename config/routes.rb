Rails.application.routes.draw do
  resources :fabrics do
    resources :fabric_variants, shallow: true, only: [:index]
    resources :fabric_variant_suppliers, shallow: true, only: [:index]
  end
  resources :fabric_variants, shallow: true
  resources :fabric_variant_suppliers, shallow: true

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
