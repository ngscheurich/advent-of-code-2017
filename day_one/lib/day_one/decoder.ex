defmodule DayOne.Decoder do
  def decode([]), do: 0

  def decode(list) do
    list
    |> filter()
    |> sum()
  end

  def filter(list) do
    filter(list, [List.first(list)])
  end

  def filter([], keep), do: keep

  def filter([head | []], keep) do
    case head == List.first(keep) do
      true -> keep
      false -> Enum.drop(keep, 1)
    end
  end

  def filter([head | tail], keep) do
    keep =
      case head == List.first(tail) do
        true -> keep ++ [head]
        false -> keep
      end

    filter(tail, keep)
  end

  def string_to_list(str) do
    String.trim(str, "\n")
    |> String.split("", trim: true)
    |> Enum.map(fn x -> String.to_integer(x) end)
  end

  defp sum([]), do: 0
  defp sum(list), do: Enum.reduce(list, fn (x, acc) -> x + acc end)
end
