using System;
using ETASToolStarter;

namespace ETASToolStarterUtility;

internal class ETASToolStarterUtility
{
	private static int Main(string[] args)
	{
		string text = null;
		string text2 = null;
		string text3 = null;
		uint num = 3u;
		uint num2 = 0u;
		char[] array = new char[1] { ':' };
		string[] array2 = new string[3] { "-application", "-version", "-timeout" };
		EtasToolStarter etasToolStarter = new EtasToolStarter();
		int result = 0;
		Console.WriteLine("-------------------------------------------------------------------------------");
		Console.WriteLine("              ETASToolStarter: Utility to start ETAS tools                     ");
		Console.WriteLine("-------------------------------------------------------------------------------");
		if (args.Length <= num2 || args.Length > num)
		{
			printMessageInvalidArguments();
			return -1;
		}
		switch (args.Length)
		{
		case 1:
		{
			string text4 = (string)args.GetValue(0);
			text4.Split(array);
			text = extractUserArgument(text4, (string)array2.GetValue(0), array);
			break;
		}
		case 2:
		{
			string text4 = (string)args.GetValue(0);
			text4.Split(array);
			text = extractUserArgument(text4, (string)array2.GetValue(0), array);
			text4 = (string)args.GetValue(1);
			text4.Split(array);
			text2 = extractUserArgument(text4, (string)array2.GetValue(1), array);
			if (text2 == null)
			{
				text4 = (string)args.GetValue(1);
				text4.Split(array);
				text3 = extractUserArgument(text4, (string)array2.GetValue(2), array);
			}
			break;
		}
		case 3:
		{
			string text4 = (string)args.GetValue(0);
			text4.Split(array);
			text = extractUserArgument(text4, (string)array2.GetValue(0), array);
			text4 = (string)args.GetValue(1);
			text4.Split(array);
			text2 = extractUserArgument(text4, (string)array2.GetValue(1), array);
			text4 = (string)args.GetValue(2);
			text4.Split(array);
			text3 = extractUserArgument(text4, (string)array2.GetValue(2), array);
			break;
		}
		default:
			return -1;
		}
		if (text == null || text.Length == 0 || (args.Length == 2 && text2 == null && text3 == null) || (args.Length == 3 && (text2 == null || text2.Length == 0 || text3 == null || text3.Length == 0)))
		{
			printMessageInvalidArguments();
			return -1;
		}
		if (text.Contains("?"))
		{
			printMessageNArray("", etasToolStarter.ListOfEtasApplications());
			return 0;
		}
		text = text.ToUpper();
		switch (args.Length)
		{
		case 1:
			if (!etasToolStarter.Start(text))
			{
				result = -1;
				Console.WriteLine("Tool Starter failed.");
			}
			break;
		case 2:
		{
			if (text2 != null)
			{
				if (text2.Contains("?"))
				{
					string message = "The currently installed versions of the tool " + text + " are : ";
					printMessageNArray(message, etasToolStarter.ListOfVersionsForEtasApplication(text));
					result = 0;
				}
				else if (!etasToolStarter.Start(text, text2))
				{
					result = -1;
					Console.WriteLine("Tool Starter failed.");
				}
				else
				{
					result = 0;
				}
				break;
			}
			int result3 = 0;
			if (int.TryParse(text3, out result3) && result3 > 0)
			{
				if (etasToolStarter.Start(text, result3))
				{
					result = 0;
					break;
				}
				Console.WriteLine("Tool Starter aborted.");
				result = -1;
			}
			else
			{
				Console.WriteLine("ERROR: Invalid timeout value.");
				result = -1;
			}
			break;
		}
		case 3:
		{
			int result2 = 0;
			if (int.TryParse(text3, out result2) && result2 > 0)
			{
				if (etasToolStarter.Start(text, text2, result2))
				{
					result = 0;
					break;
				}
				Console.WriteLine("Tool Starter aborted");
				result = -1;
			}
			else
			{
				Console.WriteLine("ERROR: Invalid timeout value");
				result = -1;
			}
			break;
		}
		default:
			Console.WriteLine("ERROR: Invalid arguments");
			result = -1;
			break;
		}
		return result;
	}

	private static string extractUserArgument(string argument, string matchedString, char[] delimit)
	{
		string result = null;
		if (argument == null || matchedString == null || delimit == null)
		{
			return null;
		}
		try
		{
			string[] array = argument.Split(delimit);
			if (array.Length != 2 || string.Compare((string)array.GetValue(0), matchedString, ignoreCase: true) != 0)
			{
				return result;
			}
			result = (string)array.GetValue(1);
		}
		catch (Exception ex)
		{
			Console.WriteLine("An Exception occured: " + ex.Message);
		}
		return result;
	}

	private static void printMessageNArray(string message, string[] strArr)
	{
		Console.WriteLine(message);
		foreach (string value in strArr)
		{
			Console.WriteLine(value);
		}
	}

	private static void printMessageInvalidArguments()
	{
		Console.WriteLine();
		Console.WriteLine("ERROR: Invalid arguments.");
		Console.WriteLine();
		Console.WriteLine("-------------------------------------------------------------------------------");
		Console.WriteLine(" Usage: ETASToolStarter -application:<Name> -version:<ver> -timeout:<seconds>  ");
		Console.WriteLine("-------------------------------------------------------------------------------");
		Console.WriteLine("Name    :<Mandatory> name of the ETAS tool eg:'ASCET'                          ");
		Console.WriteLine("ver     :<Optional>  version number of the tool eg: '6' or '6.1'               ");
		Console.WriteLine("seconds :<Optional>  maximum time in seconds for starting the tool             ");
		Console.WriteLine();
		Console.WriteLine("eg:>>ETASToolStarter -application:ASCET                                        ");
		Console.WriteLine("         Starts last used version of ASCET                                     ");
		Console.WriteLine();
		Console.WriteLine("eg:>>ETASToolStarter -application:ASCET -version:6                             ");
		Console.WriteLine("         Starts last used ASCET in the 6 series                                ");
		Console.WriteLine();
		Console.WriteLine("eg:>>ETASToolStarter -application:ASCET -version:6.1                           ");
		Console.WriteLine("         Starts ASCET 6.1                                                      ");
		Console.WriteLine();
		Console.WriteLine("eg:>>ETASToolStarter -application:ASCET -timeout:5                             ");
		Console.WriteLine("         Starts last used version of ASCET with a timeout of 5 seconds         ");
		Console.WriteLine();
		Console.WriteLine("eg:>>ETASToolStarter -application:ASCET -version:6.1 -timeout:5                ");
		Console.WriteLine("         Starts ASCET 6.1 with a timeout of 5 seconds                          ");
		Console.WriteLine();
		Console.WriteLine();
	}
}
