import javax.swing.*;

public class KiloConverter extends JFrame {
	private JPanel panel;
	private JLabel messageLabel;
	private JTextField kiloTextField;
	private JButton calcButton;
	private final int WINDOW_WIDTH = 310;
	private final int WINDOW_HEIGHT = 100;

	//constructor
	public KiloConverter(){
		//set window title
		setTitle("Kilometer Converter");
		//set the size of the window
		setSize(WINDOW_WIDTH, WINDOW_HEIGHT);
		//specify what happens when the xloss button is clicked
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		//build the panel and add it to the frame
		buildPanel();
		//add the panel to the frame's content pane
		add(panel);
		//display the window
		setVisible(true);
	}

	/*
	 * The buildPanel method adds a label, a text filed and a buton to a panel
	 */
	private void buildPanel(){
		//create a label to display instructions
		messageLabel = new JLabel("Enter a distance in kilometers");
		//create a text filed 10 characters wide
		kiloTextField = new JTextField(10);
		//create a button with the caption "Calculate".
		calcButton = new JButton("Calculate");
		//create a JPanel object and let the panel field reference it.
		panel = new JPanel();
		//Add the label, text field and button components to the panel.
		panel.add(messageLabel);
		panel.add(kiloTextField);
		panel.add(calcButton);
	}
	/*
	 * main method
	 */
	public static void main(String[] args) {
		new KiloConverter();
	}
}