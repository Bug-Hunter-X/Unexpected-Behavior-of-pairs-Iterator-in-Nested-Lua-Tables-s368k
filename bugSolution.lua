local function foo(t)
  local t_copy = {}
  for k, v in pairs(t) do
    t_copy[k] = v
  end

  for k, v in pairs(t_copy) do
    if type(v) == "table" then
      foo(v)
    end
  end
end

local t = {a = 1, b = {c = 2, d = {e = 3}}}
foo(t)