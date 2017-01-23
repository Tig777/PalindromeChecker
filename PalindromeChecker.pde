public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String cat)
{
  String joe = jeff(cat);
  if(joe.equals(reverse(joe)))
  {
      return true;
  }
    return false;
}
public String reverse(String str)
{
    String greg = new String();
    int nLast = str.length()-1;
    for(int nI=nLast; nI>=0; nI--)
      {
        greg = greg + str.charAt(nI);
      }
    return greg;
}
public String jeff(String sWord){
  String bob = new String();
  for(int i = 0; i < sWord.length(); i++)
    {
      if(Character.isLetter(sWord.charAt(i)) == true)
      {
        bob += sWord.charAt(i);
      }  
  }
  return bob.toLowerCase();
}