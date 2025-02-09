usethis::use_mit_license("Philéas Condemine")


# unlink("docs",T,T)
rmarkdown::clean_site(preview = FALSE)
file.copy("../cv_resume_EN/index.Rmd","./index_en.Rmd",overwrite = TRUE)
rmarkdown::render_site()

# file.rename("index.pdf","docs/cv_fr_Phileas_Condemine.pdf")# copy index.Rmd (CV) to readme.md
file.copy("index.pdf","cv_fr_Phileas_Condemine.pdf",overwrite = TRUE)# copy index.Rmd (CV) to readme.md
# file.copy("docs/cv_fr_Phileas_Condemine.pdf","cv_fr_Phileas_Condemine.pdf",overwrite = T)

system('git config --global user.email "phileas.condemine@gmail.com"')
system('git config --global user.name "Phileas Condemine"')

system("git add .")
system(sprintf('git commit -m "update %s"',Sys.Date()))
system("git push origin master")

print("
to publish the website on netim (phileascondemine.com),
open filezilla, connect to the hosting server,
copy the docs/ files in the public_www/ folder on the remote.
      ")
