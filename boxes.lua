-- Wrap Pandoc Divs with classes into LaTeX tcolorbox environments
-- Usage in Markdown:
-- ::: note
-- **Coach's Note:** Keep easy days easy.
-- :::

local function has_class(el, class)
  for _, c in ipairs(el.classes) do
    if c == class then return true end
  end
  return false
end

function Div(el)
  local env
  if has_class(el, "note") then env = "notebox" end
  if has_class(el, "tip") then env = "tipbox" end
  if has_class(el, "pullquote") then env = "pullquote" end
  if env then
    return { pandoc.RawBlock('latex','\\begin{'..env..'}'), table.unpack(el.content), pandoc.RawBlock('latex','\\end{'..env..'}') }
  end
end
