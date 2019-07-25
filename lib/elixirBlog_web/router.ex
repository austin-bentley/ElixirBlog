defmodule ElixirBlogWeb.Router do
  use ElixirBlogWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  # auth routes
  scope "/", ElixirBlogWeb do
    pipe_through [:browser, ElixirBlogWeb.Plugs.Auth]

    resources "/blog", PostController, only: [:create, :new, :delete]
    delete "/sign-out", SessionController, :delete
  end

  # guest routes
  scope "/", ElixirBlogWeb do
    pipe_through [:browser, ElixirBlogWeb.Plugs.Guest]

    get "/blog/:id", PostController, :show
    resources "/registrations", UserController, only: [:create, :new]
    get "/sign-in", SessionController, :new
    post "/sign-in", SessionController, :create
  end

  # shared routes
  scope "/", ElixirBlogWeb do
    pipe_through [:browser]
    get "/", PageController, :index
  end
end

# delete still broken
