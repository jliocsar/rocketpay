defmodule RocketpayWeb.UsersView do
  alias Rocketpay.User

  def render("create.json", %{user: %User{} = user}) do
    %{
      message: "User created",
      user: %{
        id: user.id,
        name: user.name,
        nickname: user.nickname
      }
    }
  end
end
