rmarkdown::render_site()
shell("rename _site docs")# rename directory _site/ to docs
file.copy("index.Rmd","readme.md",overwrite = T)# copy index.Rmd (CV) to readme.md


