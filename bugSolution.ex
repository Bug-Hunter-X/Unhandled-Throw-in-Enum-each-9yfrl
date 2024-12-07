```elixir
list = [1, 2, 3, 4, 5]

try do
  Enum.each(list, fn x ->
    if x == 3 do
      throw(:three)
    else
      IO.puts(x)
    end
    IO.puts("Next number")
  end)
catch
  :three -> IO.puts("Exception :three caught")
  e -> IO.puts("An error occurred: #{inspect(e)}")
end
```