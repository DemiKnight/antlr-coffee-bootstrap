ThisBuild / scalaVersion := "3.0.2"
ThisBuild / name := "Coffee-Antlr Bootstrap"
ThisBuild / version := "0.1"
ThisBuild / libraryDependencies += {
  "org.antlr" % "antlr4-runtime" % "4.9.2"
}


val mainAntlrFile = "Coffee.g4"

lazy val runAntlr = taskKey[Unit](s"Run antlr for $mainAntlrFile")


lazy val antlr = (project in file("antlr"))
  .settings(
    name := "Antlr Definitions",
  )

lazy val coffeeLang = (project in file("coffee"))
  .settings(
    name := "Coffee Lang source"
  )