using System.Runtime.InteropServices;

namespace Syncfusion.Runtime.InteropServices;

public class RuntimeEnvironment
{
	private static int majorVersion = -1;

	private static int minorVersion = -1;

	public static int MajorRuntimeVersion
	{
		get
		{
			if (majorVersion == -1)
			{
				GetVersionInfo();
			}
			return majorVersion;
		}
	}

	public static int MinorRuntimeVersion
	{
		get
		{
			if (minorVersion == -1)
			{
				GetVersionInfo();
			}
			return minorVersion;
		}
	}

	private static void GetVersionInfo()
	{
		string runtimeDirectory = System.Runtime.InteropServices.RuntimeEnvironment.GetRuntimeDirectory();
		int num = runtimeDirectory.LastIndexOf("v");
		string text = runtimeDirectory.Substring(num + 1);
		text.Trim();
		text.Trim('\\', '/');
		string[] array = text.Split('.');
		majorVersion = int.Parse(array[0]);
		minorVersion = int.Parse(array[1]);
	}
}
