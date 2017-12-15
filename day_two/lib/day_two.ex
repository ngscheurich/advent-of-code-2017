defmodule DayTwo do
  def solve, do: solve(input)

  def solve(input) do
    generate_matrix(input)
    |> Enum.map(fn row -> difference(row) end)
    |> Enum.reduce(fn (a, acc) -> a + acc end)
  end

  defp generate_matrix(input) do
    input
    |> String.split("\n", trim: true)
    |> Enum.map(fn a -> String.split(a, "\t") end)
    |> Enum.map(fn a ->
      Enum.map(a, fn b -> String.to_integer(b) end)
    end)
  end

  defp difference(row) do
    largest = largest(row)
    smallest = smallest(row)

    largest - smallest
  end

  defp largest([head | []]), do: head

  defp largest([head | tail]) do
    list =
      case head > List.first(tail) do
        true -> List.replace_at(tail, 0, head)
        false -> tail
      end

    largest(list)
  end

  defp smallest([head | []]), do: head

  defp smallest([head | tail]) do
    list =
      case head < List.first(tail) do
        true -> List.replace_at(tail, 0, head)
        false -> tail
      end

    smallest(list)
  end

  defp input do
    File.read!("data/input.txt")
  end
end
