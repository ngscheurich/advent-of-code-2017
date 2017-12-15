defmodule DayTwoTest do
  use ExUnit.Case
  doctest DayTwo

  test "calculates the correct checksum" do
    input = """
    5 1 9 5
    7 5 3
    2 4 6 8
    """

    assert DayTwo.checksum(input) == 18
  end
end
