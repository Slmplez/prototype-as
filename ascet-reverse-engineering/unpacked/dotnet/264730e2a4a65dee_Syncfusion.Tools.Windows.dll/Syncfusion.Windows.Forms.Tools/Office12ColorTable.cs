using System;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Tools.Win32API;

namespace Syncfusion.Windows.Forms.Tools;

public class Office12ColorTable : ProfessionalColorTable
{
	protected enum OFFICECOLOR
	{
		launcherBackground = 0,
		launcherBorder = 1,
		launcherText = 2,
		launcherTextSelected = 3,
		menuButtonNormalHighlight = 4,
		menuButtonSelected = 5,
		menuButtonSelectedHighlight = 6,
		menuButtonPressed = 7,
		menuButtonPressedHighlight = 8,
		gripGradientEnd = 9,
		selectedButtonInActiveBegin = 10,
		selectedButtonInActiveEnd = 11,
		scrollButtonArrowDisabled = 12,
		ribbonPanelGroupedBorderEnd = 13,
		themesColorFirst = 14,
		toolStripGradientBegin = 14,
		toolStripGradientEnd = 15,
		toolStripHighlightGradientBegin = 16,
		toolStripHighlightGradientEnd = 17,
		toolStripSeparatorDark = 18,
		toolStripSeparatorLight = 19,
		imageMarginGradientBegin = 20,
		imageMarginGradientEnd = 21,
		captionGradientBegin = 22,
		captionGradientEnd = 23,
		captionHighlightGradientBegin = 24,
		captionHighlightGradientEnd = 25,
		captionGroupedGradientBegin = 26,
		captionGroupedGradientEnd = 27,
		captionGroupedHighlightGradientBegin = 28,
		captionGroupedHighlightGradientEnd = 29,
		captionText = 30,
		checkBorder = 31,
		groupGradientBegin = 32,
		groupGradientEnd = 33,
		groupBorder = 34,
		ribbonBorder = 35,
		ribbonBorderInactive = 36,
		ribbonText = 37,
		ribbonTabText = 38,
		ribbonTabInactiveText = 39,
		ribbonTitleText = 40,
		quickPanelGradientBegin = 41,
		quickPanelGradientEnd = 42,
		quickPanelGradientBeginInactive = 43,
		quickPanelGradientEndInactive = 44,
		systemButtonGradientBegin = 45,
		systemButtonGradientEnd = 46,
		systemButtonBorder = 47,
		sysButtonSelectedGradientBegin = 48,
		sysButtonSelectedGradientEnd = 49,
		sysButtonSelectedHighlight = 50,
		sysButtonBorderSelected = 51,
		sysButtonPressedGradientBegin = 52,
		sysButtonPressedGradientEnd = 53,
		sysButtonPressedHighlight = 54,
		sysButtonForeground = 55,
		sysButtonForegroundSelected = 56,
		sysButtonBorderPressed = 57,
		menuButtonNormal = 58,
		menuButtonDropDownGradientBegin = 59,
		menuButtonDropDownGradientEnd = 60,
		menuButtomDropDownBorder = 61,
		collapsedToolstripGradientBegin = 62,
		collapsedToolstripGradientEnd = 63,
		collapsedToolstripSelectedGradientBegin = 64,
		collapsedToolstripSelectedGradientEnd = 65,
		collapsedToolstripPressedGradientBegin = 66,
		collapsedToolstripPressedGradientEnd = 67,
		collapsedImageGradientBegin = 68,
		collapsedImageGradientEnd = 69,
		collapsedImagePressedGradientBegin = 70,
		collapsedImagePressedGradientEnd = 71,
		activeTitleGradientBegin = 72,
		activeTitleGradientEnd = 73,
		inactiveTitleGradientBegin = 74,
		inactiveTitleGradientEnd = 75,
		separatorBegin = 76,
		separatorEnd = 77,
		separatorGradientBegin = 78,
		separatorGradientMiddle = 79,
		separatorGradientEnd = 80,
		separatorStatusControlsAreaBegin = 81,
		separatorStatusControlsAreaEnd = 82,
		contextMenuTitle = 83,
		bottomToolstrip = 84,
		panelBackground = 85,
		officeArrowGradientBegin = 86,
		officeArrowGradientEnd = 87,
		scrollButtonGradientBegin = 88,
		scrollButtonGradientEnd = 89,
		scrollButtonArrow = 90,
		standardScrollButtonHighlightedGradientBegin = 91,
		standardScrollButtonHighlightedGradientEnd = 92,
		standardScrollButtonSelectedGradientBegin = 93,
		standardScrollButtonSelectedGradientEnd = 94,
		standardScrollButtonPressedGradientBegin = 95,
		standardScrollButtonPressedGradientEnd = 96,
		scrollerNormalGradientBegin = 97,
		scrollerNormalGradientEnd = 98,
		scrollerNormalBorder = 99,
		scrollerSelectedGradientBegin = 100,
		scrollerSelectedGradientEnd = 101,
		scrollerSelectedBorder = 102,
		scrollerPressedGradientBegin = 103,
		scrollerPressedGradientEnd = 104,
		scrollerPressedBorder = 105,
		ribbonPanelBorderBegin = 106,
		ribbonPanelBorderEnd = 107,
		tabItemSeparator = 108,
		galleryScrollBarBackground = 109,
		scrollButtonLargeArrow = 110,
		scrollButtonLargeArrowDisabled = 111,
		disabledButtonGradientBegin = 112,
		disabledButtonGradientEnd = 113,
		headerSeparatorLight = 114,
		headerSeparatorDark = 115,
		headerSeparatorLightInActive = 116,
		headerSeparatorDarkInActive = 117,
		checkBoxBorder = 118,
		checkBoxBorderSelected = 119,
		radioButtonBorderSelected = 120,
		themesColorLast = 121,
		MAX = 121
	}

	private Office2007Theme m_officeColorScheme;

	private Color[] m_officeColors;

	private Color m_clExternalBorder = Color.Empty;

	private Color m_clExternalBorderSelected = Color.Empty;

	private Color m_clInternalBorder = Color.Empty;

	private Color m_clInternalBorderSelected = Color.Empty;

	private Color m_clInternalBorderPressed = Color.Empty;

	private Color m_clUncheckedGradientBegin = Color.Empty;

	private Color m_clUncheckedSelectedGradientBegin = Color.Empty;

	private Color m_clUncheckedPressedGradientBegin = Color.Empty;

	private Color m_clUncheckedSelectedGradientEnd = Color.Empty;

	private Color m_clCheckedBackgroundGradientEnd = Color.Empty;

	private Color m_clCheckedSelectedBackgroundGradientEnd = Color.Empty;

	private Color m_clCheckedPressedBackgroundGradientEnd = Color.Empty;

	private Color m_clCheckedInsideBorder = Color.Empty;

	private IntPtr m_ComboBoxBackgroundBrush = IntPtr.Zero;

	private static Office12ColorTable m_managedColors;

	public override Color StatusStripGradientBegin => Color.FromArgb(231, 237, 249);

	public override Color StatusStripGradientEnd => Color.FromArgb(193, 197, 222);

	public override Color MenuBorder => Color.FromArgb(134, 137, 142);

	public override Color MenuItemBorder => Color.FromArgb(203, 208, 214);

	public override Color MenuStripGradientBegin => Color.FromArgb(192, 192, 192);

	public override Color MenuStripGradientEnd => Color.FromArgb(236, 236, 236);

	public virtual Color MenuStripGradientMiddle => GetAlphaBlendedColor(MenuStripGradientBegin, MenuStripGradientEnd, 128);

	public override Color MenuItemSelectedGradientBegin => Color.FromArgb(250, 251, 255);

	public override Color MenuItemPressedGradientBegin => Color.FromArgb(255, 255, 231);

	public override Color MenuItemPressedGradientEnd => Color.FromArgb(255, 215, 99);

	public override Color MenuItemSelectedGradientEnd => Color.FromArgb(201, 203, 208);

	public override Color ButtonSelectedGradientBegin => Color.FromArgb(255, 252, 217);

	public override Color ButtonSelectedGradientEnd => Color.FromArgb(255, 214, 70);

	public override Color ButtonSelectedHighlight => Color.FromArgb(255, 235, 174);

	public override Color ButtonCheckedGradientBegin => Color.FromArgb(253, 210, 168);

	public override Color ButtonCheckedGradientEnd => Color.FromArgb(249, 147, 47);

	public override Color ButtonCheckedHighlight => Color.FromArgb(253, 241, 176);

	public override Color ButtonPressedGradientBegin => Color.FromArgb(255, 197, 108);

	public override Color ButtonPressedGradientEnd => Color.FromArgb(251, 138, 59);

	public override Color ButtonPressedHighlight => Color.FromArgb(255, 208, 134);

	public override Color OverflowButtonGradientBegin => Color.FromArgb(202, 208, 222);

	public override Color OverflowButtonGradientEnd => Color.FromArgb(224, 240, 255);

	public override Color ButtonSelectedBorder => Color.FromArgb(185, 160, 116);

	public override Color ButtonPressedBorder => Color.FromArgb(139, 118, 84);

	public override Color CheckBackground => Color.FromArgb(255, 226, 149);

	public virtual Color CheckBorder => OfficeColors[31];

	public virtual Color LauncherBackground => OfficeColors[0];

	public virtual Color LauncherBorder => OfficeColors[1];

	public virtual Color LauncherText => OfficeColors[2];

	public virtual Color LauncherTextSelected => OfficeColors[3];

	public virtual Color MenuButtonNormalHighlight => OfficeColors[4];

	public virtual Color MenuButtonSelected => OfficeColors[5];

	public virtual Color MenuButtonSelectedHighlight => OfficeColors[6];

	public virtual Color MenuButtonPressed => OfficeColors[7];

	public virtual Color MenuButtonPressedHighlight => OfficeColors[8];

	public virtual Color GripGradientEnd => OfficeColors[9];

	public virtual Color SelectedButtonInActiveBegin => OfficeColors[10];

	public virtual Color SelectedButtonInActiveEnd => OfficeColors[11];

	public virtual Color ScrollButtonArrowDisabled => OfficeColors[12];

	public virtual Color RibbonPanelGroupedBorderEnd => OfficeColors[13];

	public virtual Color RadioButtonBorderSelected => OfficeColors[120];

	public override Color ToolStripGradientBegin => OfficeColors[14];

	public override Color ToolStripGradientEnd => OfficeColors[15];

	public virtual Color ToolStripHighlightGradientBegin => OfficeColors[16];

	public virtual Color ToolStripHighlightGradientEnd => OfficeColors[17];

	public override Color SeparatorDark => OfficeColors[18];

	public override Color SeparatorLight => OfficeColors[19];

	public override Color ImageMarginGradientBegin => OfficeColors[20];

	public override Color ImageMarginGradientEnd => OfficeColors[21];

	public virtual Color CaptionGradientBegin => OfficeColors[22];

	public virtual Color CaptionGradientEnd => OfficeColors[23];

	public virtual Color CaptionHighlightGradientBegin => OfficeColors[24];

	public virtual Color CaptionHighlightGradientEnd => OfficeColors[25];

	public virtual Color CaptionGroupedGradientBegin => OfficeColors[26];

	public virtual Color CaptionGroupedGradientEnd => OfficeColors[27];

	public virtual Color CaptionGroupedHighlightGradientBegin => OfficeColors[28];

	public virtual Color CaptionGroupedHighlightGradientEnd => OfficeColors[29];

	public virtual Color CaptionText => OfficeColors[30];

	public virtual Color GroupGradientBegin => OfficeColors[32];

	public virtual Color GroupGradientEnd => OfficeColors[33];

	public virtual Color GroupBorder => OfficeColors[34];

	public virtual Color ActiveTitleGradientBegin => OfficeColors[72];

	public virtual Color ActiveTitleGradientEnd => OfficeColors[73];

	public virtual Color InActiveTitleGradientBegin => OfficeColors[74];

	public virtual Color InActiveTitleGradientEnd => OfficeColors[75];

	public virtual Color RibbonBorder => OfficeColors[35];

	public virtual Color RibbonBorderInactive => OfficeColors[36];

	public virtual Color RibbonText => OfficeColors[37];

	public virtual Color RibbonTabText => OfficeColors[38];

	public virtual Color RibbonTabInactiveText => OfficeColors[39];

	public virtual Color RibbonTitleText => OfficeColors[40];

	public virtual Color QuickPanelGradientBegin => OfficeColors[41];

	public virtual Color QuickPanelGradientEnd => OfficeColors[42];

	public virtual Color InactiveQuickPanelGradientBegin => OfficeColors[43];

	public virtual Color InactiveQuickPanelGradientEnd => OfficeColors[44];

	public virtual Color SystemButtonGradientBegin => OfficeColors[45];

	public virtual Color SystemButtonGradientEnd => OfficeColors[46];

	public virtual Color SystemButtonBorder => OfficeColors[47];

	public virtual Color SystemButtonSelectedGradientBegin => OfficeColors[48];

	public virtual Color SystemButtonSelectedGradientEnd => OfficeColors[49];

	public virtual Color SystemButtonSelectedHighlight => OfficeColors[50];

	public virtual Color SystemButtonBorderSelected => OfficeColors[51];

	public virtual Color SystemButtonPressedGradientBegin => OfficeColors[52];

	public virtual Color SystemButtonPressedGradientEnd => OfficeColors[53];

	public virtual Color SystemButtonPressedHighlight => OfficeColors[54];

	public virtual Color SystemButtonBorderPressed => OfficeColors[57];

	public virtual Color SystemButtonForeground => OfficeColors[55];

	public virtual Color SystemButtonForegroundSelected => OfficeColors[56];

	public virtual Color MenuButtonNormal => OfficeColors[58];

	public virtual Color MenuButtomDropDownGradientBegin => OfficeColors[59];

	public virtual Color MenuButtomDropDownGradientEnd => OfficeColors[60];

	public virtual Color MenuButtomDropDownBorder => OfficeColors[61];

	public virtual Color CollapsedToolstripGradientBegin => OfficeColors[62];

	public virtual Color CollapsedToolstripGradientEnd => OfficeColors[63];

	public virtual Color CollapsedToolstripSelectedGradientBegin => OfficeColors[64];

	public virtual Color CollapsedToolstripSelectedGradientEnd => OfficeColors[65];

	public virtual Color CollapsedToolstripPressedGradientBegin => OfficeColors[66];

	public virtual Color CollapsedToolstripPressedGradientEnd => OfficeColors[67];

	public virtual Color CollapsedImageGradientBegin => OfficeColors[68];

	public virtual Color CollapsedImageGradientEnd => OfficeColors[69];

	public virtual Color CollapsedImagePressedGradientBegin => OfficeColors[70];

	public virtual Color CollapsedImagePressedGradientEnd => OfficeColors[71];

	public virtual Color SeparatorGradientBegin => OfficeColors[78];

	public virtual Color SeparatorGradientMiddle => OfficeColors[79];

	public virtual Color SeparatorGradientEnd => OfficeColors[80];

	public virtual Color SeparatorStatusControlsAreaBegin => OfficeColors[81];

	public virtual Color SeparatorStatusControlsAreaEnd => OfficeColors[82];

	public virtual Color SeparatorBegin => OfficeColors[76];

	public virtual Color SeparatoraEnd => OfficeColors[77];

	public virtual Color ContextMenuTitle => OfficeColors[83];

	public virtual Color BottomToolstrip => OfficeColors[84];

	public virtual Color PanelBackground => OfficeColors[85];

	public virtual Color OfficeArrowGradientBegin => OfficeColors[86];

	public virtual Color OfficeArrowGradientEnd => OfficeColors[87];

	public virtual Color ScrollButtonGradientBegin => OfficeColors[88];

	public virtual Color ScrollButtonGradientEnd => OfficeColors[89];

	public virtual Color ScrollButtonArrow => OfficeColors[90];

	public virtual Color StandardScrollButtonHighlightedGradientBegin => OfficeColors[91];

	public virtual Color StandardScrollButtonHighlightedGradientEnd => OfficeColors[92];

	public virtual Color StandardScrollButtonSelectedGradientBegin => OfficeColors[93];

	public virtual Color StandardScrollButtonSelectedGradientEnd => OfficeColors[94];

	public virtual Color StandardScrollButtonPressedGradientBegin => OfficeColors[95];

	public virtual Color StandardScrollButtonPressedGradientEnd => OfficeColors[96];

	public virtual Color ScrollerNormalGradientBegin => OfficeColors[97];

	public virtual Color ScrollerNormalGradientEnd => OfficeColors[98];

	public virtual Color ScrollerNormalBorder => OfficeColors[99];

	public virtual Color ScrollerSelectedGradientBegin => OfficeColors[100];

	public virtual Color ScrollerSelectedGradientEnd => OfficeColors[101];

	public virtual Color ScrollerSelectedBorder => OfficeColors[102];

	public virtual Color ScrollerPressedGradientBegin => OfficeColors[103];

	public virtual Color ScrollerPressedGradientEnd => OfficeColors[104];

	public virtual Color ScrollerPressedBorder => OfficeColors[105];

	public virtual Color RibbonPanelBorderBegin => OfficeColors[106];

	public virtual Color RibbonPanelBorderEnd => OfficeColors[107];

	public virtual Color TabItemSeparator => OfficeColors[108];

	public virtual Color GalleryScrollBarBackground => OfficeColors[109];

	public virtual Color ScrollButtonLargeArrow => OfficeColors[110];

	public virtual Color ScrollButtonLargeArrowDisabled => OfficeColors[111];

	public virtual Color DisabledButtonGradientBegin => OfficeColors[112];

	public virtual Color DisabledButtonGradientEnd => OfficeColors[113];

	internal virtual Color HeaderSeparatorLight => OfficeColors[114];

	internal virtual Color HeaderSeparatorDark => OfficeColors[115];

	internal virtual Color HeaderSeparatorLightInActive => OfficeColors[116];

	internal virtual Color HeaderSeparatorDarkInActive => OfficeColors[117];

	internal virtual Color CheckBoxBorder => OfficeColors[118];

	internal virtual Color CheckBoxBorderSelected => OfficeColors[119];

	public override Color ToolStripBorder => GetAlphaBlendedColor(Color.Black, ToolStripGradientBegin, 32);

	internal Color RadioButtonExternalBorder
	{
		get
		{
			if (m_clExternalBorder == Color.Empty)
			{
				m_clExternalBorder = GetConvertedColor(0.4f, 1.1f);
			}
			return m_clExternalBorder;
		}
	}

	internal Color RadioButtonInternalBorder
	{
		get
		{
			if (m_clInternalBorder == Color.Empty)
			{
				m_clInternalBorder = GetConvertedColor(0.2f, 1.8f);
			}
			return m_clInternalBorder;
		}
	}

	internal Color RadioButtonInternalBorderSelected
	{
		get
		{
			if (m_clInternalBorderSelected == Color.Empty)
			{
				m_clInternalBorderSelected = GetConvertedColor(2.5f, 1.8f);
			}
			return m_clInternalBorderSelected;
		}
	}

	internal Color RadioButtonInternalBorderPressed
	{
		get
		{
			if (m_clInternalBorderPressed == Color.Empty)
			{
				m_clInternalBorderPressed = GetConvertedColor(2.2f, 1.6f);
			}
			return m_clInternalBorderPressed;
		}
	}

	internal Color RadioButtonUncheckedGradientBegin
	{
		get
		{
			if (m_clUncheckedGradientBegin == Color.Empty)
			{
				m_clUncheckedGradientBegin = GetConvertedColor(1f, 1.4f);
			}
			return m_clUncheckedGradientBegin;
		}
	}

	internal Color RadioButtonUncheckedSelectedGradientBegin
	{
		get
		{
			if (m_clUncheckedSelectedGradientBegin == Color.Empty)
			{
				m_clUncheckedSelectedGradientBegin = GetConvertedColor(2f, 1.4f);
			}
			return m_clUncheckedSelectedGradientBegin;
		}
	}

	internal Color RadioButtonUncheckedSelectedGradientEnd
	{
		get
		{
			if (m_clUncheckedSelectedGradientEnd == Color.Empty)
			{
				m_clUncheckedSelectedGradientEnd = GetConvertedColor(1.6f, 2.4f);
			}
			return m_clUncheckedSelectedGradientEnd;
		}
	}

	internal Color RadioButtonUncheckedPressedGradientBegin
	{
		get
		{
			if (m_clUncheckedPressedGradientBegin == Color.Empty)
			{
				m_clUncheckedPressedGradientBegin = GetConvertedColor(2f, 1f);
			}
			return m_clUncheckedPressedGradientBegin;
		}
	}

	internal Color RadioButtonCheckedBackgroundGradientEnd
	{
		get
		{
			if (m_clCheckedBackgroundGradientEnd == Color.Empty)
			{
				m_clCheckedBackgroundGradientEnd = GetConvertedColor(3f, 0.8f);
			}
			return m_clCheckedBackgroundGradientEnd;
		}
	}

	internal Color RadioButtonCheckedSelectedBackgroundGradientEnd
	{
		get
		{
			if (m_clCheckedSelectedBackgroundGradientEnd == Color.Empty)
			{
				m_clCheckedSelectedBackgroundGradientEnd = GetConvertedColor(3.3f, 1f);
			}
			return m_clCheckedSelectedBackgroundGradientEnd;
		}
	}

	internal Color RadioButtonCheckedPressedBackgroundGradientEnd
	{
		get
		{
			if (m_clCheckedPressedBackgroundGradientEnd == Color.Empty)
			{
				m_clCheckedPressedBackgroundGradientEnd = GetConvertedColor(3f, 0.5f);
			}
			return m_clCheckedPressedBackgroundGradientEnd;
		}
	}

	internal Color RadioButtonCheckedInsideBorder
	{
		get
		{
			if (m_clCheckedInsideBorder == Color.Empty)
			{
				m_clCheckedInsideBorder = GetConvertedColor(1.7f, 0.4f);
			}
			return m_clCheckedInsideBorder;
		}
	}

	internal Color ComboBoxBackgroundColor => GetAlphaBlendedColor(ToolStripGradientEnd, Color.White, 192);

	internal IntPtr ComboBoxBackgroundBrush
	{
		get
		{
			if (m_ComboBoxBackgroundBrush == IntPtr.Zero)
			{
				Color comboBoxBackgroundColor = ComboBoxBackgroundColor;
				m_ComboBoxBackgroundBrush = WindowsAPI.CreateSolidBrush((uint)(comboBoxBackgroundColor.R | (comboBoxBackgroundColor.G << 8) | (comboBoxBackgroundColor.B << 16)));
			}
			return m_ComboBoxBackgroundBrush;
		}
	}

	protected Color[] OfficeColors
	{
		get
		{
			if (m_officeColors == null)
			{
				m_officeColors = new Color[121];
				InitColors(ref m_officeColors);
			}
			return m_officeColors;
		}
	}

	internal static Office12ColorTable ManagedColors
	{
		get
		{
			if (m_managedColors == null)
			{
				m_managedColors = new OfficeBlue();
			}
			return m_managedColors;
		}
	}

	static Office12ColorTable()
	{
		Office2007Colors.ManagedColorsApplied += ManagedColorsApplied;
	}

	public Office12ColorTable()
		: this(Office2007Theme.Silver)
	{
	}

	internal Office12ColorTable(Office2007Theme colorScheme)
	{
		m_officeColorScheme = colorScheme;
	}

	~Office12ColorTable()
	{
		Clear();
	}

	public static void ApplyManagedColorScheme(Form form, Office2007Theme colorScheme)
	{
		ManagedColors.UpdateColorScheme(colorScheme);
		Office2007Colors.ApplyManagedScheme(form, colorScheme);
		form.Invalidate(invalidateChildren: true);
	}

	public static void ApplyManagedColors(Form form, Color basicColor)
	{
		Office2007Colors.ApplyManagedColors(form, basicColor);
		form.Invalidate(invalidateChildren: true);
	}

	public static Color GetAlphaBlendedColor(Color src, Color dest, int alpha)
	{
		int red = (src.R * alpha + (255 - alpha) * dest.R) / 255;
		int green = (src.G * alpha + (255 - alpha) * dest.G) / 255;
		int blue = (src.B * alpha + (255 - alpha) * dest.B) / 255;
		int alpha2 = (src.A * alpha + (255 - alpha) * dest.A) / 255;
		return Color.FromArgb(alpha2, red, green, blue);
	}

	internal void UpdateColorScheme(Office2007Theme colorScheme)
	{
		m_officeColorScheme = colorScheme;
		m_officeColors = null;
	}

	internal void UpdateColors(Color basicColor)
	{
		UpdateColorScheme(Office2007Theme.Silver);
		int r = basicColor.R;
		int g = basicColor.G;
		int b = basicColor.B;
		for (int i = 14; i < 121; i++)
		{
			Color color = OfficeColors[i];
			int red = MergeChannels(color.R, r);
			int green = MergeChannels(color.G, g);
			int blue = MergeChannels(color.B, b);
			ref Color reference = ref OfficeColors[i];
			reference = Color.FromArgb(red, green, blue);
		}
	}

	protected virtual void InitColors(ref Color[] colors)
	{
		switch (m_officeColorScheme)
		{
		case Office2007Theme.Blue:
			InitBlueColors(ref colors);
			break;
		case Office2007Theme.Silver:
			InitSilverColors(ref colors);
			break;
		case Office2007Theme.Black:
			InitBlackColors(ref colors);
			break;
		}
	}

	private void Clear()
	{
		m_clExternalBorder = Color.Empty;
		m_clExternalBorderSelected = Color.Empty;
		m_clInternalBorder = Color.Empty;
		m_clInternalBorderSelected = Color.Empty;
		m_clInternalBorderPressed = Color.Empty;
		m_clUncheckedGradientBegin = Color.Empty;
		m_clUncheckedSelectedGradientBegin = Color.Empty;
		m_clUncheckedPressedGradientBegin = Color.Empty;
		m_clUncheckedSelectedGradientEnd = Color.Empty;
		m_clCheckedBackgroundGradientEnd = Color.Empty;
		m_clCheckedSelectedBackgroundGradientEnd = Color.Empty;
		m_clCheckedPressedBackgroundGradientEnd = Color.Empty;
		m_clCheckedInsideBorder = Color.Empty;
		if (m_ComboBoxBackgroundBrush != IntPtr.Zero)
		{
			WindowsAPI.DeleteObject(m_ComboBoxBackgroundBrush);
			m_ComboBoxBackgroundBrush = IntPtr.Zero;
		}
	}

	private void InitSilverColors(ref Color[] colors)
	{
		Clear();
		ref Color reference = ref colors[0];
		reference = Color.FromArgb(255, 228, 123);
		ref Color reference2 = ref colors[1];
		reference2 = Color.FromArgb(181, 186, 206);
		ref Color reference3 = ref colors[2];
		reference3 = Color.FromArgb(101, 104, 112);
		ref Color reference4 = ref colors[3];
		reference4 = Color.FromArgb(49, 69, 125);
		ref Color reference5 = ref colors[4];
		reference5 = Color.FromArgb(255, 255, 255);
		ref Color reference6 = ref colors[5];
		reference6 = Color.FromArgb(224, 160, 16);
		ref Color reference7 = ref colors[6];
		reference7 = Color.FromArgb(255, 255, 0);
		ref Color reference8 = ref colors[7];
		reference8 = Color.FromArgb(181, 105, 8);
		ref Color reference9 = ref colors[8];
		reference9 = Color.FromArgb(255, 112, 32);
		ref Color reference10 = ref colors[9];
		reference10 = Color.FromArgb(168, 168, 168);
		ref Color reference11 = ref colors[10];
		reference11 = Color.FromArgb(254, 245, 219);
		ref Color reference12 = ref colors[11];
		reference12 = Color.FromArgb(255, 239, 194);
		ref Color reference13 = ref colors[12];
		reference13 = Color.FromArgb(183, 183, 183);
		ref Color reference14 = ref colors[13];
		reference14 = Color.FromArgb(194, 195, 197);
		ref Color reference15 = ref colors[14];
		reference15 = Color.FromArgb(213, 219, 231);
		ref Color reference16 = ref colors[15];
		reference16 = Color.FromArgb(242, 244, 248);
		ref Color reference17 = ref colors[16];
		reference17 = Color.FromArgb(228, 232, 239);
		ref Color reference18 = ref colors[17];
		reference18 = Color.FromArgb(245, 247, 250);
		ref Color reference19 = ref colors[18];
		reference19 = base.SeparatorDark;
		ref Color reference20 = ref colors[19];
		reference20 = base.SeparatorLight;
		ref Color reference21 = ref colors[20];
		reference21 = Color.FromArgb(239, 239, 239);
		ref Color reference22 = ref colors[21];
		reference22 = Color.FromArgb(239, 239, 239);
		ref Color reference23 = ref colors[22];
		reference23 = Color.FromArgb(223, 227, 239);
		ref Color reference24 = ref colors[23];
		reference24 = Color.FromArgb(195, 199, 209);
		ref Color reference25 = ref colors[24];
		reference25 = Color.FromArgb(234, 237, 244);
		ref Color reference26 = ref colors[25];
		reference26 = Color.FromArgb(209, 213, 220);
		ref Color reference27 = ref colors[26];
		reference27 = Color.FromArgb(223, 227, 239);
		ref Color reference28 = ref colors[27];
		reference28 = Color.FromArgb(195, 199, 209);
		ref Color reference29 = ref colors[28];
		reference29 = Color.FromArgb(222, 226, 238);
		ref Color reference30 = ref colors[29];
		reference30 = Color.FromArgb(179, 185, 199);
		ref Color reference31 = ref colors[30];
		reference31 = Color.FromArgb(83, 84, 89);
		ref Color reference32 = ref colors[31];
		reference32 = Color.FromArgb(247, 150, 49);
		ref Color reference33 = ref colors[32];
		reference33 = Color.FromArgb(241, 243, 243);
		ref Color reference34 = ref colors[33];
		reference34 = Color.FromArgb(231, 234, 238);
		ref Color reference35 = ref colors[34];
		reference35 = Color.FromArgb(196, 198, 198);
		ref Color reference36 = ref colors[35];
		reference36 = Color.FromArgb(208, 212, 221);
		ref Color reference37 = ref colors[36];
		reference37 = Color.FromArgb(230, 229, 229);
		ref Color reference38 = ref colors[37];
		reference38 = Color.FromArgb(16, 16, 16);
		ref Color reference39 = ref colors[38];
		reference39 = Color.FromArgb(76, 83, 92);
		ref Color reference40 = ref colors[39];
		reference40 = Color.FromArgb(76, 83, 92);
		ref Color reference41 = ref colors[40];
		reference41 = Color.FromArgb(92, 98, 106);
		ref Color reference42 = ref colors[41];
		reference42 = Color.FromArgb(231, 232, 235);
		ref Color reference43 = ref colors[42];
		reference43 = Color.FromArgb(186, 193, 202);
		ref Color reference44 = ref colors[43];
		reference44 = Color.FromArgb(247, 239, 247);
		ref Color reference45 = ref colors[44];
		reference45 = Color.FromArgb(222, 219, 222);
		ref Color reference46 = ref colors[45];
		reference46 = Color.FromArgb(235, 240, 245);
		ref Color reference47 = ref colors[46];
		reference47 = Color.FromArgb(203, 210, 219);
		ref Color reference48 = ref colors[47];
		reference48 = Color.FromArgb(141, 148, 157);
		ref Color reference49 = ref colors[48];
		reference49 = Color.FromArgb(252, 253, 254);
		ref Color reference50 = ref colors[49];
		reference50 = Color.FromArgb(222, 230, 242);
		ref Color reference51 = ref colors[50];
		reference51 = Color.FromArgb(233, 238, 244);
		ref Color reference52 = ref colors[51];
		reference52 = Color.FromArgb(200, 205, 212);
		ref Color reference53 = ref colors[52];
		reference53 = Color.FromArgb(195, 199, 204);
		ref Color reference54 = ref colors[53];
		reference54 = Color.FromArgb(125, 131, 140);
		ref Color reference55 = ref colors[54];
		reference55 = Color.FromArgb(213, 226, 233);
		ref Color reference56 = ref colors[55];
		reference56 = Color.FromArgb(69, 69, 69);
		ref Color reference57 = ref colors[56];
		reference57 = Color.FromArgb(69, 69, 69);
		ref Color reference58 = ref colors[57];
		reference58 = Color.FromArgb(151, 156, 160);
		ref Color reference59 = ref colors[58];
		reference59 = Color.FromArgb(160, 160, 160);
		ref Color reference60 = ref colors[59];
		reference60 = Color.FromArgb(222, 227, 231);
		ref Color reference61 = ref colors[60];
		reference61 = Color.FromArgb(198, 203, 214);
		ref Color reference62 = ref colors[61];
		reference62 = Color.FromArgb(173, 174, 181);
		ref Color reference63 = ref colors[62];
		reference63 = Color.FromArgb(198, 207, 214);
		ref Color reference64 = ref colors[63];
		reference64 = Color.FromArgb(247, 243, 247);
		ref Color reference65 = ref colors[64];
		reference65 = Color.FromArgb(239, 243, 247);
		ref Color reference66 = ref colors[65];
		reference66 = Color.FromArgb(247, 251, 255);
		ref Color reference67 = ref colors[66];
		reference67 = Color.FromArgb(181, 186, 198);
		ref Color reference68 = ref colors[67];
		reference68 = Color.FromArgb(231, 231, 231);
		ref Color reference69 = ref colors[68];
		reference69 = Color.FromArgb(239, 239, 239);
		ref Color reference70 = ref colors[69];
		reference70 = Color.FromArgb(214, 211, 214);
		ref Color reference71 = ref colors[70];
		reference71 = Color.FromArgb(231, 231, 239);
		ref Color reference72 = ref colors[71];
		reference72 = Color.FromArgb(214, 211, 214);
		ref Color reference73 = ref colors[72];
		reference73 = Color.FromArgb(232, 236, 240);
		ref Color reference74 = ref colors[73];
		reference74 = Color.FromArgb(192, 198, 207);
		ref Color reference75 = ref colors[74];
		reference75 = Color.FromArgb(247, 247, 247);
		ref Color reference76 = ref colors[75];
		reference76 = Color.FromArgb(225, 225, 225);
		ref Color reference77 = ref colors[76];
		reference77 = Color.FromArgb(168, 168, 168);
		ref Color reference78 = ref colors[77];
		reference78 = Color.FromArgb(225, 225, 225);
		ref Color reference79 = ref colors[78];
		reference79 = Color.FromArgb(225, 237, 250);
		ref Color reference80 = ref colors[79];
		reference80 = Color.FromArgb(140, 140, 140);
		ref Color reference81 = ref colors[80];
		reference81 = Color.FromArgb(225, 225, 225);
		ref Color reference82 = ref colors[81];
		reference82 = Color.FromArgb(231, 232, 235);
		ref Color reference83 = ref colors[82];
		reference83 = Color.FromArgb(174, 180, 186);
		ref Color reference84 = ref colors[83];
		reference84 = Color.FromArgb(235, 235, 235);
		ref Color reference85 = ref colors[84];
		reference85 = Color.FromArgb(217, 221, 225);
		ref Color reference86 = ref colors[85];
		reference86 = Color.FromArgb(241, 242, 245);
		ref Color reference87 = ref colors[86];
		reference87 = Color.FromArgb(158, 158, 158);
		ref Color reference88 = ref colors[87];
		reference88 = Color.FromArgb(124, 124, 124);
		ref Color reference89 = ref colors[88];
		reference89 = Color.FromArgb(221, 225, 229);
		ref Color reference90 = ref colors[89];
		reference90 = Color.FromArgb(184, 188, 192);
		ref Color reference91 = ref colors[90];
		reference91 = Color.FromArgb(112, 112, 112);
		ref Color reference92 = ref colors[91];
		reference92 = Color.FromArgb(249, 249, 249);
		ref Color reference93 = ref colors[92];
		reference93 = Color.FromArgb(194, 194, 194);
		ref Color reference94 = ref colors[93];
		reference94 = Color.FromArgb(225, 225, 225);
		ref Color reference95 = ref colors[94];
		reference95 = Color.FromArgb(176, 176, 176);
		ref Color reference96 = ref colors[95];
		reference96 = Color.FromArgb(192, 192, 192);
		ref Color reference97 = ref colors[96];
		reference97 = Color.FromArgb(144, 144, 144);
		ref Color reference98 = ref colors[97];
		reference98 = Color.FromArgb(237, 237, 237);
		ref Color reference99 = ref colors[98];
		reference99 = Color.FromArgb(201, 201, 201);
		ref Color reference100 = ref colors[99];
		reference100 = Color.FromArgb(164, 164, 164);
		ref Color reference101 = ref colors[100];
		reference101 = Color.FromArgb(221, 221, 221);
		ref Color reference102 = ref colors[101];
		reference102 = Color.FromArgb(196, 196, 196);
		ref Color reference103 = ref colors[102];
		reference103 = Color.FromArgb(96, 96, 96);
		ref Color reference104 = ref colors[103];
		reference104 = Color.FromArgb(201, 201, 201);
		ref Color reference105 = ref colors[104];
		reference105 = Color.FromArgb(155, 155, 155);
		ref Color reference106 = ref colors[105];
		reference106 = Color.FromArgb(96, 96, 96);
		ref Color reference107 = ref colors[106];
		reference107 = Color.FromArgb(245, 245, 245);
		ref Color reference108 = ref colors[107];
		reference108 = Color.FromArgb(192, 192, 192);
		ref Color reference109 = ref colors[108];
		reference109 = Color.FromArgb(176, 176, 176);
		ref Color reference110 = ref colors[109];
		reference110 = Color.LightGray;
		ref Color reference111 = ref colors[110];
		reference111 = Color.FromArgb(68, 81, 113);
		ref Color reference112 = ref colors[111];
		reference112 = Color.FromArgb(154, 166, 195);
		ref Color reference113 = ref colors[112];
		reference113 = Color.FromArgb(243, 243, 243);
		ref Color reference114 = ref colors[113];
		reference114 = Color.FromArgb(228, 228, 228);
		ref Color reference115 = ref colors[114];
		reference115 = Color.FromArgb(235, 239, 243);
		ref Color reference116 = ref colors[115];
		reference116 = Color.FromArgb(172, 176, 180);
		ref Color reference117 = ref colors[116];
		reference117 = Color.FromArgb(247, 247, 247);
		ref Color reference118 = ref colors[117];
		reference118 = Color.FromArgb(181, 181, 181);
		ref Color reference119 = ref colors[118];
		reference119 = Color.FromArgb(155, 157, 160);
		ref Color reference120 = ref colors[119];
		reference120 = Color.FromArgb(155, 157, 160);
		ref Color reference121 = ref colors[120];
		reference121 = Color.FromArgb(128, 128, 128);
	}

	private void InitBlueColors(ref Color[] colors)
	{
		Clear();
		ref Color reference = ref colors[0];
		reference = Color.FromArgb(255, 228, 123);
		ref Color reference2 = ref colors[1];
		reference2 = Color.FromArgb(181, 186, 206);
		ref Color reference3 = ref colors[2];
		reference3 = Color.FromArgb(101, 104, 112);
		ref Color reference4 = ref colors[3];
		reference4 = Color.FromArgb(49, 69, 125);
		ref Color reference5 = ref colors[4];
		reference5 = Color.FromArgb(255, 255, 255);
		ref Color reference6 = ref colors[5];
		reference6 = Color.FromArgb(224, 160, 16);
		ref Color reference7 = ref colors[6];
		reference7 = Color.FromArgb(255, 255, 0);
		ref Color reference8 = ref colors[7];
		reference8 = Color.FromArgb(181, 105, 8);
		ref Color reference9 = ref colors[8];
		reference9 = Color.FromArgb(255, 112, 32);
		ref Color reference10 = ref colors[9];
		reference10 = Color.FromArgb(168, 168, 168);
		ref Color reference11 = ref colors[10];
		reference11 = Color.FromArgb(254, 245, 219);
		ref Color reference12 = ref colors[11];
		reference12 = Color.FromArgb(255, 239, 194);
		ref Color reference13 = ref colors[12];
		reference13 = Color.FromArgb(183, 183, 183);
		ref Color reference14 = ref colors[13];
		reference14 = Color.FromArgb(194, 195, 197);
		ref Color reference15 = ref colors[14];
		reference15 = Color.FromArgb(199, 216, 237);
		ref Color reference16 = ref colors[15];
		reference16 = Color.FromArgb(231, 242, 255);
		ref Color reference17 = ref colors[16];
		reference17 = Color.FromArgb(210, 224, 240);
		ref Color reference18 = ref colors[17];
		reference18 = Color.FromArgb(242, 248, 255);
		ref Color reference19 = ref colors[18];
		reference19 = base.SeparatorDark;
		ref Color reference20 = ref colors[19];
		reference20 = base.SeparatorLight;
		ref Color reference21 = ref colors[20];
		reference21 = Color.FromArgb(233, 238, 238);
		ref Color reference22 = ref colors[21];
		reference22 = Color.FromArgb(233, 238, 238);
		ref Color reference23 = ref colors[22];
		reference23 = Color.FromArgb(194, 217, 240);
		ref Color reference24 = ref colors[23];
		reference24 = Color.FromArgb(194, 217, 240);
		ref Color reference25 = ref colors[24];
		reference25 = Color.FromArgb(200, 224, 255);
		ref Color reference26 = ref colors[25];
		reference26 = Color.FromArgb(214, 237, 255);
		ref Color reference27 = ref colors[26];
		reference27 = Color.FromArgb(223, 233, 245);
		ref Color reference28 = ref colors[27];
		reference28 = Color.FromArgb(210, 221, 242);
		ref Color reference29 = ref colors[28];
		reference29 = Color.FromArgb(200, 224, 255);
		ref Color reference30 = ref colors[29];
		reference30 = Color.FromArgb(214, 237, 255);
		ref Color reference31 = ref colors[30];
		reference31 = Color.FromArgb(21, 66, 139);
		ref Color reference32 = ref colors[31];
		reference32 = Color.FromArgb(247, 150, 49);
		ref Color reference33 = ref colors[32];
		reference33 = Color.FromArgb(201, 221, 246);
		ref Color reference34 = ref colors[33];
		reference34 = Color.FromArgb(160, 189, 224);
		ref Color reference35 = ref colors[34];
		reference35 = Color.FromArgb(138, 173, 219);
		ref Color reference36 = ref colors[35];
		reference36 = Color.FromArgb(191, 219, 254);
		ref Color reference37 = ref colors[36];
		reference37 = Color.FromArgb(204, 216, 232);
		ref Color reference38 = ref colors[37];
		reference38 = Color.FromArgb(32, 24, 32);
		ref Color reference39 = ref colors[38];
		reference39 = Color.FromArgb(21, 66, 139);
		ref Color reference40 = ref colors[39];
		reference40 = Color.FromArgb(21, 66, 139);
		ref Color reference41 = ref colors[40];
		reference41 = Color.FromArgb(105, 112, 121);
		ref Color reference42 = ref colors[41];
		reference42 = Color.FromArgb(226, 238, 253);
		ref Color reference43 = ref colors[42];
		reference43 = Color.FromArgb(156, 189, 231);
		ref Color reference44 = ref colors[43];
		reference44 = Color.FromArgb(239, 239, 247);
		ref Color reference45 = ref colors[44];
		reference45 = Color.FromArgb(206, 215, 231);
		ref Color reference46 = ref colors[45];
		reference46 = Color.FromArgb(232, 241, 252);
		ref Color reference47 = ref colors[46];
		reference47 = Color.FromArgb(210, 225, 244);
		ref Color reference48 = ref colors[47];
		reference48 = Color.FromArgb(119, 147, 185);
		ref Color reference49 = ref colors[48];
		reference49 = Color.FromArgb(251, 253, 255);
		ref Color reference50 = ref colors[49];
		reference50 = Color.FromArgb(210, 228, 254);
		ref Color reference51 = ref colors[50];
		reference51 = Color.FromArgb(227, 237, 251);
		ref Color reference52 = ref colors[51];
		reference52 = Color.FromArgb(192, 212, 237);
		ref Color reference53 = ref colors[52];
		reference53 = Color.FromArgb(182, 205, 231);
		ref Color reference54 = ref colors[53];
		reference54 = Color.FromArgb(132, 178, 233);
		ref Color reference55 = ref colors[54];
		reference55 = Color.FromArgb(192, 231, 252);
		ref Color reference56 = ref colors[55];
		reference56 = Color.FromArgb(101, 101, 101);
		ref Color reference57 = ref colors[56];
		reference57 = Color.FromArgb(101, 101, 101);
		ref Color reference58 = ref colors[57];
		reference58 = Color.FromArgb(161, 190, 228);
		ref Color reference59 = ref colors[58];
		reference59 = Color.FromArgb(156, 170, 198);
		ref Color reference60 = ref colors[59];
		reference60 = Color.FromArgb(206, 227, 247);
		ref Color reference61 = ref colors[60];
		reference61 = Color.FromArgb(181, 207, 239);
		ref Color reference62 = ref colors[61];
		reference62 = Color.FromArgb(156, 174, 206);
		ref Color reference63 = ref colors[62];
		reference63 = Color.FromArgb(189, 211, 247);
		ref Color reference64 = ref colors[63];
		reference64 = Color.FromArgb(222, 235, 255);
		ref Color reference65 = ref colors[64];
		reference65 = Color.FromArgb(222, 231, 247);
		ref Color reference66 = ref colors[65];
		reference66 = Color.FromArgb(247, 247, 255);
		ref Color reference67 = ref colors[66];
		reference67 = Color.FromArgb(115, 154, 206);
		ref Color reference68 = ref colors[67];
		reference68 = Color.FromArgb(173, 211, 255);
		ref Color reference69 = ref colors[68];
		reference69 = Color.FromArgb(247, 247, 255);
		ref Color reference70 = ref colors[69];
		reference70 = Color.FromArgb(198, 219, 247);
		ref Color reference71 = ref colors[70];
		reference71 = Color.FromArgb(198, 211, 239);
		ref Color reference72 = ref colors[71];
		reference72 = Color.FromArgb(198, 219, 247);
		ref Color reference73 = ref colors[72];
		reference73 = Color.FromArgb(231, 239, 255);
		ref Color reference74 = ref colors[73];
		reference74 = Color.FromArgb(203, 223, 244);
		ref Color reference75 = ref colors[74];
		reference75 = Color.FromArgb(229, 233, 237);
		ref Color reference76 = ref colors[75];
		reference76 = Color.FromArgb(217, 225, 233);
		ref Color reference77 = ref colors[76];
		reference77 = Color.FromArgb(142, 173, 213);
		ref Color reference78 = ref colors[77];
		reference78 = Color.FromArgb(231, 240, 251);
		ref Color reference79 = ref colors[78];
		reference79 = Color.FromArgb(225, 237, 250);
		ref Color reference80 = ref colors[79];
		reference80 = Color.FromArgb(101, 138, 186);
		ref Color reference81 = ref colors[80];
		reference81 = Color.FromArgb(204, 222, 245);
		ref Color reference82 = ref colors[81];
		reference82 = Color.FromArgb(197, 220, 248);
		ref Color reference83 = ref colors[82];
		reference83 = Color.FromArgb(120, 154, 200);
		ref Color reference84 = ref colors[83];
		reference84 = Color.FromArgb(221, 231, 238);
		ref Color reference85 = ref colors[84];
		reference85 = Color.FromArgb(174, 203, 232);
		ref Color reference86 = ref colors[85];
		reference86 = Color.FromArgb(233, 234, 238);
		ref Color reference87 = ref colors[86];
		reference87 = Color.FromArgb(106, 126, 197);
		ref Color reference88 = ref colors[87];
		reference88 = Color.FromArgb(64, 70, 90);
		ref Color reference89 = ref colors[88];
		reference89 = Color.FromArgb(226, 238, 251);
		ref Color reference90 = ref colors[89];
		reference90 = Color.FromArgb(195, 215, 236);
		ref Color reference91 = ref colors[90];
		reference91 = Color.FromArgb(83, 128, 173);
		ref Color reference92 = ref colors[91];
		reference92 = Color.FromArgb(245, 249, 253);
		ref Color reference93 = ref colors[92];
		reference93 = Color.FromArgb(206, 226, 247);
		ref Color reference94 = ref colors[93];
		reference94 = Color.FromArgb(242, 246, 250);
		ref Color reference95 = ref colors[94];
		reference95 = Color.FromArgb(185, 209, 234);
		ref Color reference96 = ref colors[95];
		reference96 = Color.FromArgb(233, 233, 233);
		ref Color reference97 = ref colors[96];
		reference97 = Color.FromArgb(198, 202, 206);
		ref Color reference98 = ref colors[97];
		reference98 = Color.FromArgb(237, 240, 243);
		ref Color reference99 = ref colors[98];
		reference99 = Color.FromArgb(190, 202, 219);
		ref Color reference100 = ref colors[99];
		reference100 = Color.FromArgb(96, 112, 145);
		ref Color reference101 = ref colors[100];
		reference101 = Color.FromArgb(211, 228, 250);
		ref Color reference102 = ref colors[101];
		reference102 = Color.FromArgb(170, 203, 246);
		ref Color reference103 = ref colors[102];
		reference103 = Color.FromArgb(57, 114, 172);
		ref Color reference104 = ref colors[103];
		reference104 = Color.FromArgb(180, 209, 247);
		ref Color reference105 = ref colors[104];
		reference105 = Color.FromArgb(110, 166, 240);
		ref Color reference106 = ref colors[105];
		reference106 = Color.FromArgb(19, 76, 134);
		ref Color reference107 = ref colors[106];
		reference107 = Color.FromArgb(231, 239, 247);
		ref Color reference108 = ref colors[107];
		reference108 = Color.FromArgb(141, 178, 227);
		ref Color reference109 = ref colors[108];
		reference109 = Color.FromArgb(115, 156, 197);
		ref Color reference110 = ref colors[109];
		reference110 = Color.FromArgb(216, 224, 240);
		ref Color reference111 = ref colors[110];
		reference111 = Color.FromArgb(68, 81, 113);
		ref Color reference112 = ref colors[111];
		reference112 = Color.FromArgb(154, 166, 195);
		ref Color reference113 = ref colors[112];
		reference113 = Color.FromArgb(224, 232, 255);
		ref Color reference114 = ref colors[113];
		reference114 = Color.FromArgb(216, 224, 240);
		ref Color reference115 = ref colors[114];
		reference115 = Color.FromArgb(176, 209, 242);
		ref Color reference116 = ref colors[115];
		reference116 = Color.FromArgb(221, 233, 246);
		ref Color reference117 = ref colors[116];
		reference117 = Color.FromArgb(207, 219, 232);
		ref Color reference118 = ref colors[117];
		reference118 = Color.FromArgb(226, 233, 234);
		ref Color reference119 = ref colors[118];
		reference119 = Color.FromArgb(171, 193, 222);
		ref Color reference120 = ref colors[119];
		reference120 = Color.FromArgb(89, 119, 163);
		ref Color reference121 = ref colors[120];
		reference121 = Color.FromArgb(93, 140, 167);
	}

	private void InitBlackColors(ref Color[] colors)
	{
		Clear();
		ref Color reference = ref colors[0];
		reference = Color.FromArgb(255, 228, 123);
		ref Color reference2 = ref colors[1];
		reference2 = Color.FromArgb(181, 186, 206);
		ref Color reference3 = ref colors[2];
		reference3 = Color.FromArgb(101, 104, 112);
		ref Color reference4 = ref colors[3];
		reference4 = Color.FromArgb(49, 69, 125);
		ref Color reference5 = ref colors[4];
		reference5 = Color.FromArgb(255, 255, 255);
		ref Color reference6 = ref colors[5];
		reference6 = Color.FromArgb(224, 160, 16);
		ref Color reference7 = ref colors[6];
		reference7 = Color.FromArgb(255, 255, 0);
		ref Color reference8 = ref colors[7];
		reference8 = Color.FromArgb(181, 105, 8);
		ref Color reference9 = ref colors[8];
		reference9 = Color.FromArgb(255, 112, 32);
		ref Color reference10 = ref colors[9];
		reference10 = Color.FromArgb(168, 168, 168);
		ref Color reference11 = ref colors[10];
		reference11 = Color.FromArgb(254, 245, 219);
		ref Color reference12 = ref colors[11];
		reference12 = Color.FromArgb(255, 239, 194);
		ref Color reference13 = ref colors[12];
		reference13 = Color.FromArgb(183, 183, 183);
		ref Color reference14 = ref colors[13];
		reference14 = Color.FromArgb(194, 195, 197);
		ref Color reference15 = ref colors[14];
		reference15 = Color.FromArgb(180, 187, 197);
		ref Color reference16 = ref colors[15];
		reference16 = Color.FromArgb(231, 240, 240);
		ref Color reference17 = ref colors[16];
		reference17 = Color.FromArgb(189, 196, 204);
		ref Color reference18 = ref colors[17];
		reference18 = Color.FromArgb(234, 248, 248);
		ref Color reference19 = ref colors[18];
		reference19 = base.SeparatorDark;
		ref Color reference20 = ref colors[19];
		reference20 = base.SeparatorLight;
		ref Color reference21 = ref colors[20];
		reference21 = Color.FromArgb(239, 239, 239);
		ref Color reference22 = ref colors[21];
		reference22 = Color.FromArgb(239, 239, 239);
		ref Color reference23 = ref colors[22];
		reference23 = Color.FromArgb(182, 184, 184);
		ref Color reference24 = ref colors[23];
		reference24 = Color.FromArgb(156, 158, 158);
		ref Color reference25 = ref colors[24];
		reference25 = Color.FromArgb(196, 198, 198);
		ref Color reference26 = ref colors[25];
		reference26 = Color.FromArgb(175, 177, 177);
		ref Color reference27 = ref colors[26];
		reference27 = Color.FromArgb(190, 190, 190);
		ref Color reference28 = ref colors[27];
		reference28 = Color.FromArgb(161, 161, 161);
		ref Color reference29 = ref colors[28];
		reference29 = Color.FromArgb(174, 174, 174);
		ref Color reference30 = ref colors[29];
		reference30 = Color.FromArgb(110, 110, 110);
		ref Color reference31 = ref colors[30];
		reference31 = Color.White;
		ref Color reference32 = ref colors[31];
		reference32 = Color.FromArgb(247, 150, 49);
		ref Color reference33 = ref colors[32];
		reference33 = Color.FromArgb(214, 222, 223);
		ref Color reference34 = ref colors[33];
		reference34 = Color.FromArgb(206, 213, 215);
		ref Color reference35 = ref colors[34];
		reference35 = Color.FromArgb(179, 188, 191);
		ref Color reference36 = ref colors[35];
		reference36 = Color.FromArgb(83, 83, 83);
		ref Color reference37 = ref colors[36];
		reference37 = Color.FromArgb(153, 153, 153);
		ref Color reference38 = ref colors[37];
		reference38 = Color.FromArgb(16, 8, 16);
		ref Color reference39 = ref colors[38];
		reference39 = Color.FromArgb(0, 0, 0);
		ref Color reference40 = ref colors[39];
		reference40 = Color.FromArgb(255, 255, 255);
		ref Color reference41 = ref colors[40];
		reference41 = Color.FromArgb(255, 255, 255);
		ref Color reference42 = ref colors[41];
		reference42 = Color.FromArgb(150, 152, 156);
		ref Color reference43 = ref colors[42];
		reference43 = Color.FromArgb(92, 95, 99);
		ref Color reference44 = ref colors[43];
		reference44 = Color.FromArgb(181, 178, 181);
		ref Color reference45 = ref colors[44];
		reference45 = Color.FromArgb(140, 138, 140);
		ref Color reference46 = ref colors[45];
		reference46 = Color.FromArgb(255, 255, 255);
		ref Color reference47 = ref colors[46];
		reference47 = Color.FromArgb(203, 213, 223);
		ref Color reference48 = ref colors[47];
		reference48 = Color.FromArgb(137, 135, 133);
		ref Color reference49 = ref colors[48];
		reference49 = Color.FromArgb(162, 171, 180);
		ref Color reference50 = ref colors[49];
		reference50 = Color.FromArgb(91, 105, 123);
		ref Color reference51 = ref colors[50];
		reference51 = Color.FromArgb(173, 199, 214);
		ref Color reference52 = ref colors[51];
		reference52 = Color.FromArgb(86, 96, 109);
		ref Color reference53 = ref colors[52];
		reference53 = Color.FromArgb(43, 43, 43);
		ref Color reference54 = ref colors[53];
		reference54 = Color.FromArgb(0, 0, 0);
		ref Color reference55 = ref colors[54];
		reference55 = Color.FromArgb(65, 83, 102);
		ref Color reference56 = ref colors[55];
		reference56 = Color.FromArgb(147, 156, 168);
		ref Color reference57 = ref colors[56];
		reference57 = Color.FromArgb(54, 53, 53);
		ref Color reference58 = ref colors[57];
		reference58 = Color.FromArgb(34, 36, 41);
		ref Color reference59 = ref colors[58];
		reference59 = Color.FromArgb(156, 156, 156);
		ref Color reference60 = ref colors[59];
		reference60 = Color.FromArgb(99, 99, 99);
		ref Color reference61 = ref colors[60];
		reference61 = Color.FromArgb(41, 44, 41);
		ref Color reference62 = ref colors[61];
		reference62 = Color.FromArgb(66, 66, 66);
		ref Color reference63 = ref colors[62];
		reference63 = Color.FromArgb(181, 190, 198);
		ref Color reference64 = ref colors[63];
		reference64 = Color.FromArgb(239, 235, 239);
		ref Color reference65 = ref colors[64];
		reference65 = Color.FromArgb(198, 207, 222);
		ref Color reference66 = ref colors[65];
		reference66 = Color.FromArgb(239, 235, 239);
		ref Color reference67 = ref colors[66];
		reference67 = Color.FromArgb(156, 162, 173);
		ref Color reference68 = ref colors[67];
		reference68 = Color.FromArgb(214, 219, 222);
		ref Color reference69 = ref colors[68];
		reference69 = Color.FromArgb(239, 239, 239);
		ref Color reference70 = ref colors[69];
		reference70 = Color.FromArgb(198, 195, 198);
		ref Color reference71 = ref colors[70];
		reference71 = Color.FromArgb(222, 219, 222);
		ref Color reference72 = ref colors[71];
		reference72 = Color.FromArgb(198, 195, 198);
		ref Color reference73 = ref colors[72];
		reference73 = Color.FromArgb(74, 74, 74);
		ref Color reference74 = ref colors[73];
		reference74 = Color.FromArgb(47, 47, 47);
		ref Color reference75 = ref colors[74];
		reference75 = Color.FromArgb(157, 157, 157);
		ref Color reference76 = ref colors[75];
		reference76 = Color.FromArgb(146, 146, 146);
		ref Color reference77 = ref colors[76];
		reference77 = Color.FromArgb(50, 52, 50);
		ref Color reference78 = ref colors[77];
		reference78 = Color.FromArgb(200, 203, 200);
		ref Color reference79 = ref colors[78];
		reference79 = Color.FromArgb(200, 200, 200);
		ref Color reference80 = ref colors[79];
		reference80 = Color.FromArgb(41, 44, 41);
		ref Color reference81 = ref colors[80];
		reference81 = Color.FromArgb(180, 180, 180);
		ref Color reference82 = ref colors[81];
		reference82 = Color.FromArgb(216, 215, 216);
		ref Color reference83 = ref colors[82];
		reference83 = Color.FromArgb(84, 92, 102);
		ref Color reference84 = ref colors[83];
		reference84 = Color.FromArgb(235, 235, 235);
		ref Color reference85 = ref colors[84];
		reference85 = Color.FromArgb(139, 139, 139);
		ref Color reference86 = ref colors[85];
		reference86 = Color.FromArgb(233, 234, 238);
		ref Color reference87 = ref colors[86];
		reference87 = Color.FromArgb(78, 78, 79);
		ref Color reference88 = ref colors[87];
		reference88 = Color.FromArgb(40, 40, 40);
		ref Color reference89 = ref colors[88];
		reference89 = Color.FromArgb(221, 225, 229);
		ref Color reference90 = ref colors[89];
		reference90 = Color.FromArgb(184, 188, 192);
		ref Color reference91 = ref colors[90];
		reference91 = Color.FromArgb(112, 112, 112);
		ref Color reference92 = ref colors[91];
		reference92 = Color.FromArgb(249, 249, 249);
		ref Color reference93 = ref colors[92];
		reference93 = Color.FromArgb(194, 194, 194);
		ref Color reference94 = ref colors[93];
		reference94 = Color.FromArgb(225, 225, 225);
		ref Color reference95 = ref colors[94];
		reference95 = Color.FromArgb(176, 176, 176);
		ref Color reference96 = ref colors[95];
		reference96 = Color.FromArgb(192, 192, 192);
		ref Color reference97 = ref colors[96];
		reference97 = Color.FromArgb(144, 144, 144);
		ref Color reference98 = ref colors[97];
		reference98 = Color.FromArgb(237, 237, 237);
		ref Color reference99 = ref colors[98];
		reference99 = Color.FromArgb(201, 201, 201);
		ref Color reference100 = ref colors[99];
		reference100 = Color.FromArgb(164, 164, 164);
		ref Color reference101 = ref colors[100];
		reference101 = Color.FromArgb(221, 221, 221);
		ref Color reference102 = ref colors[101];
		reference102 = Color.FromArgb(196, 196, 196);
		ref Color reference103 = ref colors[102];
		reference103 = Color.FromArgb(96, 96, 96);
		ref Color reference104 = ref colors[103];
		reference104 = Color.FromArgb(201, 201, 201);
		ref Color reference105 = ref colors[104];
		reference105 = Color.FromArgb(155, 155, 155);
		ref Color reference106 = ref colors[105];
		reference106 = Color.FromArgb(96, 96, 96);
		ref Color reference107 = ref colors[106];
		reference107 = Color.FromArgb(215, 219, 233);
		ref Color reference108 = ref colors[107];
		reference108 = Color.FromArgb(190, 190, 190);
		ref Color reference109 = ref colors[108];
		reference109 = Color.FromArgb(54, 54, 54);
		ref Color reference110 = ref colors[109];
		reference110 = Color.LightGray;
		ref Color reference111 = ref colors[110];
		reference111 = Color.FromArgb(68, 81, 113);
		ref Color reference112 = ref colors[111];
		reference112 = Color.FromArgb(154, 166, 195);
		ref Color reference113 = ref colors[112];
		reference113 = Color.FromArgb(243, 243, 243);
		ref Color reference114 = ref colors[113];
		reference114 = Color.FromArgb(228, 228, 228);
		ref Color reference115 = ref colors[114];
		reference115 = Color.FromArgb(74, 74, 74);
		ref Color reference116 = ref colors[115];
		reference116 = Color.FromArgb(65, 65, 65);
		ref Color reference117 = ref colors[116];
		reference117 = Color.FromArgb(158, 158, 158);
		ref Color reference118 = ref colors[117];
		reference118 = Color.FromArgb(154, 154, 154);
		ref Color reference119 = ref colors[118];
		reference119 = Color.FromArgb(132, 132, 132);
		ref Color reference120 = ref colors[119];
		reference120 = Color.FromArgb(132, 132, 132);
		ref Color reference121 = ref colors[120];
		reference121 = Color.FromArgb(128, 128, 128);
	}

	private Color GetConvertedColor(float s, float l)
	{
		ColorHSL colorHSL = new ColorHSL(OfficeColors[120]);
		colorHSL.S = (int)((float)colorHSL.S * s);
		colorHSL.L = (int)((float)colorHSL.L * l);
		return colorHSL.ToRGB();
	}

	private static int MergeChannels(int baseChannel, int blendChannel)
	{
		int num = baseChannel * blendChannel / 255;
		int num2 = 255 - (255 - baseChannel) * (255 - blendChannel) / 255;
		return (byte)(num + baseChannel * (num2 - num) / 255);
	}

	private static void ManagedColorsApplied(Office2007Colors.ManagedColorsAppliedEventArgs args)
	{
		ManagedColors.UpdateColors(args.BaseColor);
	}
}
