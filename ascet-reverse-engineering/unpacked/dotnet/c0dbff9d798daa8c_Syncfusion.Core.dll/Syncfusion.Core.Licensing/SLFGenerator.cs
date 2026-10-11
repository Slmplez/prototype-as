using System;
using System.Text;

namespace Syncfusion.Core.Licensing;

internal class SLFGenerator
{
	private static string unlockKey = string.Empty;

	private static Random randomNumber = new Random();

	public SLFGenerator()
	{
	}

	public SLFGenerator(string key)
	{
		unlockKey = key;
	}

	public string GenerateSLFContext()
	{
		return $"@{GenerateRandomString(4)}{randomNumber.Next(1001, 9999).ToString()}{unlockKey}{randomNumber.Next(1000, 9999).ToString()}{GenerateRandomString(4)}=";
	}

	private static string GenerateRandomString(int intLenghtOfString)
	{
		StringBuilder stringBuilder = new StringBuilder();
		for (int i = 0; i <= intLenghtOfString; i++)
		{
			char value = Convert.ToChar(Convert.ToInt32(26.0 * randomNumber.NextDouble()) + 65);
			stringBuilder.Append(value);
		}
		return stringBuilder.ToString();
	}
}
