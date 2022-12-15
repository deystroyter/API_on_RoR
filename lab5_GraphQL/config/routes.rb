Rails.application.routes.draw do
  # for REST API:
  resources :resorts, :only => [:index, :show]    # REST-запросы-

  post '/graphql', to: 'graphql#execute'   # Graphql POST запросы-
  get '/graphql', to: 'graphql#execute'
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end
end