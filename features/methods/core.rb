
def open_browser url
  if url == ""
    visit ""
  else
    visit(url)
  end
end