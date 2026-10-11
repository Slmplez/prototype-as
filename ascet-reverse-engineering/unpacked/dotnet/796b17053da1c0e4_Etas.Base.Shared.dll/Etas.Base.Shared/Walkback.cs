using System;
using System.Diagnostics;
using System.Diagnostics.CodeAnalysis;
using System.IO;
using Microsoft.Win32;

namespace Etas.Base.Shared;

public static class Walkback
{
	private const string NetWkbFileExtension = "netwkb";

	private const string NetWkbFilePrefix = "net";

	private const string RegKeyEtasGeneral = "HKEY_LOCAL_MACHINE\\SOFTWARE\\ETAS\\General";

	private const string RegValDefaultLogPathName = "DefaultLogPathName";

	private const string _ExceptionInDotNETCOMServerKeyWord = "ExceptionInDotNETCOMServer_KeyWord";

	public static bool EnableTestException { get; set; }

	private static string WkbLogPath { get; set; }

	public static string ExceptionInDotNETCOMServerKeyWord => "ExceptionInDotNETCOMServer_KeyWord";

	public static bool IsWriteSmalltalkStyleWkbs { get; private set; }

	public static bool IsAllowedPersonalDataCollection { get; private set; }

	public static void LogError(Exception exception)
	{
		Logger.LogException(exception);
		InternalLogErrorToWkbFileAndProcessLogsV2(exception);
	}

	[Obsolete("Use LogError instead.")]
	private static void LogErrorFromWorkerThreads(Exception exception, out string wkbID, out string wkbFilePath, out bool isWkbFileWritten)
	{
		Logger.LogException(exception);
		WalkbackFile walkbackFile = InternalLogErrorToWkbFileAndProcessLogsV2(exception);
		wkbID = walkbackFile.WalkbackID;
		wkbFilePath = walkbackFile.Path;
		isWkbFileWritten = walkbackFile.IsFileWritten;
	}

	[Obsolete("Use LogError instead.")]
	private static void LogErrorPlugin(Exception exception, string pluginHostWkbMessageText, string pluginWkbMessageText, out string wkbID)
	{
		Logger.LogException(exception);
		WalkbackFile walkbackFile = InternalLogErrorToWkbFileAndProcessLogsV2(exception);
		wkbID = walkbackFile.WalkbackID;
	}

	[Obsolete("Use the more neutral LogError method instaed.  Use a wrapped exception or the Exception.Data dictionary to preserve the ohiCfgErrorMessage parameter.")]
	public static void LogErrorPluginOHIConfigframework(Exception exception, string ohiCfgErrorMessage, out string wbID)
	{
		WalkbackFile walkbackFile = InternalLogErrorToWkbFileAndProcessLogsV2(exception);
		wbID = walkbackFile.WalkbackID;
	}

	[Obsolete("Use LogError instead.  No client specific code in this shared component.")]
	private static void LogErrorPluginOHIConfigframeworkCurrentStackTrace(string nonLocalizedMessage, out string wbID)
	{
		StackTrace stackTrace = new StackTrace(fNeedFileInfo: true);
		WalkbackFile walkbackFile = InternalLogToWkbFileAndProcessLogsV2(nonLocalizedMessage, stackTrace);
		wbID = walkbackFile.WalkbackID;
	}

	public static void LogErrorThrowSmalltalkCOMException(Exception exception)
	{
		Logger.LogException(exception);
		WalkbackFile walkbackFile = InternalLogErrorToWkbFileAndProcessLogsV2(exception);
		string message = $"{ExceptionInDotNETCOMServerKeyWord} - {walkbackFile.WalkbackID} For details see: {walkbackFile.Path}";
		throw new ApplicationException(message, exception);
	}

	[SuppressMessage("Microsoft.Design", "CA1031:DoNotCatchGeneralExceptionTypes", Justification = "COM adapters may catch general exceptions")]
	public static T InterceptComCall<T>(Func<T> func)
	{
		try
		{
			return func();
		}
		catch (Exception exception)
		{
			LogErrorThrowSmalltalkCOMException(exception);
			return default(T);
		}
	}

	[SuppressMessage("Microsoft.Design", "CA1031:DoNotCatchGeneralExceptionTypes", Justification = "COM adapters may catch general exceptions")]
	public static void InterceptComCall(Action action)
	{
		try
		{
			action();
		}
		catch (Exception exception)
		{
			LogErrorThrowSmalltalkCOMException(exception);
		}
	}

	[Conditional("DEBUG")]
	private static void TestFakeException()
	{
		if (EnableTestException)
		{
			throw new InvalidOperationException("test");
		}
	}

	static Walkback()
	{
		WkbLogPath = "";
		IsWriteSmalltalkStyleWkbs = false;
		IsAllowedPersonalDataCollection = false;
		try
		{
			string text = (string)Registry.GetValue("HKEY_LOCAL_MACHINE\\SOFTWARE\\ETAS\\General", "DefaultLogPathName", null);
			if (text == null)
			{
				Logger.LogWarning("INCA walkback Log Path not defined");
				return;
			}
			WkbLogPath = Path.Combine(text, "INCA\\walkback");
			if (!Directory.Exists(WkbLogPath))
			{
				Directory.CreateDirectory(WkbLogPath);
			}
			IsWriteSmalltalkStyleWkbs = true;
		}
		catch (Exception exception)
		{
			Logger.LogException(exception);
		}
	}

	private static WalkbackFile InternalLogToWkbFileAndProcessLogsV2(string message, StackTrace stackTrace)
	{
		UserStackTraceFormatter userStackTraceFormatter = new UserStackTraceFormatter();
		userStackTraceFormatter.FormatStackTrace(stackTrace);
		string wkbID = WalkbackHash.HashString(message);
		return WriteWalkbackFile(message, userStackTraceFormatter.FormattedStackTrace, wkbID);
	}

	private static WalkbackFile InternalLogErrorToWkbFileAndProcessLogsV2(Exception exception)
	{
		if (!IsWriteSmalltalkStyleWkbs)
		{
			return null;
		}
		string message = string.Concat(exception.GetType(), ": ", exception.Message);
		HashStackTraceFormatter hashStackTraceFormatter = new HashStackTraceFormatter();
		hashStackTraceFormatter.FormatException(exception);
		string wkbID = WalkbackHash.HashString(hashStackTraceFormatter.FormattedStackTrace);
		UserStackTraceFormatter userStackTraceFormatter = new UserStackTraceFormatter();
		userStackTraceFormatter.FormatException(exception);
		return WriteWalkbackFile(message, userStackTraceFormatter.FormattedStackTrace, wkbID);
	}

	private static WalkbackFile WriteWalkbackFile(string message, string myTrace, string wkbID)
	{
		string path = GenerateNewWkbFileFilePath();
		WalkbackFile walkbackFile = new WalkbackFile(myTrace, message, wkbID, path);
		walkbackFile.WriteToFile();
		return walkbackFile;
	}

	private static string GenerateNewWkbFileFilePath()
	{
		if (!IsWriteSmalltalkStyleWkbs)
		{
			return null;
		}
		string[] files = Directory.GetFiles(WkbLogPath, "*.netwkb");
		string path = "net" + files.Length.ToString("D6") + ".netwkb";
		return Path.Combine(WkbLogPath, path);
	}
}
