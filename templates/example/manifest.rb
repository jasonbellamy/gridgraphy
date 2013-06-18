description "Examples of each type of grid included in gridgraphy."

grids = [
  "center",
  "full",
  "left",
  "right"
]

directory "examples"
grids.each do |name|
  directory "examples/#{name}"
  stylesheet "examples/#{name}/config/_config.sass", :to => "examples/#{name}/config/_config.sass"
  stylesheet "examples/#{name}/screen.sass",         :to => "examples/#{name}/screen.sass"
  html "examples/#{name}/index.html",                :to => "examples/#{name}/index.html"
end


help %Q{
  Please see the gridgraphy website for detailed documentation:
    https://github.com/jasonbellamy/gridgraphy
}

welcome_message %Q{
  Please see the gridgraphy website for detailed documentation:
    https://github.com/jasonbellamy/gridgraphy

  Please edit config/_config.sass to set / change the options for the generated grid.
}
