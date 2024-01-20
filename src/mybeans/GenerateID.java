package mybeans;

import java.util.Random;

public class GenerateID {
	String generate;

	public void SetID() {
		String alphabet = "0123456578098055";
		StringBuilder sb = new StringBuilder();
		Random random = new Random();
		int length = 7;
		for (int i = 0; i < length; i++) {
			int index = random.nextInt(alphabet.length());
			char randomChar = alphabet.charAt(index);
			sb.append(randomChar);
		}
		generate = sb.toString();
	}

	public String getID() {
		return "ANO "+generate;
	}
	
	public String getIDCo() {
		return "CO "+generate;
	}
	
}
