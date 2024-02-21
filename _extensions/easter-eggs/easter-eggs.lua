

local function ensure_html_deps()
  quarto.doc.add_html_dependency({
    name = 'eastereggsjs',
    version = '1.0.0',
    scripts = {
        "resources/easter-eggs-collection.js",
      }
  })
end

if quarto.doc.is_format("html:js") then
    ensure_html_deps()
  return pandoc.RawInline(
        'html',
        "import collection from 'easter-egg-collection'"
  );
else
end
