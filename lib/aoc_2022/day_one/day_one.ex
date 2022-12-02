defmodule Aoc2022.DayOne do
  @doc """
  Finds which Elf that carries the most calories
  and returns the total amount of the calories for that Elf.

  ## Examples

      iex> main("some-newlined-separed-string")
      1337
  """
  @spec main(binary()) :: integer()
  def main(input) do
    input
    |> parse_input()
    |> sum_each_elf()
    |> find_highest_kcal()
  end

  defp parse_input(input) do
    input
    |> String.split("\n")
    |> Enum.chunk_by(&(&1 == ""))
    |> Enum.reject(&(&1 == [""]))
  end

  defp sum_each_elf(list_of_elfs_kcals) do
    Enum.reduce(list_of_elfs_kcals, [], fn x, acc ->
      summed_kcal_for_elf = x |> Enum.map(&String.to_integer/1) |> Enum.sum()
      acc ++ [summed_kcal_for_elf]
    end)
  end

  defp find_highest_kcal(list_of_summed_kcals) do
    Enum.max(list_of_summed_kcals)
  end
end

content = Path.expand("./input.txt", "lib/aoc_2022/day_one") |> File.read!()

IO.inspect(Aoc2022.DayOne.main(content))
