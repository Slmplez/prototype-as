using System;
using System.IO;
using Etas.Base.Shared.NETWalkBackAcquisition;

namespace Etas.Base.Shared;

internal class WalkbackFile
{
	public string Contents { get; private set; }

	public string Path { get; private set; }

	public bool IsFileWritten { get; private set; }

	public string WalkbackID { get; private set; }

	public WalkbackFile(string myTrace, string message, string wkbID, string path)
	{
		if (path == null)
		{
			return;
		}
		WalkbackID = wkbID;
		Path = path;
		try
		{
			SmalltalkWalkbackT4Template smalltalkWalkbackT4Template = SmalltalkWalkbackT4Template.GenerateBasicINCA7_1_0_Template(message, myTrace, wkbID);
			Contents = smalltalkWalkbackT4Template.TransformText();
		}
		catch (Exception exception)
		{
			Logger.LogException(exception);
		}
	}

	public void WriteToFile()
	{
		File.WriteAllText(Path, Contents);
		Logger.LogError("Smalltalk Style Walkback File Created, WkbID: {0}, Path: {1}", WalkbackID, Path);
		IsFileWritten = true;
	}
}
