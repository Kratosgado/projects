import java.lang.Error;
import javax.swing.*;

public class Main {
	public static void main(String[] args) throws Error{
		final int WINDOW_WIDTH = 350;
		final int WINDOW_HEIGHT = 250;

		//create a window
		JFrame window = new JFrame();
		//set the title
		window.setTitle("A simple window");
		//set the size of the window
		window.setSize(WINDOW_WIDTH, WINDOW_HEIGHT);
		//specify what happens when the close button is clicked
		window.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		//display the window
		window.setVisible(true);
	}
}
