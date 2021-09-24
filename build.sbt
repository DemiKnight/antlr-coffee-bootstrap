ThisBuild / scalaVersion := "2.12.13"
ThisBuild / version := "0.1"
ThisBuild / developers := List(
  Developer(
    id = "DemiKnight",
    name = "Alex Knight",
    email = "alex@alexknight.co.uk",
    url = url("https://github.com/DemiKnight")
  )
)
ThisBuild / libraryDependencies ++= Seq(
  "org.antlr" % "antlr4" % "4.9.2"
)

lazy val core = (project in file ("."))
  .enablePlugins(Antlr4Plugin)
  .settings(
  name := "Coffee-Antlr Bootstrap",
//  sourceDirectories := Seq(
//    "antlr"
//  )
)