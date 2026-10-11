namespace Etas.Base.Shared;

internal class WalkbackHash
{
	public static string HashString(string text)
	{
		return "NetWBID" + HashValue(text);
	}

	public static uint HashValue(string text)
	{
		uint num = 0u;
		foreach (char c in text)
		{
			num = num * 104729 + c;
		}
		return num;
	}
}
