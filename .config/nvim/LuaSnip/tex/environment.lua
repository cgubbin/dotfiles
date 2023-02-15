local line_begin = require("luasnip.extras.expand_conditions").line_begin

return {
  s({trig="env", snippetType="autosnippet"},
    fmta(
      [[
        \begin{<>}
            <>
        \end{<>}
      ]],
      {
        i(1),
        i(2),
        rep(1),  -- this node repeats insert node i(1)
      }
    )
  ),
  s({trig = "h1", dscr="Top-level section"},
    fmta(
      [[\section{<>}]],
      { i(1) }
    ),
    {condition = line_begin}  -- set condition in the `opts` table
  ),

  s({trig="new", dscr="A generic new environmennt"},
    fmta(
      [[
        \begin{<>}
            <>
        \end{<>}
      ]],
      {
        i(1),
        i(2),
        rep(1),
      }
    ),
    {condition = line_begin}
  ),
}

