-- This is the `get_visual` function I've been talking about.
-- ----------------------------------------------------------------------------
-- Summary: If `SELECT_RAW` is populated with a visual selection, the function
-- returns an insert node whose initial text is set to the visual selection.
-- If `SELECT_RAW` is empty, the function simply returns an empty insert node.
local get_visual = function(args, parent)
  if (#parent.snippet.env.SELECT_RAW > 0) then
    return sn(nil, i(1, parent.snippet.env.SELECT_RAW))
  else  -- If SELECT_RAW is empty, return a blank insert node
    return sn(nil, i(1))
  end
end

local in_mathzone = function()
  -- The `in_mathzone` function requires the VimTeX plugin
  return vim.fn['vimtex#syntax#in_mathzone']() == 1
end

return {
  -- Combining text and insert nodes to create basic LaTeX commands
  s(
    {trig="tt", dscr="Expands 'tt' into '\texttt{}'"},
    fmta(
      "\\texttt{<>}",
      { i(1) }
    )
  ),
  s({trig = 'ff'},
    fmta(
      [[<>\frac{<>}{<>}]],
      {
        f( function(_, snip) return snip.captures[1] end ),
        i(1),
        i(2)
      }
    ),
    {condition = in_mathzone}
  ),
  s({trig = '([^%a])ee', regTrig = true, wordTrig = false},
    fmta(
      "<>e^{<>}",
      {
        f( function(_, snip) return snip.captures[1] end ),
        d(1, get_visual)
      }
    )
  ),
  s(
    {trig="eq", dscr="A LaTeX equation environment"},
    fmta(
      [[
          \begin{equation}
            <>
            \label{eq:<>}
          \end{equation}
      ]],
      { i(2), i(1) }
    )
  ),
  -- A fun zero subscript snippet
  s({trig = '([%a%)%]%}])00', regTrig = true, wordTrig = false, snippetType="autosnippet"},
    fmta(
      "<>_{<>}",
      {
        f( function(_, snip) return snip.captures[1] end ),
        t("0")
      }
    )
  ),
  s({trig = 'sd', snippetType="autosnippet", wordTrig=false},
    fmta("_{\\mathrm{<>}}",
      { d(1, get_visual) }
    ),
    {condition = in_mathzone}
  ),
}

