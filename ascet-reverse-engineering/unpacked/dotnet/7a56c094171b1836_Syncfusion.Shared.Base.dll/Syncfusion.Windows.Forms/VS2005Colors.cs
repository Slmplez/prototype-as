using System;
using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms;

public class VS2005Colors
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

	private static Color m_MenuColumnStyleDarkColor;

	private static Color m_MenuColumnStyleLightColor;

	private static Color m_MenuCheckMarkColor;

	private static Color m_MenuSelectedCheckMarkColor;

	private static Color m_MenuBackground;

	private static Color m_BarItemHighlightBorderColor;

	private static Color m_BarItemPressBorderColor;

	private static Color m_BarItemCheckBorderColor;

	private static Color m_BarItemHighlightLightColor;

	private static Color m_BarItemHighlightDarkColor;

	private static Color m_BarItemPressLightColor;

	private static Color m_BarItemPressDarkColor;

	private static Color m_BarItemSeparatorColor;

	private static Color m_BarItemCheckLightColor;

	private static Color m_BarItemCheckDarkColor;

	private static Color m_dDBarItemBorderColor;

	private static Color m_dDBarItemLightColor;

	private static Color m_dDBarItemDarkColor;

	private static Color m_dockBarLightColor;

	private static Color m_dockBarDarkColor;

	private static Color m_CommandBarDropDownLightColor;

	private static Color m_CommandBarDropDownDarkColor;

	private static Color m_CommandBarDarkColor;

	private static Color m_CommandBarLightColor;

	private static Color m_CommandBarBorderColor;

	private static Color m_DropDownHighlightLightColor;

	private static Color m_DropDownHighlightDarkColor;

	private static Color m_DropDownPressedLightColor;

	private static Color m_DropDownPressedDarkColor;

	private static Color m_FloatPressButtonColor;

	private static Color m_FloatPressButtonBorderColor;

	private static Color m_FloatCommandBarLightColor;

	private static Color m_FloatCommandBarDarkColor;

	private static Color m_FloatLightBorderColor;

	private static Color m_FloatBackgroundColor;

	private static Color m_FloatBorderColor;

	private static Color m_FloatCaptionColor;

	private static bool needToUpdateColors;

	private static bool needToUpdateStyleColors;

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

	public static Color MenuColumnStyleDarkColor
	{
		get
		{
			return m_MenuColumnStyleDarkColor;
		}
		set
		{
			if (m_MenuColumnStyleDarkColor != value)
			{
				m_MenuColumnStyleDarkColor = value;
			}
		}
	}

	public static Color MenuColumnStyleLightColor
	{
		get
		{
			return m_MenuColumnStyleLightColor;
		}
		set
		{
			if (m_MenuColumnStyleLightColor != value)
			{
				m_MenuColumnStyleLightColor = value;
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

	public static Color BarItemSeparatorColor
	{
		get
		{
			return m_BarItemSeparatorColor;
		}
		set
		{
			if (m_BarItemSeparatorColor != value)
			{
				m_BarItemSeparatorColor = value;
			}
		}
	}

	public static Color DockBarLightColor
	{
		get
		{
			return m_dockBarLightColor;
		}
		set
		{
			if (m_dockBarLightColor != value)
			{
				m_dockBarLightColor = value;
			}
		}
	}

	public static Color DockBarDarkColor
	{
		get
		{
			return m_dockBarDarkColor;
		}
		set
		{
			if (m_dockBarDarkColor != value)
			{
				m_dockBarDarkColor = value;
			}
		}
	}

	public static Color CommandBarDropDownLightColor
	{
		get
		{
			return m_CommandBarDropDownLightColor;
		}
		set
		{
			if (m_CommandBarDropDownLightColor != value)
			{
				m_CommandBarDropDownLightColor = value;
			}
		}
	}

	public static Color CommandBarDropDownDarkColor
	{
		get
		{
			return m_CommandBarDropDownDarkColor;
		}
		set
		{
			if (m_CommandBarDropDownDarkColor != value)
			{
				m_CommandBarDropDownDarkColor = value;
			}
		}
	}

	public static Color CommandBarDarkColor
	{
		get
		{
			return m_CommandBarDarkColor;
		}
		set
		{
			if (m_CommandBarDarkColor != value)
			{
				m_CommandBarDarkColor = value;
			}
		}
	}

	public static Color CommandBarLightColor
	{
		get
		{
			return m_CommandBarLightColor;
		}
		set
		{
			if (m_CommandBarLightColor != value)
			{
				m_CommandBarLightColor = value;
			}
		}
	}

	public static Color CommandBarBorderColor
	{
		get
		{
			return m_CommandBarBorderColor;
		}
		set
		{
			if (m_CommandBarBorderColor != value)
			{
				m_CommandBarBorderColor = value;
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

	public static Color FloatPressButtonColor
	{
		get
		{
			return m_FloatPressButtonColor;
		}
		set
		{
			if (m_FloatPressButtonColor != value)
			{
				m_FloatPressButtonColor = value;
			}
		}
	}

	public static Color FloatPressButtonBorderColor
	{
		get
		{
			return m_FloatPressButtonBorderColor;
		}
		set
		{
			if (m_FloatPressButtonBorderColor != value)
			{
				m_FloatPressButtonBorderColor = value;
			}
		}
	}

	public static Color FloatCommandBarLightColor
	{
		get
		{
			return m_FloatCommandBarLightColor;
		}
		set
		{
			if (m_FloatCommandBarLightColor != value)
			{
				m_FloatCommandBarLightColor = value;
			}
		}
	}

	public static Color FloatCommandBarDarkColor
	{
		get
		{
			return m_FloatCommandBarDarkColor;
		}
		set
		{
			if (m_FloatCommandBarDarkColor != value)
			{
				m_FloatCommandBarDarkColor = value;
			}
		}
	}

	public static Color FloatLightBorderColor
	{
		get
		{
			return m_FloatLightBorderColor;
		}
		set
		{
			if (m_FloatLightBorderColor != value)
			{
				m_FloatLightBorderColor = value;
			}
		}
	}

	public static Color FloatBackgroundColor
	{
		get
		{
			return m_FloatBackgroundColor;
		}
		set
		{
			if (m_FloatBackgroundColor != value)
			{
				m_FloatBackgroundColor = value;
			}
		}
	}

	public static Color FloatBorderColor
	{
		get
		{
			return m_FloatBorderColor;
		}
		set
		{
			if (m_FloatBorderColor != value)
			{
				m_FloatBorderColor = value;
			}
		}
	}

	public static Color FloatCaptionColor
	{
		get
		{
			return m_FloatCaptionColor;
		}
		set
		{
			if (m_FloatCaptionColor != value)
			{
				m_FloatCaptionColor = value;
			}
		}
	}

	public static event EventHandler MenuColorsChanged;

	public static void UpdateStyleColors()
	{
		if (!needToUpdateStyleColors)
		{
			return;
		}
		needToUpdateStyleColors = false;
		if (XPThemes.IsThemedOS && XPThemes.IsThemeActive && XPThemes.IsAppThemed)
		{
			if (XPThemes.IsDefaultBlueThemeOn || XPThemes.IsOliveGreenThemeOn)
			{
				m_panelColor = Color.FromArgb(229, 229, 215);
				m_borderColor = Color.FromArgb(172, 168, 153);
				m_innerBorderColor = Color.FromArgb(226, 222, 197);
				m_tabItemColor = Color.FromArgb(236, 232, 215);
				m_leftAHPanelColor = Color.FromArgb(229, 229, 215);
				m_rightAHPanelColor = Color.FromArgb(244, 242, 232);
			}
			else if (XPThemes.IsSilverThemeOn)
			{
				m_panelColor = Color.FromArgb(215, 215, 229);
				m_borderColor = Color.FromArgb(145, 155, 156);
				m_innerBorderColor = Color.FromArgb(190, 190, 216);
				m_tabItemColor = Color.FromArgb(243, 243, 247);
				m_leftAHPanelColor = Color.FromArgb(215, 215, 229);
				m_rightAHPanelColor = Color.FromArgb(247, 243, 247);
			}
			else
			{
				m_borderColor = Color.FromArgb(128, 128, 128);
				m_panelColor = Color.FromArgb(212, 208, 200);
				m_tabItemColor = Color.FromArgb(212, 208, 200);
				m_innerBorderColor = Color.FromArgb(128, 128, 128);
				m_rightAHPanelColor = Color.FromArgb(246, 245, 244);
				m_leftAHPanelColor = Color.FromArgb(212, 208, 200);
			}
		}
		else
		{
			m_borderColor = Color.FromArgb(128, 128, 128);
			m_panelColor = Color.FromArgb(212, 208, 200);
			m_tabItemColor = Color.FromArgb(212, 208, 200);
			m_innerBorderColor = Color.FromArgb(128, 128, 128);
			m_rightAHPanelColor = Color.FromArgb(246, 245, 244);
			m_leftAHPanelColor = Color.FromArgb(212, 208, 200);
		}
		OnMenuColorsChanged(EventArgs.Empty);
	}

	public static void UpdateMenuColors()
	{
		bool flag = false;
		if (!needToUpdateColors)
		{
			return;
		}
		needToUpdateColors = false;
		if (XPThemes.IsThemedOS && XPThemes.IsThemeActive && XPThemes.IsAppThemed)
		{
			if (XPThemes.IsDefaultBlueThemeOn)
			{
				m_MenuCheckMarkColor = Color.FromArgb(225, 230, 232);
				m_MenuSelectedCheckMarkColor = Color.FromArgb(49, 106, 197);
				m_MenuColumnStyleDarkColor = Color.FromArgb(196, 195, 172);
				m_MenuColumnStyleLightColor = Color.FromArgb(254, 254, 251);
				m_MenuSelectedItemBorderColor = Color.FromArgb(49, 106, 197);
				m_MenuSelectedItemColor = Color.FromArgb(193, 210, 238);
				m_MenuSeparatorColor = Color.FromArgb(197, 194, 184);
				m_MenuBorderColor = Color.FromArgb(138, 134, 122);
				m_MenuBackground = Color.FromArgb(252, 252, 249);
				m_BarItemHighlightBorderColor = Color.FromArgb(49, 106, 197);
				m_BarItemPressBorderColor = Color.FromArgb(75, 75, 111);
				m_BarItemCheckBorderColor = Color.FromArgb(75, 75, 111);
				m_BarItemHighlightLightColor = Color.FromArgb(193, 210, 238);
				m_BarItemHighlightDarkColor = Color.FromArgb(193, 210, 238);
				m_BarItemPressLightColor = Color.FromArgb(152, 181, 226);
				m_BarItemPressDarkColor = Color.FromArgb(152, 181, 226);
				m_BarItemSeparatorColor = Color.FromArgb(197, 194, 184);
				m_BarItemCheckLightColor = Color.FromArgb(225, 230, 232);
				m_BarItemCheckDarkColor = Color.FromArgb(225, 230, 232);
				m_dDBarItemBorderColor = Color.FromArgb(138, 134, 122);
				m_dDBarItemLightColor = Color.FromArgb(251, 251, 249);
				m_dDBarItemDarkColor = Color.FromArgb(247, 245, 239);
				m_dockBarDarkColor = Color.FromArgb(229, 229, 215);
				m_dockBarLightColor = Color.FromArgb(243, 242, 231);
				m_CommandBarDropDownDarkColor = Color.FromArgb(172, 168, 153);
				m_CommandBarDropDownLightColor = Color.FromArgb(239, 238, 235);
				m_CommandBarDarkColor = Color.FromArgb(192, 192, 168);
				m_CommandBarLightColor = Color.FromArgb(250, 249, 245);
				m_CommandBarBorderColor = Color.FromArgb(163, 163, 124);
				m_DropDownHighlightLightColor = Color.FromArgb(193, 210, 238);
				m_DropDownHighlightDarkColor = Color.FromArgb(193, 210, 238);
				m_DropDownPressedLightColor = Color.FromArgb(225, 230, 232);
				m_DropDownPressedDarkColor = Color.FromArgb(225, 230, 232);
				m_FloatPressButtonColor = Color.FromArgb(239, 237, 222);
				m_FloatPressButtonBorderColor = Color.FromArgb(138, 134, 122);
				m_FloatCommandBarLightColor = Color.FromArgb(251, 250, 247);
				m_FloatCommandBarDarkColor = Color.FromArgb(200, 199, 178);
				m_FloatLightBorderColor = Color.FromArgb(239, 237, 222);
				m_FloatBackgroundColor = Color.FromArgb(172, 168, 153);
				m_FloatBorderColor = Color.FromArgb(146, 143, 130);
				m_FloatCaptionColor = Color.White;
			}
			else if (XPThemes.IsOliveGreenThemeOn)
			{
				m_MenuCheckMarkColor = Color.FromArgb(194, 207, 158);
				m_MenuSelectedCheckMarkColor = Color.FromArgb(147, 160, 112);
				m_MenuColumnStyleDarkColor = Color.FromArgb(196, 195, 172);
				m_MenuColumnStyleLightColor = Color.FromArgb(254, 254, 251);
				m_MenuSelectedItemBorderColor = Color.FromArgb(147, 160, 112);
				m_MenuSelectedItemColor = Color.FromArgb(182, 198, 141);
				m_MenuSeparatorColor = Color.FromArgb(197, 194, 184);
				m_MenuBorderColor = Color.FromArgb(138, 134, 122);
				m_MenuBackground = Color.FromArgb(252, 252, 249);
				m_BarItemHighlightBorderColor = Color.FromArgb(147, 160, 112);
				m_BarItemPressBorderColor = Color.FromArgb(147, 160, 112);
				m_BarItemCheckBorderColor = Color.FromArgb(147, 160, 112);
				m_BarItemHighlightLightColor = Color.FromArgb(182, 198, 141);
				m_BarItemHighlightDarkColor = Color.FromArgb(182, 198, 141);
				m_BarItemPressLightColor = Color.FromArgb(147, 160, 112);
				m_BarItemPressDarkColor = Color.FromArgb(147, 160, 112);
				m_BarItemSeparatorColor = Color.FromArgb(197, 194, 184);
				m_BarItemCheckLightColor = Color.FromArgb(182, 198, 141);
				m_BarItemCheckDarkColor = Color.FromArgb(182, 198, 141);
				m_dDBarItemBorderColor = Color.FromArgb(138, 134, 122);
				m_dDBarItemLightColor = Color.FromArgb(251, 251, 249);
				m_dDBarItemDarkColor = Color.FromArgb(247, 245, 239);
				m_dockBarDarkColor = Color.FromArgb(229, 229, 215);
				m_dockBarLightColor = Color.FromArgb(243, 242, 231);
				m_CommandBarDropDownDarkColor = Color.FromArgb(172, 168, 153);
				m_CommandBarDropDownLightColor = Color.FromArgb(239, 238, 235);
				m_CommandBarDarkColor = Color.FromArgb(192, 192, 168);
				m_CommandBarLightColor = Color.FromArgb(250, 249, 245);
				m_CommandBarBorderColor = Color.FromArgb(163, 163, 124);
				m_DropDownHighlightLightColor = Color.FromArgb(223, 227, 212);
				m_DropDownHighlightDarkColor = Color.FromArgb(223, 227, 212);
				m_DropDownPressedLightColor = Color.FromArgb(194, 207, 158);
				m_DropDownPressedDarkColor = Color.FromArgb(194, 207, 158);
				m_FloatPressButtonColor = Color.FromArgb(239, 237, 222);
				m_FloatPressButtonBorderColor = Color.FromArgb(138, 134, 122);
				m_FloatCommandBarLightColor = Color.FromArgb(251, 250, 247);
				m_FloatCommandBarDarkColor = Color.FromArgb(200, 199, 178);
				m_FloatLightBorderColor = Color.FromArgb(239, 237, 222);
				m_FloatBackgroundColor = Color.FromArgb(172, 168, 153);
				m_FloatBorderColor = Color.FromArgb(146, 143, 130);
				m_FloatCaptionColor = Color.White;
			}
			else if (XPThemes.IsSilverThemeOn)
			{
				m_MenuCheckMarkColor = Color.FromArgb(255, 192, 111);
				m_MenuSelectedCheckMarkColor = Color.FromArgb(254, 128, 62);
				m_MenuColumnStyleDarkColor = Color.FromArgb(159, 157, 185);
				m_MenuColumnStyleLightColor = Color.FromArgb(249, 249, 254);
				m_MenuSelectedItemBorderColor = Color.FromArgb(75, 75, 111);
				m_MenuSelectedItemColor = Color.FromArgb(254, 238, 194);
				m_MenuSeparatorColor = Color.FromArgb(110, 109, 143);
				m_MenuBorderColor = Color.FromArgb(124, 124, 148);
				m_MenuBackground = Color.FromArgb(253, 250, 255);
				m_BarItemHighlightBorderColor = Color.FromArgb(75, 75, 111);
				m_BarItemPressBorderColor = Color.FromArgb(75, 75, 111);
				m_BarItemCheckBorderColor = Color.FromArgb(75, 75, 111);
				m_BarItemHighlightLightColor = Color.FromArgb(255, 244, 204);
				m_BarItemHighlightDarkColor = Color.FromArgb(255, 208, 145);
				m_BarItemPressLightColor = Color.FromArgb(254, 145, 78);
				m_BarItemPressDarkColor = Color.FromArgb(255, 211, 142);
				m_BarItemSeparatorColor = Color.FromArgb(110, 109, 143);
				m_BarItemCheckLightColor = Color.FromArgb(255, 213, 140);
				m_BarItemCheckDarkColor = Color.FromArgb(255, 173, 85);
				m_dDBarItemBorderColor = Color.FromArgb(124, 124, 148);
				m_dDBarItemLightColor = Color.FromArgb(232, 233, 241);
				m_dDBarItemDarkColor = Color.FromArgb(186, 185, 205);
				m_dockBarDarkColor = Color.FromArgb(215, 215, 229);
				m_dockBarLightColor = Color.FromArgb(243, 243, 247);
				m_CommandBarDropDownDarkColor = Color.FromArgb(118, 116, 146);
				m_CommandBarDropDownLightColor = Color.FromArgb(179, 178, 200);
				m_CommandBarDarkColor = Color.FromArgb(153, 151, 181);
				m_CommandBarLightColor = Color.FromArgb(243, 244, 250);
				m_CommandBarBorderColor = Color.FromArgb(124, 124, 148);
				m_DropDownHighlightLightColor = Color.FromArgb(255, 248, 211);
				m_DropDownHighlightDarkColor = Color.FromArgb(255, 193, 118);
				m_DropDownPressedLightColor = Color.FromArgb(254, 149, 82);
				m_DropDownPressedDarkColor = Color.FromArgb(255, 217, 149);
				m_FloatPressButtonColor = Color.FromArgb(214, 211, 231);
				m_FloatPressButtonBorderColor = Color.FromArgb(124, 124, 148);
				m_FloatCommandBarLightColor = Color.FromArgb(245, 245, 252);
				m_FloatCommandBarDarkColor = Color.FromArgb(166, 165, 191);
				m_FloatLightBorderColor = Color.FromArgb(219, 218, 228);
				m_FloatBackgroundColor = Color.FromArgb(122, 121, 153);
				m_FloatBorderColor = Color.FromArgb(122, 121, 153);
				m_FloatCaptionColor = Color.White;
			}
			else
			{
				flag = true;
			}
		}
		else
		{
			flag = true;
		}
		if (flag)
		{
			MenuColors.UpdateMenuColors();
			m_MenuBackground = Color.FromArgb(252, 252, 249);
			m_MenuCheckMarkColor = MenuColors.CheckedSelColor;
			m_MenuSelectedCheckMarkColor = MenuColors.CheckedSelColor;
			m_MenuColumnStyleDarkColor = SystemColors.Control;
			m_MenuColumnStyleLightColor = SystemColors.Window;
			m_MenuSelectedItemBorderColor = MenuColors.SelBorderColor;
			m_MenuSelectedItemColor = MenuColors.SelColor;
			m_MenuSeparatorColor = SystemColors.ControlDarkDark;
			m_MenuBorderColor = MenuColors.DropDownBorderColor;
			m_BarItemHighlightBorderColor = MenuColors.SelBorderColor;
			m_BarItemPressBorderColor = MenuColors.SelBorderColor;
			m_BarItemCheckBorderColor = MenuColors.SelBorderColor;
			m_BarItemHighlightLightColor = MenuColors.SelColor;
			m_BarItemHighlightDarkColor = MenuColors.SelColor;
			m_BarItemPressLightColor = ControlPaint.Dark(MenuColors.SelColor, -0.3f);
			m_BarItemPressDarkColor = m_BarItemPressLightColor;
			m_BarItemSeparatorColor = SystemColors.ControlDark;
			m_BarItemCheckLightColor = ControlPaint.Dark(MenuColors.SelColor, -0.3f);
			m_BarItemCheckDarkColor = m_BarItemCheckLightColor;
			m_dDBarItemBorderColor = MenuColors.DropDownBorderColor;
			m_dDBarItemLightColor = SystemColors.ControlLightLight;
			m_dDBarItemDarkColor = SystemColors.ControlLightLight;
			m_dockBarDarkColor = SystemColors.Control;
			m_dockBarLightColor = MenuColors.MenuBGColor;
			m_CommandBarDropDownDarkColor = SystemColors.ControlDark;
			m_CommandBarDropDownLightColor = ControlPaint.Light(SystemColors.ControlDark, 1.7f);
			m_CommandBarDarkColor = SystemColors.Control;
			m_CommandBarLightColor = SystemColors.Window;
			m_CommandBarBorderColor = SystemColors.Control;
			m_DropDownHighlightLightColor = MenuColors.SelColor;
			m_DropDownHighlightDarkColor = MenuColors.SelColor;
			m_DropDownPressedLightColor = ControlPaint.Light(MenuColors.SelColor, 0.7f);
			m_DropDownPressedDarkColor = ControlPaint.Light(MenuColors.SelColor, 0.85f);
			m_FloatPressButtonColor = SystemColors.Control;
			m_FloatPressButtonBorderColor = MenuColors.FloatingCommandBarCaptionColor;
			m_FloatCommandBarLightColor = ControlPaint.Light(SystemColors.Control, 1f);
			m_FloatCommandBarDarkColor = SystemColors.Control;
			m_FloatLightBorderColor = SystemColors.InactiveBorder;
			m_FloatBorderColor = ControlPaint.Dark(SystemColors.ControlDark, -0.2f);
			m_FloatBackgroundColor = SystemColors.ControlDark;
			m_FloatCaptionColor = Color.White;
		}
		OnMenuColorsChanged(EventArgs.Empty);
	}

	private static void OnMenuColorsChanged(EventArgs e)
	{
		if (VS2005Colors.MenuColorsChanged != null)
		{
			VS2005Colors.MenuColorsChanged(null, e);
		}
	}

	static VS2005Colors()
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
		m_MenuColumnStyleDarkColor = Color.Empty;
		m_MenuColumnStyleLightColor = Color.Empty;
		m_MenuCheckMarkColor = Color.Empty;
		m_MenuSelectedCheckMarkColor = Color.Empty;
		m_MenuBackground = Color.Empty;
		m_BarItemHighlightBorderColor = Color.Empty;
		m_BarItemPressBorderColor = Color.Empty;
		m_BarItemCheckBorderColor = Color.Empty;
		m_BarItemHighlightLightColor = Color.Empty;
		m_BarItemHighlightDarkColor = Color.Empty;
		m_BarItemPressLightColor = Color.Empty;
		m_BarItemPressDarkColor = Color.Empty;
		m_BarItemSeparatorColor = Color.Empty;
		m_BarItemCheckLightColor = Color.Empty;
		m_BarItemCheckDarkColor = Color.Empty;
		m_dDBarItemBorderColor = Color.Empty;
		m_dDBarItemLightColor = Color.Empty;
		m_dDBarItemDarkColor = Color.Empty;
		m_dockBarLightColor = Color.Empty;
		m_dockBarDarkColor = Color.Empty;
		m_CommandBarDropDownLightColor = Color.Empty;
		m_CommandBarDropDownDarkColor = Color.Empty;
		m_CommandBarDarkColor = Color.Empty;
		m_CommandBarLightColor = Color.Empty;
		m_CommandBarBorderColor = Color.Empty;
		m_DropDownHighlightLightColor = Color.Empty;
		m_DropDownHighlightDarkColor = Color.Empty;
		m_DropDownPressedLightColor = Color.Empty;
		m_DropDownPressedDarkColor = Color.Empty;
		m_FloatPressButtonColor = Color.Empty;
		m_FloatPressButtonBorderColor = Color.Empty;
		m_FloatCommandBarLightColor = Color.Empty;
		m_FloatCommandBarDarkColor = Color.Empty;
		m_FloatLightBorderColor = Color.Empty;
		m_FloatBackgroundColor = Color.Empty;
		m_FloatBorderColor = Color.Empty;
		m_FloatCaptionColor = Color.Empty;
		needToUpdateColors = true;
		needToUpdateStyleColors = true;
		UpdateStyleColors();
		UpdateMenuColors();
	}
}
