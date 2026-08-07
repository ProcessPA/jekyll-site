# jekyll-seo-tag hardcodes a <meta name="generator" content="Jekyll vX"> tag in its
# template. We don't want to advertise the generator/version, so strip it from the
# rendered HTML of every page and document after rendering.
Jekyll::Hooks.register [:pages, :documents], :post_render do |doc|
  next unless doc.output_ext == ".html" && doc.output
  doc.output = doc.output.sub(%r{[ \t]*<meta name="generator"[^>]*>\r?\n?}, "")
end
