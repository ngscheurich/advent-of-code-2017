defmodule DayTwoTest do
  use ExUnit.Case
  doctest DayTwo

  test "calculates the correct checksum" do
    input = """
    5\t1\t9\t5
    7\t5\t3
    2\t4\t6\t8
    """

    assert DayTwo.solve(input) == 18
  end
end
