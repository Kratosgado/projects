import javax.swing.*;
public class SimpleWindow extends JFrame {
	public SimpleWindow() {
		final int WINDOW_WIDTH = 350;
		final int WINDOW_HEIGHT = 250;

		//create a window
		//JFrame window = new JFrame();
		//set the title
		setTitle("A simple window");
		//set the size of the window
		setSize(WINDOW_WIDTH, WINDOW_HEIGHT);
		//specify what happens when the close button is clicked
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		//display the window
		setVisible(true);
	}
}
