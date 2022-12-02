defmodule Aoc2022.DayOne.DayOneTest do
  use AOCWeb.ConnCase, async: true

  describe "main/1" do
    test "returns summed kcal for the elf that carries the most kcals" do
      input = ~s"""
      1000
      2000
      3000

      4000

      5000
      6000

      7000
      8000
      9000

      10000
      """

      assert 24000 = Aoc2022.DayOne.main(input)
    end
  end
end
