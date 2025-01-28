```elixir
list = [1, 2, 3, 4, 5]

Enum.reduce(list, 0, fn x, acc ->
  if rem(x, 2) == 0 do
    acc + x
  else
    acc
  end
  #Added return
  return acc
end)
```

```elixir
list = [1, 2, 3, 4, 5]

Enum.reduce(list, 0, fn x, acc ->
  rem(x, 2) == 0 ? acc + x : acc
end)
```