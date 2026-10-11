using System;
using System.IO;

namespace Syncfusion.Core.Licensing;

internal class LicCnxtParser
{
	private static FileInfo lcxtInfo = null;

	private static string globalContext = string.Empty;

	public LicCnxtParser()
	{
	}

	public LicCnxtParser(FileInfo lcxtFile)
	{
		lcxtInfo = lcxtFile;
	}

	public virtual string ParseSLFFile(FileInfo licFile)
	{
		if (licFile.Exists)
		{
			TextReader textReader = new StreamReader(licFile.FullName);
			globalContext = textReader.ReadToEnd().Trim();
			textReader.Close();
			globalContext = ReturnKeyValue(globalContext);
			return globalContext;
		}
		Console.WriteLine(licFile.FullName + " does not exist.");
		globalContext = string.Empty;
		return globalContext;
	}

	public virtual string ParseSLFFile()
	{
		globalContext = string.Empty;
		if (lcxtInfo != null && lcxtInfo.Exists)
		{
			globalContext = ParseSLFFile(lcxtInfo);
		}
		else
		{
			Console.WriteLine("user LicCnxtParser(Fileinfo) in the class constructor definition to use this method.");
			globalContext = string.Empty;
		}
		return globalContext;
	}

	public string ReturnKeyValue(string context)
	{
		string text = context.Remove(context.Length - 10, 10);
		return text.Remove(0, 10);
	}
}
