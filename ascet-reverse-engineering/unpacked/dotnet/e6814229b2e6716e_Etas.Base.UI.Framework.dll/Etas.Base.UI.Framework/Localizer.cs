using System;
using System.Globalization;

namespace Etas.Base.UI.Framework;

[Obsolete]
public static class Localizer
{
	public static string CurrentCulture => LocalizerETASSpecial.CurrentCulture;

	public static CultureInfo CurrentCultureInfo => LocalizerETASSpecial.CurrentCultureInfo;

	public static string CurrentETASLanguage => LocalizerETASSpecial.CurrentETASLanguage;

	public static void InitializeCulture()
	{
		LocalizerETASSpecial.InitializeCulture();
	}
}
