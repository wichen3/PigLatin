import java.util.*;

public void setup() {
	String lines[] = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) {
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
}
public int findFirstVowel(String sWord)
{
	int indexVowel = -1;
	for(int  i = 0; i < sWord.length(); i++)
	{
		String c = sWord.substring( i, i+1);
		if(c.equals("a") || c.equals("e") || c.equals("i") || c.equals("o") || c.equals("u"))
		{
			indexVowel = i;
			break;
		}
	}
	return indexVowel;
}

public String pigLatin(String sWord)
{
	String pig = new String();
	if(findFirstVowel(sWord) == -1)
	{
		return sWord + "ay";
	}
	if(findFirstVowel(sWord) == 0)
	{
		return sWord + "way";
	}
	if(sWord.charAt(0) == 'q' && sWord.charAt(1) == 'u')
	{
		return sWord.substring(2,sWord.length()) + "qu" + "ay";
	}
	if(findFirstVowel(sWord.substring(0)) == -1)
	{
		return sWord.substring(1,sWord.length()) + sWord.substring(0) + "ay";
	}
}
