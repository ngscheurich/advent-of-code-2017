defmodule DayOne.CLI do
  alias DayOne.Decoder

  def main(args) do
    args
    |> parse_args
    |> run
  end

  defp parse_args(args) do
    {parsed, _, _} =
      OptionParser.parse(args, switches: [file: :string])
    parsed
  end

  defp run([file: file]) do
    File.read!(file)
    |> Decoder.string_to_list()
    |> Decoder.decode()
    |> IO.puts()
  end
end
