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
-- ----------------------------------------------------------------------------
local tex_utils = {}
tex_utils.in_mathzone = function()  -- math context detection
  return vim.fn['vimtex#syntax#in_mathzone']() == 1
end
tex_utils.in_text = function()
  return not tex_utils.in_mathzone()
end

return {
  -- Example: italic font implementing visual selection
  s({trig = "tii", dscr = "Expands 'tii' into LaTeX's textit{} command."},
    fmta("\\textit{<>}",
      {
        d(1, get_visual),
      }
    )
  ),
  s({trig = "([^%a])mm", wordTrig = false, regTrig = true},
   fmta(
     "<>$<>$",
     {
       f( function(_, snip) return snip.captures[1] end ),
       d(1, get_visual),
      }
    ),
    {condition = tex_utils.in_text}
  ),
}
