package us.hall.osx;

import java.io.PrintStream;

public class LogOutTest {

	public static void main(String[] args) {
		PrintStream sys = System.out;
		sys.println("java system out");
		System.setOut(LogOut.getInstance());
		System.out.println("logout system out");
		sys.println("\t"+"*** Types ***");
		sys.println("boolean:");
		boolean b = true;
		sys.println(b);
		System.out.println(b);
		sys.println();
		sys.println("character:");
		char c = 'a';
		sys.println(c);
		System.out.println(c);
		sys.println();
		sys.println("integer:");
		int i = 1;
		sys.println(i);
		System.out.println(i);
		sys.println();
		sys.println("long:");
		long l = 1L;
		sys.println(l);
		System.out.println(l);
		sys.println();
		sys.println("float:");
		float f = 1f;
		sys.println(f);
		System.out.println(f);
		sys.println();
		sys.println("double:");
		double d = 1d;
		sys.println(d);
		System.out.println(d);
	}
}