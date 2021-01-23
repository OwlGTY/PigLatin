public void setup() 
{
  String[] lines = loadStrings("words.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i = 0 ; i < lines.length; i++) 
  {
    System.out.println(pigLatin(lines[i]));
  }
}
public void draw()
{
        //not used
}
public int findFirstVowel(String sWord) {
int value = -1;
if (sWord.length()<0) {
  for (int i = 0; i < sWord.length(); i++) {
    if (sWord.substring(i,i+1) == "a" || sWord.substring(i,i+1) == "e" || sWord.substring(i,i+1) == "i" || sWord.substring(i,i+1) == "o" || sWord.substring(i,i+1) == "u") {
      value = i;
      break;
    }
  }
}
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
  return value;
}

public String pigLatin(String sWord) {
String pork = "";
  if (sWord.length()<0) {
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
  if(findFirstVowel(sWord) == -1)
  {
    pork = sWord + "ay";
  }
  else
  {
    pork = "ERROR!";
  }
}
return pork;
}
