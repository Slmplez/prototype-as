using System;
using System.Collections.Generic;
using Etas.Base.Shared;
using Microsoft.Win32;

namespace Etas.Base.UI.Framework;

internal static class EtasRegistryLocalizerStorage
{
	private static string _generalRegKey;

	private static string _altGeneralRegKey;

	private static string _languageRegValue;

	private static Dictionary<string, string> EtasLanguageToNETUICultureMap;

	static EtasRegistryLocalizerStorage()
	{
		_generalRegKey = "HKEY_CURRENT_USER\\Software\\ETAS\\General";
		_altGeneralRegKey = "HKEY_LOCAL_MACHINE\\SOFTWARE\\ETAS\\General";
		_languageRegValue = "Language";
		EtasLanguageToNETUICultureMap = null;
		EtasLanguageToNETUICultureMap = new Dictionary<string, string>();
		EtasLanguageToNETUICultureMap.Add("EnglishUS", "en-US");
		EtasLanguageToNETUICultureMap.Add("German", "de-DE");
		EtasLanguageToNETUICultureMap.Add("French", "fr-FR");
		EtasLanguageToNETUICultureMap.Add("Japanese", "ja-JP");
		EtasLanguageToNETUICultureMap.Add("Korean", "ko-KR");
		EtasLanguageToNETUICultureMap.Add("Chinese", "zh-CN");
		EtasLanguageToNETUICultureMap.Add("CLL", "de-CH");
	}

	public static string ReadETASLanguage()
	{
		string text = null;
		try
		{
			text = Registry.GetValue(_generalRegKey, _languageRegValue, "") as string;
		}
		catch (Exception exception)
		{
			Logger.LogException(exception, "Exception while getting ETAS language from Registry key '{0}'", _generalRegKey);
		}
		if (string.IsNullOrEmpty(text))
		{
			Logger.Write(LogCategory.TraceLoop, "Could not get ETAS language from Registry key '{0}', trying '{1}'", _generalRegKey, _altGeneralRegKey);
			try
			{
				text = Registry.GetValue(_altGeneralRegKey, _languageRegValue, "") as string;
			}
			catch (Exception exception2)
			{
				Logger.LogException(exception2, "Exception while getting ETAS language from Registry key '{0}'", _altGeneralRegKey);
			}
		}
		if (string.IsNullOrEmpty(text))
		{
			Logger.LogWarning("Did not find an ETAS language entry '{2}' in Registry key '{0}' or '{1}'", _generalRegKey, _altGeneralRegKey, _languageRegValue);
			return null;
		}
		return text;
	}

	public static string GetDotNETCultureNameFromETASLanguage(string ETASLanguage)
	{
		if (ETASLanguage == null)
		{
			return null;
		}
		string value = null;
		if (!EtasLanguageToNETUICultureMap.TryGetValue(ETASLanguage, out value))
		{
			Logger.LogError("Invalid ETAS language '{0}'", ETASLanguage);
		}
		return value;
	}
}
