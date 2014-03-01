This is some fairly simple Java and JNI to implement using NSLog the parts of a java.io.PrintStream that you would want to
do debug println's on. I wrote it off a forum list post where it said tht normal java System.out println's no longer went
to console so you could view them with Console.app.
I recently added them into my HalfPipe application when I was having debug problems.
For my debugging I ended up using...
		System.setOut(us.hall.osx.LogOut.getInstance());
		System.setErr(us.hall.osx.LogOut.getInstance());
You would probably want to manage it without redirecting the System streams but this had been giving me problems. 
To run it from an appbundler derived java application you would put the dylib in the MacOS directory along with
the launcher executable. The java would been to be in classpath. 

Anyhow, if you want to get back your debug println's for application code this should do it.