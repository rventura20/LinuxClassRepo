/* 
 * This program demonstrates how you can write code that
 * uses the standard Linux "Shell Input and Output Redirections"
 * a.k.a stdin, stdout, stderr
 *
 * You can just compile and run this program like
 * 
 * root@server$ javac StdinStdoutStderr
 * root@server$ java StdinStdoutStderr
 * Pass a value to stdin . . .
 * Hello<ENTER>
 * You entered : Hello
 * This is an error message
 *
 * OR you can run it like this
 * root@server$ cat input.txt
 * Hello
 * root@server$ java StdinStdoutStderr < input.txt 1> stdout.log 2> stderr.log
 * root@server$ cat stdout.log
 * Pass a value to stdin . . .
 * You entered : Hello
 * root@server$ cat stderr.log
 * This is an error message
 *
 */
import java.util.Scanner;

public class StdinStdoutStderr{
	private static final int FOUR = 4;

	public static void main(String[] args){

		System.out.println("Pass a value to stdin . . .");
		Scanner scanner = new Scanner(System.in);
		String input = scanner.next();
		scanner.close();
		
		System.out.println("You entered : " + input );

		// no error happened, I'm just showing you System.err
		// in case you've never seen it.
		System.err.println("This is an error message");
	}
}
