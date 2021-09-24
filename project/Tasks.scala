import sbt.Opts.compile
import sbt._
import scala.sys.process.Process

object AntlrTasks {
  lazy val runAntlr: TaskKey[Seq[File]] = taskKey[Seq[File]](s"Run antlr *.g4 scripts")
  lazy val gRun = taskKey[Unit]("Run ")

  runAntlr := {

    Process("java", Seq(""))

    Seq.empty
  }


  // > gRun [program...] {options}
  // options = -gui
  //
  gRun := {

  }
}

object CoffeeLangTasks {
  lazy val runScript = taskKey[Unit]("Run coffee script")
}