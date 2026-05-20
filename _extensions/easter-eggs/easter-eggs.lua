

local function ensure_html_deps()
  local resources = {}

  -- Dynamically register all bundled images as dependency resources
  local script_dir = pandoc.path.directory(PANDOC_SCRIPT_FILE)
  local images_dir = pandoc.path.join({script_dir, "resources", "images"})
  local ok, files = pcall(pandoc.system.list_directory, images_dir)
  if ok and files then
    for _, filename in ipairs(files) do
      table.insert(resources, {
        path = pandoc.path.join({"resources", "images", filename}),
        name = pandoc.path.join({"images", filename})
      })
    end
  end

  quarto.doc.add_html_dependency({
    name = 'eastereggsjs',
    version = '1.0.0',
    scripts = {
        "resources/easter-eggs-collection.js",
      },
    resources = resources
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
