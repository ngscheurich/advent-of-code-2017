defmodule DayOneTest do
  use ExUnit.Case
  doctest DayOne

  test "decodes sequences correctly" do
    assert DayOne.decode([1, 1, 2, 2]) == 3
    assert DayOne.decode([1, 1, 1, 1]) == 4
    assert DayOne.decode([1, 2, 3, 4]) == 0
    assert DayOne.decode([9, 1, 2, 1, 2, 1, 2, 9]) == 9
  end
end
