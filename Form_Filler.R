#Require: Docker Desktop (App)
#In Terminal
#docker run -d -p 4445:4444 selenium/standalone-chrome

library(RSelenium)

remDr <- RSelenium::remoteDriver(remoteServerAddr = "localhost",
                                 port = 4445L,
                                 browserName = "chrome")
remDr$open()

remDr$navigate("website address")
#remDr$screenshot(display = TRUE)

webElem <- remDr$findElement(using = "css", "[name = 'username']")
webElem$sendKeysToElement(list("username"))
webElem <- remDr$findElement(using = "css", "[name = 'password']")
webElem$sendKeysToElement(list("password", "\uE007"))

#click a button
webElem <- remDr$findElement(using = "css", "[class = 'class of entry button']")
webElem$clickElement()

#click submit
webElem <- remDr$findElement(using = "css", "[class = 'class of submit button']")
webElem$clickElement()

#click confirm
webElem <- remDr$findElement(using = "css", "[class = 'class of confirm button']")
webElem$clickElement()


