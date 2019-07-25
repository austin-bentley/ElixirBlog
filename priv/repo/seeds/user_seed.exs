alias ElixirBlog.Repo
alias ElixirBlog.Accounts.User
alias Comeonin.Bcrypt

Repo.insert! %User {
  username: "User1!",
  encrypted_password: Bcrypt.hashpwsalt("cars1")
}

Repo.insert! %User {
  username: "User2!",
  encrypted_password: Bcrypt.hashpwsalt("cars2")
}

Repo.insert! %User {
  username: "User3!",
  encrypted_password: Bcrypt.hashpwsalt("cars3")
}
