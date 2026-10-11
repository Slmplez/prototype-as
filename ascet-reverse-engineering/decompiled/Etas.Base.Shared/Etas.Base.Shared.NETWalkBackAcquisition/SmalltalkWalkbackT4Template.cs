using System;
using System.CodeDom.Compiler;
using System.Diagnostics;

namespace Etas.Base.Shared.NETWalkBackAcquisition;

[GeneratedCode("Microsoft.VisualStudio.TextTemplating", "10.0.0.0")]
public class SmalltalkWalkbackT4Template : SmalltalkWalkbackT4TemplateBase
{
	private static int _WalkbacksSinceStart = 1;

	private DateTime WalkbackTime { get; set; }

	private string INCAVersion { get; set; }

	private string INCAVersionWithHotfix { get; set; }

	private string WalkBackID { get; set; }

	private string WalkBackMessage { get; set; }

	private string StackTrace { get; set; }

	private DateTime ProcessStartTime { get; set; }

	private int WalkbacksSinceStart { get; set; }

	public virtual string TransformText()
	{
		Write("INCA: ");
		Write(base.ToStringHelper.ToStringWithCulture(INCAVersion));
		Write("\r\n");
		Write(base.ToStringHelper.ToStringWithCulture(INCAVersionWithHotfix));
		Write("\r\nWalkback at ");
		Write(base.ToStringHelper.ToStringWithCulture(WalkbackTime.ToString("HH:mm:ss")));
		Write(" on ");
		Write(base.ToStringHelper.ToStringWithCulture(WalkbackTime.ToString("yyyy-MM-dd")));
		Write("\r\n\r\n[");
		Write(base.ToStringHelper.ToStringWithCulture(WalkBackID));
		Write("] ");
		Write(base.ToStringHelper.ToStringWithCulture(WalkBackMessage));
		Write("\r\n\r\n[start of coded part]\r\n\r\n");
		Write(base.ToStringHelper.ToStringWithCulture(StackTrace));
		Write("\r\n[end of coded part]\r\n\r\nTool start time: ");
		Write(base.ToStringHelper.ToStringWithCulture(ProcessStartTime.ToString("o")));
		Write("\r\nCurrent time: ");
		Write(base.ToStringHelper.ToStringWithCulture(WalkbackTime.ToString("o")));
		Write("\r\nWalkback # since tool start: ");
		Write(base.ToStringHelper.ToStringWithCulture(WalkbacksSinceStart));
		Write("\r\nCurrent used database: n/a\r\nActive workspace: n/a\r\nHardware editor open: n/a\r\nOpen experiment: n/a\r\nCDM open: n/a\r\nASAP2 editor open: n/a\r\n\r\nhost name: ");
		Write(base.ToStringHelper.ToStringWithCulture(Environment.MachineName));
		Write("\r\nuser name: n/a\r\n\r\nMemory (Smalltalk):\r\n\r\nTotal allocation:  n/a\r\nAvailable:  n/a\r\nFixed Space:  n/a\r\nNew Space:  n/a\r\nOld Space:  n/a\r\n\r\nMemory (System):\r\n\r\n*OSMemorystatus {\r\ndwLength: n/a\r\ndwMemoryLoad: n/a\r\ndwTotalPhys: n/a\r\ndwAvailPhys: n/a\r\ndwTotalPageFile: n/a\r\ndwAvailPageFile: n/a\r\ndwTotalVirtual: n/a\r\ndwAvailVirtual: n/a\r\n}\r\n\r\nResources:\r\n\r\nGDI Handles:  n/a\r\nUser Handles:  n/a\r\n");
		return base.GenerationEnvironment.ToString();
	}

	public static SmalltalkWalkbackT4Template GenerateBasicINCA7_1_0_Template(string message, string stackTrace, string wbID)
	{
		SmalltalkWalkbackT4Template smalltalkWalkbackT4Template = new SmalltalkWalkbackT4Template();
		smalltalkWalkbackT4Template.SetProperties_MandatoryWBAnalysis(message, stackTrace, wbID);
		return smalltalkWalkbackT4Template;
	}

	private void SetProperties_MandatoryWBAnalysis(string message, string stackTrace, string wbID)
	{
		INCAVersion = EtasGeneralAccess.GetAppVersion();
		if (string.IsNullOrEmpty(INCAVersion))
		{
			INCAVersion = "<INCA Version unknown>";
		}
		INCAVersionWithHotfix = EtasGeneralAccess.GetAppVersion();
		if (string.IsNullOrEmpty(INCAVersionWithHotfix))
		{
			INCAVersionWithHotfix = "<INCA Version unknown>";
		}
		WalkbackTime = DateTime.Now;
		ProcessStartTime = Process.GetCurrentProcess().StartTime;
		WalkBackID = wbID;
		WalkBackMessage = message;
		StackTrace = stackTrace;
		WalkbacksSinceStart = _WalkbacksSinceStart++;
	}
}
