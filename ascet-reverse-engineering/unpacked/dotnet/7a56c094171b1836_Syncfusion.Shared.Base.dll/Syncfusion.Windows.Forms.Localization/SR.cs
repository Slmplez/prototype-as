using System;
using System.Globalization;
using System.Resources;

namespace Syncfusion.Windows.Forms.Localization;

internal sealed class SR
{
	internal const string Bottom = "Bottom";

	internal const string CategoryAction = "CategoryAction";

	internal const string CategoryAppearance = "CategoryAppearance";

	internal const string CategoryBehavior = "CategoryBehavior";

	internal const string CategoryData = "CategoryData";

	internal const string ColorEditorPaletteTab = "ColorEditorPaletteTab";

	internal const string ColorEditorStandardTab = "ColorEditorStandardTab";

	internal const string ColorEditorSystemTab = "ColorEditorSystemTab";

	internal const string Copy = "Copy";

	internal const string Cut = "Cut";

	internal const string Delete = "Delete";

	internal const string DescriptionMenuItemText = "DescriptionMenuItemText";

	internal const string Error = "Error";

	internal const string FewerButtonsItemsText = "FewerButtonsItemsText";

	internal const string GroupBarAddRemoveButton = "GroupBarAddRemoveButton";

	internal const string GroupBarDropDownToolTip = "GroupBarDropDownToolTip";

	internal const string GroupBarExpandButtonToolTip = "GroupBarExpandButtonToolTip";

	internal const string GroupBarMinimizeButtonToolTip = "GroupBarMinimizeButtonToolTip";

	internal const string GroupBarNavigationPaneTooltip = "GroupBarNavigationPaneTooltip";

	internal const string InvalidArgument = "InvalidArgument";

	internal const string InvalidLowBoundArgumentEx = "InvalidLowBoundArgumentEx";

	internal const string InvalidLowBoundArgumentEx2 = "InvalidLowBoundArgumentEx2";

	internal const string LeftEdge = "LeftEdge";

	internal const string ModName = "ModName";

	internal const string MoreButtonsItemsText = "MoreButtonsItemsText";

	internal const string PageDown = "PageDown";

	internal const string PageLeft = "PageLeft";

	internal const string PageRight = "PageRight";

	internal const string PageUp = "PageUp";

	internal const string Paste = "Paste";

	internal const string RecordNavigationBarAddNewRecord = "RecordNavigationBarAddNewRecord";

	internal const string RecordNavigationBarCurrentRecord = "RecordNavigationBarCurrentRecord";

	internal const string RecordNavigationBarFirstRecord = "RecordNavigationBarFirstRecord";

	internal const string RecordNavigationBarLastRecord = "RecordNavigationBarLastRecord";

	internal const string RecordNavigationBarNextRecord = "RecordNavigationBarNextRecord";

	internal const string RecordNavigationBarPreviousRecord = "RecordNavigationBarPreviousRecord";

	internal const string RecordNavigationBarRecord = "RecordNavigationBarRecord";

	internal const string RecordNavigationBarRecordCount = "RecordNavigationBarRecordCount";

	internal const string ResetMenuItemText = "ResetMenuItemText";

	internal const string RightEdge = "RightEdge";

	internal const string ScrollDown = "ScrollDown";

	internal const string ScrollHere = "ScrollHere";

	internal const string ScrollLeft = "ScrollLeft";

	internal const string ScrollRight = "ScrollRight";

	internal const string ScrollUp = "ScrollUp";

	internal const string SelectAll = "SelectAll";

	internal const string StyleCategoryAppearance = "StyleCategoryAppearance";

	internal const string TabBarControlAdd = "TabBarControlAdd";

	internal const string TabBarControlRemove = "TabBarControlRemove";

	internal const string TabBarPageOnTabBarPage = "TabBarPageOnTabBarPage";

	internal const string TabBarSplitterControlAdd = "TabBarSplitterControlAdd";

	internal const string TabBarSplitterControlRemove = "TabBarSplitterControlRemove";

	internal const string TabBarToolTipEmptyIcon = "TabBarToolTipEmptyIcon";

	internal const string Test = "Test";

	internal const string TextParseFailedFormat = "TextParseFailedFormat";

	internal const string Top = "Top";

	internal const string TopLeftBottomRight = "TopLeftBottomRight";

	internal const string Undo = "Undo";

	private ResourceManager resources;

	private static SR loader;

	private SR()
	{
		resources = new ResourceManager(GetType());
	}

	private static SR GetLoader()
	{
		lock (typeof(SR))
		{
			if (loader == null)
			{
				loader = new SR();
			}
			return loader;
		}
	}

	public static string GetString(CultureInfo culture, string name, params object[] args)
	{
		SR sR = GetLoader();
		if (sR == null)
		{
			return null;
		}
		try
		{
			string text = sR.resources.GetString(name, culture);
			if (text != null && args != null && args.Length > 0)
			{
				return string.Format(text, args);
			}
			return text;
		}
		catch (Exception)
		{
			return name;
		}
	}

	public static string GetString(string name)
	{
		return GetString(null, name);
	}

	public static string GetString(string name, params object[] args)
	{
		return GetString(null, name, args);
	}

	public static string GetString(CultureInfo culture, string name)
	{
		return GetLoader()?.resources.GetString(name, culture);
	}

	public static object GetObject(CultureInfo culture, string name)
	{
		return GetLoader()?.resources.GetObject(name, culture);
	}

	public static object GetObject(string name)
	{
		return GetObject(null, name);
	}

	public static bool GetBoolean(CultureInfo culture, string name)
	{
		SR sR = GetLoader();
		bool result = false;
		if (sR != null)
		{
			object obj = sR.resources.GetObject(name, culture);
			if (obj is bool)
			{
				result = (bool)obj;
			}
		}
		return result;
	}

	public static bool GetBoolean(string name)
	{
		return GetBoolean(name);
	}

	public static byte GetByte(CultureInfo culture, string name)
	{
		SR sR = GetLoader();
		byte result = 0;
		if (sR != null)
		{
			object obj = sR.resources.GetObject(name, culture);
			if (obj is byte)
			{
				result = (byte)obj;
			}
		}
		return result;
	}

	public static byte GetByte(string name)
	{
		return GetByte(null, name);
	}

	public static char GetChar(CultureInfo culture, string name)
	{
		SR sR = GetLoader();
		char result = '\0';
		if (sR != null)
		{
			object obj = sR.resources.GetObject(name, culture);
			if (obj is char)
			{
				result = (char)obj;
			}
		}
		return result;
	}

	public static char GetChar(string name)
	{
		return GetChar(null, name);
	}

	public static double GetDouble(CultureInfo culture, string name)
	{
		SR sR = GetLoader();
		double result = 0.0;
		if (sR != null)
		{
			object obj = sR.resources.GetObject(name, culture);
			if (obj is double)
			{
				result = (double)obj;
			}
		}
		return result;
	}

	public static double GetDouble(string name)
	{
		return GetDouble(null, name);
	}

	public static float GetFloat(CultureInfo culture, string name)
	{
		SR sR = GetLoader();
		float result = 0f;
		if (sR != null)
		{
			object obj = sR.resources.GetObject(name, culture);
			if (obj is float)
			{
				result = (float)obj;
			}
		}
		return result;
	}

	public static float GetFloat(string name)
	{
		return GetFloat(null, name);
	}

	public static int GetInt(string name)
	{
		return GetInt(null, name);
	}

	public static int GetInt(CultureInfo culture, string name)
	{
		SR sR = GetLoader();
		int result = 0;
		if (sR != null)
		{
			object obj = sR.resources.GetObject(name, culture);
			if (obj is int)
			{
				result = (int)obj;
			}
		}
		return result;
	}

	public static long GetLong(string name)
	{
		return GetLong(null, name);
	}

	public static long GetLong(CultureInfo culture, string name)
	{
		SR sR = GetLoader();
		long result = 0L;
		if (sR != null)
		{
			object obj = sR.resources.GetObject(name, culture);
			if (obj is long)
			{
				result = (long)obj;
			}
		}
		return result;
	}

	public static short GetShort(CultureInfo culture, string name)
	{
		SR sR = GetLoader();
		short result = 0;
		if (sR != null)
		{
			object obj = sR.resources.GetObject(name, culture);
			if (obj is short)
			{
				result = (short)obj;
			}
		}
		return result;
	}

	public static short GetShort(string name)
	{
		return GetShort(null, name);
	}
}
