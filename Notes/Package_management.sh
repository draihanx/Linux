##
## PACTREE
##

pactree packagename #Lists all the dependencies for packagename
pactree -d 1 packagename #shows dependencies in depth 1
pactree -r packagename #Shows reverse dependencies for packagename
man pactree #Helps to get more information 
#pactree will be found in the package pacman-contrib
#to install it--
sudo pacman -S pacman-contrib


##
## PACMAN
##
pacman -Rcns packagename #Remove packagename with it's all dependencies 
pacman -Qdtq #Shows the packages that don't depend on other packages aka unnecessary packages 