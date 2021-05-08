defmodule Decoder do
  @moduledoc """
  Documentation for `Decoder`.
  """



  def decoder() do

  end

  def encoder(text) do
  keys = ?a..?z
  values = ?z..?a
  instruction =
  keys
  |> Enum.zip(values)
  |> Map.new()
  |> Map.put(?\ ,?\ )

  text
    |> String.to_charlist()
    |> Enum.map(fn char -> instruction[char] end)
    |> List.to_string()
  end

end
