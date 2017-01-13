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
	if(findFirstVowel(sWord) == -1)
	{
		return sWord + "ay";
	}
	else if(findFirstVowel(sWord) == 0)
	{
		return sWord + "way";
	}
	else if(sWord.substring(0,2).equals("qu"))
	{
		return sWord.substring(2,sWord.length()) + "qu" + "ay";
	}
	else if(findFirstVowel(sWord.substring(0, 1)) == -1)
	{

		return sWord.substring(findFirstVowel(sWord),sWord.length()) + sWord.substring(0, findFirstVowel(sWord)) + "ay";
	} 
	else
	{
		return "ERROR!";
	}
}
