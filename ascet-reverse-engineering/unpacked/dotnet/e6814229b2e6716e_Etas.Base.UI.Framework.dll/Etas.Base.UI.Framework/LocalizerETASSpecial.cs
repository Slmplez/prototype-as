using System.Globalization;
using System.Threading;
using Etas.Base.Shared;

namespace Etas.Base.UI.Framework;

public static class LocalizerETASSpecial
{
	private static CultureInfo _currentCulture;

	private static string _ETASLanguage;

	public static string CurrentCulture => _currentCulture.Name;

	public static CultureInfo CurrentCultureInfo => _currentCulture;

	public static string CurrentETASLanguage => _ETASLanguage;

	static LocalizerETASSpecial()
	{
		_ETASLanguage = EtasRegistryLocalizerStorage.ReadETASLanguage();
		string dotNETCultureNameFromETASLanguage = EtasRegistryLocalizerStorage.GetDotNETCultureNameFromETASLanguage(_ETASLanguage);
		if (dotNETCultureNameFromETASLanguage != null)
		{
			_currentCulture = new CultureInfo(dotNETCultureNameFromETASLanguage);
		}
		else
		{
			_currentCulture = CultureInfo.CurrentUICulture;
		}
	}

	public static void InitializeCulture()
	{
		Logger.TraceMethodStart();
		if (_currentCulture == null)
		{
			Logger.Write(LogCategory.TraceLoop, "Before getting Thread.CurrentThread.CurrentUICulture");
			_currentCulture = Thread.CurrentThread.CurrentUICulture;
			Logger.Write(LogCategory.TraceLoop, "After getting Thread.CurrentThread.CurrentUICulture");
		}
		else
		{
			Thread.CurrentThread.CurrentUICulture = _currentCulture;
			Logger.Write(LogCategory.TraceModule, "Culture of current thread set to " + _currentCulture.ToString());
		}
	}
}
