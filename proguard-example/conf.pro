# Our uberjar
-injars app.jar
# Our output direcotry
-outjars app-obf.jar

# Before Java 9, the runtime classes were packaged in a single jar file.
#-libraryjars <java.home>/lib/rt.jar
# As of Java 9, the runtime classes are packaged in modular jmod files.
#e.g. -libraryjars /Users/username/Library/Java/JavaVirtualMachines/adopt-openjdk-11.0.9.1/Contents/Home/jmods/java.base.jmod
-libraryjars <java.home>/java.base.jmod
-libraryjars <java.home>/java.desktop.jmod
-libraryjars <java.home>/java.sql.jmod
-libraryjars <java.home>/java.xml.jmod
-libraryjars <java.home>/jdk.unsupported.jmod


# ProGuard options. Detailed explanation here https://www.guardsquare.com/en/products/proguard#manual/usage.html
-dontskipnonpubliclibraryclassmembers
-dontnote
-printseeds

-dontwarn java.lang.**

# What we will be doing is obfuscating, shrinking and optimizing the jar. 
# If you experience any problems start out with obfuscation and add the 
# -dontoptimize  and the -dontshrink flags and see if it works.

# Tell proguard to leave the clojure runtime alone
# You would need to add any other classes that you wish to preserve here.
-keep class clojure.** { *; }

# Keep our core__init class
-keep class proguard_app.core__init {
    public static void load();
}

# Keep classes that contain a main method (otherwise we won't be able to run the jar)
-keepclasseswithmembers public class * {
    public static void main(java.lang.String[]);
}
