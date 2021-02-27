defmodule RocketpayWeb.UsersView do
  alias Rocketpay.{User, Account}

  def render("create.json", %{
    user: %User{account: %Account{} = account} = user
  }) do
    %{
      message: "User created",
      user: %{
        id: user.id,
        name: user.name,
        nickname: user.nickname,
        account: %{
          id: account.id,
          balance: account.balance
        }
      }
    }
  end
end
