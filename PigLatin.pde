public void setup() 
{
  //String[] lines = loadStrings("words.txt");
  String[] lines = {"beast","dough","happy","question","star","three","eagle","try"};
  for (int i = 0 ; i < lines.length; i++) 
  {
    System.out.println(pigLatin(lines[i]));
  }
}
public void draw()
{
        //not used
}
public int findFirstVowel(String sWord)
{
//precondition: sWord is a valid String of length greater than 0.
for(int i = 0; i < sWord.length(); i++)
       if(sWord.charAt(i) == 'a' || sWord.charAt(i) == 'e' || 
          sWord.charAt(i) == 'i' || sWord.charAt(i) == 'o' || sWord.charAt(i) == 'u')
      return i;
  return -1;
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
  if(findFirstVowel(sWord) == -1)
  {
    return sWord + "ay";
  }
  if(sWord.charAt(0) == 'a' || sWord.charAt(0) == 'e' || 
     sWord.charAt(0) == 'i' || sWord.charAt(0) == 'o' || sWord.charAt(0) == 'u')
  {
    return sWord + "way";     
  }
  if(sWord.substring(0,2) == "qu") 
  {
    return sWord.substring(2,sWord.length()) + "quay";
  }
  if(sWord.charAt(0) != 'a' || sWord.charAt(0) != 'e' || 
     sWord.charAt(0) != 'i' || sWord.charAt(0) != 'o' || sWord.charAt(0) != 'u') 
  {
    if(sWord.charAt(1) == 'l' || sWord.charAt(1) == 'r' || sWord.charAt(1) == 'h' || sWord.charAt(1) == 'k' || sWord.charAt(1) == 'g' || sWord.charAt(1) == 'u' || sWord.charAt(1) == 'c' ||
    sWord.charAt(1) == 'm' || sWord.charAt(1) == 'n' || sWord.charAt(1) == 'p' || sWord.charAt(1) == 't' || sWord.charAt(1) == 'w') {
      if (sWord.charAt(2) == 'h' || sWord.charAt(2) == 'r' || sWord.charAt(2) == 'l' || sWord.charAt(2) == 'u') {
        return sWord.substring(3,sWord.length()) + sWord.substring(0,3) + "ay";
      }
      else return sWord.substring(2,sWord.length()) + sWord.substring(0,2) + "ay";
    }
    else return sWord.substring(1,sWord.length()) + sWord.charAt(0) + "ay";
  }
  else
  {
    return "ERROR!";
  }
}
