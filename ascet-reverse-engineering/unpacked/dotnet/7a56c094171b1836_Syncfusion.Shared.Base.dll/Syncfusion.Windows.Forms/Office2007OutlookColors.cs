using System.Drawing;

namespace Syncfusion.Windows.Forms;

public class Office2007OutlookColors
{
	private static Color m_panelColor;

	private static Color m_borderColor;

	private static Color m_tabItemColor;

	private static Color m_innerBorderColor;

	private static Color m_leftAHPanelColor;

	private static Color m_rightAHPanelColor;

	private static Color m_MenuSelectedItemColor;

	private static Color m_MenuSelectedItemBorderColor;

	private static Color m_MenuBorderColor;

	private static Color m_MenuSeparatorColor;

	private static Color m_MenuColumnStyleColor;

	private static Color m_MenuCheckMarkColor;

	private static Color m_MenuSelectedCheckMarkColor;

	private static Color m_MenuCheckMarkBorderColor;

	private static Color m_MenuSelectedCheckMarkBorderColor;

	private static Color m_MenuBackground;

	private static Color m_BarItemHighlightBorderColor;

	private static Color m_BarItemPressBorderColor;

	private static Color m_BarItemCheckBorderColor;

	private static Color m_BarItemHighlightLightColor;

	private static Color m_BarItemHighlightDarkColor;

	private static Color m_BarItemPressLightColor;

	private static Color m_BarItemPressDarkColor;

	private static Color m_BarItemCheckLightColor;

	private static Color m_BarItemCheckDarkColor;

	private static Color m_dDBarItemBorderColor;

	private static Color m_dDBarItemLightColor;

	private static Color m_dDBarItemDarkColor;

	private static Color m_DropDownHighlightLightColor;

	private static Color m_DropDownHighlightDarkColor;

	private static Color m_DropDownPressedLightColor;

	private static Color m_DropDownPressedDarkColor;

	private static Color m_ComboButtonLightColor;

	private static Color m_ComboButtonDarkColor;

	public static bool UseThemedColors
	{
		get
		{
			bool result = false;
			if (XPThemes.IsThemedOS && XPThemes.IsThemeActive && XPThemes.IsAppThemed && (XPThemes.IsDefaultBlueThemeOn || XPThemes.IsOliveGreenThemeOn || XPThemes.IsSilverThemeOn))
			{
				result = true;
			}
			return result;
		}
	}

	public static Color RightAHPanelColor
	{
		get
		{
			return m_rightAHPanelColor;
		}
		set
		{
			if (m_rightAHPanelColor != value)
			{
				m_rightAHPanelColor = value;
			}
		}
	}

	public static Color LeftAHPanelColor
	{
		get
		{
			return m_leftAHPanelColor;
		}
		set
		{
			if (m_leftAHPanelColor != value)
			{
				m_leftAHPanelColor = value;
			}
		}
	}

	public static Color PanelColor
	{
		get
		{
			return m_panelColor;
		}
		set
		{
			if (m_panelColor != value)
			{
				m_panelColor = value;
			}
		}
	}

	public static Color BorderColor
	{
		get
		{
			return m_borderColor;
		}
		set
		{
			if (m_borderColor != value)
			{
				m_borderColor = value;
			}
		}
	}

	public static Color InnerBorderColor
	{
		get
		{
			return m_innerBorderColor;
		}
		set
		{
			if (m_innerBorderColor != value)
			{
				m_innerBorderColor = value;
			}
		}
	}

	public static Color TabItemColor
	{
		get
		{
			return m_tabItemColor;
		}
		set
		{
			if (m_tabItemColor != value)
			{
				m_tabItemColor = value;
			}
		}
	}

	public static Color DDBarItemBorderColor
	{
		get
		{
			return m_dDBarItemBorderColor;
		}
		set
		{
			if (m_dDBarItemBorderColor != value)
			{
				m_dDBarItemBorderColor = value;
			}
		}
	}

	public static Color DDBarItemLightColor
	{
		get
		{
			return m_dDBarItemLightColor;
		}
		set
		{
			if (m_dDBarItemLightColor != value)
			{
				m_dDBarItemLightColor = value;
			}
		}
	}

	public static Color DDBarItemDarkColor
	{
		get
		{
			return m_dDBarItemDarkColor;
		}
		set
		{
			if (m_dDBarItemDarkColor != value)
			{
				m_dDBarItemDarkColor = value;
			}
		}
	}

	public static Color MenuBorderColor
	{
		get
		{
			return m_MenuBorderColor;
		}
		set
		{
			if (m_MenuBorderColor != value)
			{
				m_MenuBorderColor = value;
			}
		}
	}

	public static Color MenuSeparatorColor
	{
		get
		{
			return m_MenuSeparatorColor;
		}
		set
		{
			if (m_MenuSeparatorColor != value)
			{
				m_MenuSeparatorColor = value;
			}
		}
	}

	public static Color MenuSelectedItemBorderColor
	{
		get
		{
			return m_MenuSelectedItemBorderColor;
		}
		set
		{
			if (m_MenuSelectedItemBorderColor != value)
			{
				m_MenuSelectedItemBorderColor = value;
			}
		}
	}

	public static Color MenuSelectedItemColor
	{
		get
		{
			return m_MenuSelectedItemColor;
		}
		set
		{
			if (m_MenuSelectedItemColor != value)
			{
				m_MenuSelectedItemColor = value;
			}
		}
	}

	public static Color MenuColumnStyleColor
	{
		get
		{
			return m_MenuColumnStyleColor;
		}
		set
		{
			if (m_MenuColumnStyleColor != value)
			{
				m_MenuColumnStyleColor = value;
			}
		}
	}

	public static Color MenuCheckMarkColor
	{
		get
		{
			return m_MenuCheckMarkColor;
		}
		set
		{
			if (m_MenuCheckMarkColor != value)
			{
				m_MenuCheckMarkColor = value;
			}
		}
	}

	public static Color MenuSelectedCheckMarkColor
	{
		get
		{
			return m_MenuSelectedCheckMarkColor;
		}
		set
		{
			if (m_MenuSelectedCheckMarkColor != value)
			{
				m_MenuSelectedCheckMarkColor = value;
			}
		}
	}

	public static Color MenuCheckMarkBorderColor
	{
		get
		{
			return m_MenuCheckMarkBorderColor;
		}
		set
		{
			if (m_MenuCheckMarkBorderColor != value)
			{
				m_MenuCheckMarkBorderColor = value;
			}
		}
	}

	public static Color MenuSelectedCheckMarkBorderColor
	{
		get
		{
			return m_MenuSelectedCheckMarkBorderColor;
		}
		set
		{
			if (m_MenuSelectedCheckMarkBorderColor != value)
			{
				m_MenuSelectedCheckMarkBorderColor = value;
			}
		}
	}

	public static Color MenuBackground
	{
		get
		{
			return m_MenuBackground;
		}
		set
		{
			if (m_MenuBackground != value)
			{
				m_MenuBackground = value;
			}
		}
	}

	public static Color BarItemHighlightBorderColor
	{
		get
		{
			return m_BarItemHighlightBorderColor;
		}
		set
		{
			if (m_BarItemHighlightBorderColor != value)
			{
				m_BarItemHighlightBorderColor = value;
			}
		}
	}

	public static Color BarItemPressBorderColor
	{
		get
		{
			return m_BarItemPressBorderColor;
		}
		set
		{
			if (m_BarItemPressBorderColor != value)
			{
				m_BarItemPressBorderColor = value;
			}
		}
	}

	public static Color BarItemCheckBorderColor
	{
		get
		{
			return m_BarItemCheckBorderColor;
		}
		set
		{
			if (m_BarItemCheckBorderColor != value)
			{
				m_BarItemCheckBorderColor = value;
			}
		}
	}

	public static Color BarItemCheckLightColor
	{
		get
		{
			return m_BarItemCheckLightColor;
		}
		set
		{
			if (m_BarItemCheckLightColor != value)
			{
				m_BarItemCheckLightColor = value;
			}
		}
	}

	public static Color BarItemCheckDarkColor
	{
		get
		{
			return m_BarItemCheckDarkColor;
		}
		set
		{
			if (m_BarItemCheckDarkColor != value)
			{
				m_BarItemCheckDarkColor = value;
			}
		}
	}

	public static Color BarItemHighlightLightColor
	{
		get
		{
			return m_BarItemHighlightLightColor;
		}
		set
		{
			if (m_BarItemHighlightLightColor != value)
			{
				m_BarItemHighlightLightColor = value;
			}
		}
	}

	public static Color BarItemHighlightDarkColor
	{
		get
		{
			return m_BarItemHighlightDarkColor;
		}
		set
		{
			if (m_BarItemHighlightDarkColor != value)
			{
				m_BarItemHighlightDarkColor = value;
			}
		}
	}

	public static Color BarItemPressLightColor
	{
		get
		{
			return m_BarItemPressLightColor;
		}
		set
		{
			if (m_BarItemPressLightColor != value)
			{
				m_BarItemPressLightColor = value;
			}
		}
	}

	public static Color BarItemPressDarkColor
	{
		get
		{
			return m_BarItemPressDarkColor;
		}
		set
		{
			if (m_BarItemPressDarkColor != value)
			{
				m_BarItemPressDarkColor = value;
			}
		}
	}

	public static Color DropDownHighlightLightColor
	{
		get
		{
			return m_DropDownHighlightLightColor;
		}
		set
		{
			if (m_DropDownHighlightLightColor != value)
			{
				m_DropDownHighlightLightColor = value;
			}
		}
	}

	public static Color DropDownHighlightDarkColor
	{
		get
		{
			return m_DropDownHighlightDarkColor;
		}
		set
		{
			if (m_DropDownHighlightDarkColor != value)
			{
				m_DropDownHighlightDarkColor = value;
			}
		}
	}

	public static Color DropDownPressedLightColor
	{
		get
		{
			return m_DropDownPressedLightColor;
		}
		set
		{
			if (m_DropDownPressedLightColor != value)
			{
				m_DropDownPressedLightColor = value;
			}
		}
	}

	public static Color DropDownPressedDarkColor
	{
		get
		{
			return m_DropDownPressedDarkColor;
		}
		set
		{
			if (m_DropDownPressedDarkColor != value)
			{
				m_DropDownPressedDarkColor = value;
			}
		}
	}

	public static Color ComboButtonLightColor
	{
		get
		{
			return m_ComboButtonLightColor;
		}
		set
		{
			if (m_ComboButtonLightColor != value)
			{
				m_ComboButtonLightColor = value;
			}
		}
	}

	public static Color ComboButtonDarkColor
	{
		get
		{
			return m_ComboButtonDarkColor;
		}
		set
		{
			if (m_ComboButtonDarkColor != value)
			{
				m_ComboButtonDarkColor = value;
			}
		}
	}

	public static void UpdateMenuColors(Office2007Theme theme)
	{
		m_BarItemHighlightBorderColor = Color.FromArgb(255, 189, 105);
		m_BarItemPressBorderColor = Color.FromArgb(251, 140, 60);
		m_BarItemCheckBorderColor = Color.FromArgb(255, 171, 63);
		m_BarItemHighlightLightColor = Color.FromArgb(255, 245, 204);
		m_BarItemHighlightDarkColor = Color.FromArgb(255, 220, 122);
		m_BarItemPressLightColor = Color.FromArgb(252, 151, 61);
		m_BarItemPressDarkColor = Color.FromArgb(255, 184, 94);
		m_BarItemCheckLightColor = Color.FromArgb(255, 207, 146);
		m_BarItemCheckDarkColor = Color.FromArgb(255, 175, 73);
		switch (theme)
		{
		case Office2007Theme.Black:
			m_MenuCheckMarkColor = Color.FromArgb(255, 189, 105);
			m_MenuSelectedCheckMarkColor = Color.FromArgb(255, 171, 63);
			m_MenuCheckMarkBorderColor = Color.FromArgb(255, 171, 63);
			m_MenuSelectedCheckMarkBorderColor = Color.FromArgb(251, 140, 60);
			m_MenuColumnStyleColor = Color.FromArgb(239, 239, 239);
			m_MenuSelectedItemBorderColor = Color.FromArgb(255, 189, 105);
			m_MenuSelectedItemColor = Color.FromArgb(255, 231, 162);
			m_MenuSeparatorColor = Color.FromArgb(145, 153, 164);
			m_MenuBorderColor = Color.FromArgb(145, 153, 164);
			m_MenuBackground = Color.FromArgb(246, 246, 246);
			m_dDBarItemBorderColor = Color.FromArgb(145, 153, 164);
			m_dDBarItemLightColor = Color.FromArgb(145, 153, 164);
			m_dDBarItemDarkColor = Color.FromArgb(103, 112, 124);
			m_DropDownHighlightLightColor = Color.FromArgb(255, 245, 204);
			m_DropDownHighlightDarkColor = Color.FromArgb(255, 219, 117);
			m_DropDownPressedLightColor = Color.FromArgb(252, 151, 61);
			m_DropDownPressedDarkColor = Color.FromArgb(255, 184, 94);
			m_ComboButtonLightColor = Color.FromArgb(200, 204, 209);
			m_ComboButtonDarkColor = Color.FromArgb(159, 166, 175);
			break;
		case Office2007Theme.Silver:
			m_MenuCheckMarkColor = Color.FromArgb(255, 189, 105);
			m_MenuSelectedCheckMarkColor = Color.FromArgb(255, 171, 63);
			m_MenuCheckMarkBorderColor = Color.FromArgb(255, 171, 63);
			m_MenuSelectedCheckMarkBorderColor = Color.FromArgb(251, 140, 60);
			m_MenuColumnStyleColor = Color.FromArgb(239, 239, 239);
			m_MenuSelectedItemBorderColor = Color.FromArgb(255, 189, 105);
			m_MenuSelectedItemColor = Color.FromArgb(255, 231, 162);
			m_MenuSeparatorColor = Color.FromArgb(110, 109, 143);
			m_MenuBorderColor = Color.FromArgb(124, 124, 148);
			m_MenuBackground = Color.FromArgb(253, 250, 255);
			m_dDBarItemBorderColor = Color.FromArgb(124, 124, 148);
			m_dDBarItemLightColor = Color.FromArgb(232, 233, 241);
			m_dDBarItemDarkColor = Color.FromArgb(180, 179, 200);
			m_DropDownHighlightLightColor = Color.FromArgb(255, 245, 204);
			m_DropDownHighlightDarkColor = Color.FromArgb(255, 219, 117);
			m_DropDownPressedLightColor = Color.FromArgb(252, 151, 61);
			m_DropDownPressedDarkColor = Color.FromArgb(255, 184, 94);
			m_ComboButtonLightColor = Color.FromArgb(238, 239, 246);
			m_ComboButtonDarkColor = Color.FromArgb(173, 172, 196);
			break;
		default:
			m_MenuCheckMarkColor = Color.FromArgb(255, 189, 105);
			m_MenuSelectedCheckMarkColor = Color.FromArgb(255, 171, 63);
			m_MenuCheckMarkBorderColor = Color.FromArgb(255, 171, 63);
			m_MenuSelectedCheckMarkBorderColor = Color.FromArgb(251, 140, 60);
			m_MenuColumnStyleColor = Color.FromArgb(233, 238, 238);
			m_MenuSelectedItemBorderColor = Color.FromArgb(255, 189, 105);
			m_MenuSelectedItemColor = Color.FromArgb(255, 231, 162);
			m_MenuSeparatorColor = Color.FromArgb(154, 198, 255);
			m_MenuBorderColor = Color.FromArgb(101, 147, 207);
			m_MenuBackground = Color.FromArgb(246, 246, 246);
			m_dDBarItemBorderColor = Color.FromArgb(101, 147, 207);
			m_dDBarItemLightColor = Color.FromArgb(227, 239, 254);
			m_dDBarItemDarkColor = Color.FromArgb(144, 185, 238);
			m_DropDownHighlightLightColor = Color.FromArgb(255, 245, 204);
			m_DropDownHighlightDarkColor = Color.FromArgb(255, 219, 117);
			m_DropDownPressedLightColor = Color.FromArgb(252, 151, 61);
			m_DropDownPressedDarkColor = Color.FromArgb(255, 184, 94);
			m_ComboButtonLightColor = Color.FromArgb(227, 239, 255);
			m_ComboButtonDarkColor = Color.FromArgb(191, 219, 255);
			break;
		}
	}

	static Office2007OutlookColors()
	{
		m_panelColor = Color.Empty;
		m_borderColor = Color.Empty;
		m_tabItemColor = Color.Empty;
		m_innerBorderColor = Color.Empty;
		m_leftAHPanelColor = Color.Empty;
		m_rightAHPanelColor = Color.Empty;
		m_MenuSelectedItemColor = Color.Empty;
		m_MenuSelectedItemBorderColor = Color.Empty;
		m_MenuBorderColor = Color.Empty;
		m_MenuSeparatorColor = Color.Empty;
		m_MenuColumnStyleColor = Color.Empty;
		m_MenuCheckMarkColor = Color.Empty;
		m_MenuSelectedCheckMarkColor = Color.Empty;
		m_MenuCheckMarkBorderColor = Color.Empty;
		m_MenuSelectedCheckMarkBorderColor = Color.Empty;
		m_MenuBackground = Color.Empty;
		m_BarItemHighlightBorderColor = Color.Empty;
		m_BarItemPressBorderColor = Color.Empty;
		m_BarItemCheckBorderColor = Color.Empty;
		m_BarItemHighlightLightColor = Color.Empty;
		m_BarItemHighlightDarkColor = Color.Empty;
		m_BarItemPressLightColor = Color.Empty;
		m_BarItemPressDarkColor = Color.Empty;
		m_BarItemCheckLightColor = Color.Empty;
		m_BarItemCheckDarkColor = Color.Empty;
		m_dDBarItemBorderColor = Color.Empty;
		m_dDBarItemLightColor = Color.Empty;
		m_dDBarItemDarkColor = Color.Empty;
		m_DropDownHighlightLightColor = Color.Empty;
		m_DropDownHighlightDarkColor = Color.Empty;
		m_DropDownPressedLightColor = Color.Empty;
		m_DropDownPressedDarkColor = Color.Empty;
		m_ComboButtonLightColor = Color.Empty;
		m_ComboButtonDarkColor = Color.Empty;
		UpdateMenuColors(Office2007Theme.Blue);
	}
}
