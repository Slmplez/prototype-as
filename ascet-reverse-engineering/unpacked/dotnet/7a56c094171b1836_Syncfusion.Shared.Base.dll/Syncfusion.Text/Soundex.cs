using System;
using System.Text;

namespace Syncfusion.Text;

public class Soundex
{
	public static string ToSoundexCode(string aString)
	{
		string text = aString.ToUpper();
		StringBuilder stringBuilder = new StringBuilder();
		int length = text.Length;
		stringBuilder.Append(text.Substring(0, 1));
		for (int i = 1; i < length; i++)
		{
			string text2 = Transform(text.Substring(i, 1));
			if (!text2.Equals(stringBuilder.ToString().Substring(stringBuilder.Length - 1)) && !text2.Equals("A") && !text2.Equals("S") && !text2.Equals(" "))
			{
				stringBuilder.Append(text2);
			}
		}
		stringBuilder.Append("0000");
		return stringBuilder.ToString().Substring(0, 4);
	}

	private static string Transform(string aString)
	{
		switch (aString)
		{
		case "A":
		case "E":
		case "I":
		case "O":
		case "U":
		case "Y":
			return "A";
		case "H":
		case "W":
			return "S";
		case "B":
		case "F":
		case "P":
		case "V":
			return "1";
		case "C":
		case "G":
		case "J":
		case "K":
		case "Q":
		case "S":
		case "X":
		case "Z":
			return "2";
		case "D":
		case "T":
			return "3";
		case "L":
			return "4";
		case "M":
		case "N":
			return "5";
		case "R":
			return "6";
		default:
			return " ";
		}
	}

	public static int EditDistanceCompute(string s, string t)
	{
		int length = s.Length;
		int length2 = t.Length;
		int[,] array = new int[length + 1, length2 + 1];
		if (length == 0)
		{
			int num = length2;
		}
		if (length2 == 0)
		{
			int num = length;
		}
		int num2 = 0;
		while (num2 <= length)
		{
			array[num2, 0] = num2++;
		}
		int num3 = 0;
		while (num3 <= length2)
		{
			array[0, num3] = num3++;
		}
		for (int i = 1; i <= length; i++)
		{
			for (int j = 1; j <= length2; j++)
			{
				int num4 = ((!(t.Substring(j - 1, 1) == s.Substring(i - 1, 1))) ? 1 : 0);
				array[i, j] = Math.Min(Math.Min(array[i - 1, j] + 1, array[i, j - 1] + 1), array[i - 1, j - 1] + num4);
			}
		}
		return array[length, length2];
	}

	public static string NextLetter(string aString)
	{
		return aString switch
		{
			"a" => "b", 
			"b" => "c", 
			"c" => "d", 
			"d" => "e", 
			"e" => "f", 
			"f" => "g", 
			"g" => "h", 
			"h" => "i", 
			"i" => "j", 
			"j" => "k", 
			"k" => "l", 
			"l" => "m", 
			"m" => "n", 
			"n" => "o", 
			"o" => "p", 
			"p" => "q", 
			"q" => "r", 
			"r" => "s", 
			"s" => "t", 
			"t" => "u", 
			"u" => "v", 
			"v" => "w", 
			"w" => "x", 
			"x" => "y", 
			"y" => "z", 
			"z" => " ", 
			_ => " ", 
		};
	}
}
