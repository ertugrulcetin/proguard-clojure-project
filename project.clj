(defproject proguard-app "0.1.0-SNAPSHOT"
  :description "Simple Clojure project that using ProGuard"
  :url "http://example.com/FIXME"
  :license {:name "EPL-2.0 OR GPL-2.0-or-later WITH Classpath-exception-2.0"
            :url "https://www.eclipse.org/legal/epl-2.0/"}
  :dependencies [[org.clojure/clojure "1.10.1"]]
  :repl-options {:init-ns proguard-app.core}
  :main proguard-app.core
  :aot :all
  :omit-source true
  :uberjar-name "app.jar"
  )
