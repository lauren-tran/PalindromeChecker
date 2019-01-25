public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String onlyChar = new String();
  for (int x = 0; x < word.length(); x++)
    if (Character.isLetter(word.charAt(x)) == true)
      onlyChar = onlyChar + word.substring(x,x+1);
  if(onlyChar.toLowerCase().equals(reverse(onlyChar)))
    return true;
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    for (int j = str.length()-1; j >=0; j--)
      sNew = sNew + str.substring(j,j+1);
    return sNew.toLowerCase();
}
