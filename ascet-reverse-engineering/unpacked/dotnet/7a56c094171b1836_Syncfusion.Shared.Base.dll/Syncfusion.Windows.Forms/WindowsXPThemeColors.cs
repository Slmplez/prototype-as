using System.Drawing;

namespace Syncfusion.Windows.Forms;

public class WindowsXPThemeColors
{
	private static Color m_tabControlAdvTabPanelBackGroundColor;

	private static Color m_tabControlAdvActiveTopTabColor;

	private static Color m_tabControlAdvActiveBottomTabColor;

	private static Color m_tabControlAdvInactiveTopTabColor;

	private static Color m_tabControlAdvInactiveBottomTabColor;

	private static Color m_tabControlAdvHighLightedTopTabColor;

	private static Color m_tabControlAdvHighLightedBottomTabColor;

	private static Color m_tabControlAdvActiveBorderColor;

	private static Color m_tabControlAdvInactiveBorderColor;

	private static Color m_tabControlAdvLightBorderColor;

	public static Color TabControlAdvTabPanelBackGroundColor
	{
		get
		{
			return m_tabControlAdvTabPanelBackGroundColor;
		}
		set
		{
			if (m_tabControlAdvTabPanelBackGroundColor != value)
			{
				m_tabControlAdvTabPanelBackGroundColor = value;
			}
		}
	}

	public static Color TabControlAdvActiveTopTabColor
	{
		get
		{
			return m_tabControlAdvActiveTopTabColor;
		}
		set
		{
			if (m_tabControlAdvActiveTopTabColor != value)
			{
				m_tabControlAdvActiveTopTabColor = value;
			}
		}
	}

	public static Color TabControlAdvActiveBottomTabColor
	{
		get
		{
			return m_tabControlAdvActiveBottomTabColor;
		}
		set
		{
			if (m_tabControlAdvActiveBottomTabColor != value)
			{
				m_tabControlAdvActiveBottomTabColor = value;
			}
		}
	}

	public static Color TabControlAdvInactiveTopTabColor
	{
		get
		{
			return m_tabControlAdvInactiveTopTabColor;
		}
		set
		{
			if (m_tabControlAdvInactiveTopTabColor != value)
			{
				m_tabControlAdvInactiveTopTabColor = value;
			}
		}
	}

	public static Color TabControlAdvInactiveBottomTabColor
	{
		get
		{
			return m_tabControlAdvInactiveBottomTabColor;
		}
		set
		{
			if (m_tabControlAdvInactiveBottomTabColor != value)
			{
				m_tabControlAdvInactiveBottomTabColor = value;
			}
		}
	}

	public static Color TabControlAdvHighLightedTopTabColor
	{
		get
		{
			return m_tabControlAdvHighLightedTopTabColor;
		}
		set
		{
			if (m_tabControlAdvHighLightedTopTabColor != value)
			{
				m_tabControlAdvHighLightedTopTabColor = value;
			}
		}
	}

	public static Color TabControlAdvHighLightedBottomTabColor
	{
		get
		{
			return m_tabControlAdvHighLightedBottomTabColor;
		}
		set
		{
			if (m_tabControlAdvHighLightedBottomTabColor != value)
			{
				m_tabControlAdvHighLightedBottomTabColor = value;
			}
		}
	}

	public static Color TabControlAdvActiveBorderColor
	{
		get
		{
			return m_tabControlAdvActiveBorderColor;
		}
		set
		{
			if (m_tabControlAdvActiveBorderColor != value)
			{
				m_tabControlAdvActiveBorderColor = value;
			}
		}
	}

	public static Color TabControlAdvInactiveBorderColor
	{
		get
		{
			return m_tabControlAdvInactiveBorderColor;
		}
		set
		{
			if (m_tabControlAdvInactiveBorderColor != value)
			{
				m_tabControlAdvInactiveBorderColor = value;
			}
		}
	}

	public static Color TabControlAdvLightBorderColor
	{
		get
		{
			return m_tabControlAdvLightBorderColor;
		}
		set
		{
			if (m_tabControlAdvLightBorderColor != value)
			{
				m_tabControlAdvLightBorderColor = value;
			}
		}
	}

	static WindowsXPThemeColors()
	{
		m_tabControlAdvTabPanelBackGroundColor = Color.Empty;
		m_tabControlAdvActiveTopTabColor = Color.Empty;
		m_tabControlAdvActiveBottomTabColor = Color.Empty;
		m_tabControlAdvInactiveTopTabColor = Color.Empty;
		m_tabControlAdvInactiveBottomTabColor = Color.Empty;
		m_tabControlAdvHighLightedTopTabColor = Color.Empty;
		m_tabControlAdvHighLightedBottomTabColor = Color.Empty;
		m_tabControlAdvActiveBorderColor = Color.Empty;
		m_tabControlAdvInactiveBorderColor = Color.Empty;
		m_tabControlAdvLightBorderColor = Color.Empty;
		UpdateColors();
	}

	public static void UpdateColors()
	{
		if (XPThemes.IsThemedOS && XPThemes.IsThemeActive && XPThemes.IsAppThemed)
		{
			if (XPThemes.IsDefaultBlueThemeOn)
			{
				m_tabControlAdvTabPanelBackGroundColor = Color.FromArgb(232, 232, 219);
				m_tabControlAdvActiveTopTabColor = Color.FromArgb(251, 252, 253);
				m_tabControlAdvActiveBottomTabColor = Color.FromArgb(193, 210, 238);
				m_tabControlAdvInactiveTopTabColor = Color.FromArgb(253, 253, 252);
				m_tabControlAdvInactiveBottomTabColor = Color.FromArgb(238, 236, 221);
				m_tabControlAdvHighLightedTopTabColor = Color.FromArgb(220, 226, 231);
				m_tabControlAdvHighLightedBottomTabColor = Color.FromArgb(162, 187, 226);
				m_tabControlAdvActiveBorderColor = Color.FromArgb(152, 181, 226);
				m_tabControlAdvInactiveBorderColor = Color.FromArgb(172, 168, 153);
				m_tabControlAdvLightBorderColor = Color.FromArgb(225, 233, 246);
			}
			else if (XPThemes.IsSilverThemeOn)
			{
				m_tabControlAdvTabPanelBackGroundColor = Color.FromArgb(223, 223, 234);
				m_tabControlAdvActiveTopTabColor = Color.FromArgb(250, 251, 247);
				m_tabControlAdvActiveBottomTabColor = Color.FromArgb(225, 226, 236);
				m_tabControlAdvInactiveTopTabColor = Color.FromArgb(253, 253, 252);
				m_tabControlAdvInactiveBottomTabColor = Color.FromArgb(244, 244, 248);
				m_tabControlAdvHighLightedTopTabColor = Color.FromArgb(248, 248, 253);
				m_tabControlAdvHighLightedBottomTabColor = Color.FromArgb(255, 198, 122);
				m_tabControlAdvActiveBorderColor = Color.FromArgb(147, 145, 176);
				m_tabControlAdvInactiveBorderColor = Color.FromArgb(172, 168, 153);
				m_tabControlAdvLightBorderColor = Color.FromArgb(249, 249, 255);
			}
			else if (XPThemes.IsOliveGreenThemeOn)
			{
				m_tabControlAdvTabPanelBackGroundColor = Color.FromArgb(233, 232, 219);
				m_tabControlAdvActiveTopTabColor = Color.FromArgb(246, 246, 252);
				m_tabControlAdvActiveBottomTabColor = Color.FromArgb(182, 198, 141);
				m_tabControlAdvInactiveTopTabColor = Color.FromArgb(254, 254, 254);
				m_tabControlAdvInactiveBottomTabColor = Color.FromArgb(238, 236, 221);
				m_tabControlAdvHighLightedTopTabColor = Color.FromArgb(248, 248, 243);
				m_tabControlAdvHighLightedBottomTabColor = Color.FromArgb(175, 175, 142);
				m_tabControlAdvActiveBorderColor = Color.FromArgb(147, 160, 112);
				m_tabControlAdvInactiveBorderColor = Color.FromArgb(157, 157, 161);
				m_tabControlAdvLightBorderColor = Color.FromArgb(227, 233, 212);
			}
		}
		else
		{
			m_tabControlAdvTabPanelBackGroundColor = Color.FromArgb(212, 212, 212);
			m_tabControlAdvActiveTopTabColor = Color.FromArgb(251, 251, 251);
			m_tabControlAdvActiveBottomTabColor = Color.FromArgb(192, 192, 192);
			m_tabControlAdvInactiveTopTabColor = Color.FromArgb(192, 192, 192);
			m_tabControlAdvInactiveBottomTabColor = Color.FromArgb(192, 192, 192);
			m_tabControlAdvHighLightedTopTabColor = Color.White;
			m_tabControlAdvHighLightedBottomTabColor = Color.White;
			m_tabControlAdvActiveBorderColor = Color.FromArgb(128, 128, 128);
			m_tabControlAdvInactiveBorderColor = Color.FromArgb(128, 128, 128);
			m_tabControlAdvLightBorderColor = Color.FromArgb(217, 217, 217);
		}
	}
}
