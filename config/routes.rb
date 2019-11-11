Rails.application.routes.draw do
  Rails.application.routes.draw do
    get 'flats/:id', to: 'flats#show', as: :flat
    root to: 'flats#index'
  end
end
