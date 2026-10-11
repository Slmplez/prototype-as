using System;
using System.Drawing;
using System.Reflection;
using System.Windows.Forms;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms;

public class Office2007Colors : ICloneable
{
	public class ManagedColorsAppliedEventArgs : EventArgs
	{
		public Form Form;

		public Color BaseColor;

		public ManagedColorsAppliedEventArgs(Form form, Color baseColor)
		{
			Form = form;
			BaseColor = baseColor;
		}
	}

	public delegate void ManagedColorsAppliedEventHandler(ManagedColorsAppliedEventArgs args);

	private static Office2007BlueColors s_blueColors;

	private static Office2007SilverColors s_silverColors;

	private static Office2007BlackColors s_blackColors;

	private static Office2007Colors s_managedColors;

	private static Office2007Theme s_defaultTheme;

	private static Color s_managedBaseColor;

	protected Color m_TabItemBorderColor = Color.Empty;

	protected Color m_TabItemInnerBorderColor = Color.Empty;

	protected Color m_TabItemOuterBorderColor = Color.Empty;

	protected Color m_TabItemTextColor = Color.Empty;

	protected Color m_TabItemActiveBottomColor = Color.Empty;

	protected Color m_TabItemTopGradientColor = Color.Empty;

	protected Color m_TabItemInActiveBottomColor = Color.Empty;

	protected Color m_TabItemMiddleLineColor = Color.Empty;

	protected Color m_TabPanelColor = Color.Empty;

	protected Color m_TabPanelBorderColor = Color.Empty;

	protected Color m_TabPanelBackColor = Color.Empty;

	protected Color m_DataTimePickerBorderColor = Color.Empty;

	protected Color m_DataTimePickerHighLightedBorderColor = Color.Empty;

	protected Color m_DataTimePickerSelectedBorderColor = Color.Empty;

	protected Color m_DataTimePickerDropDownArrowColor = Color.Empty;

	protected Color m_DataTimePickerDropDownLightColor = Color.Empty;

	protected Color m_DataTimePickerDropDownDarkColor = Color.Empty;

	protected Color m_DataTimePickerDropDownHighLightLightColor = Color.Empty;

	protected Color m_DataTimePickerDropDownHighLightDarkColor = Color.Empty;

	protected Color m_DataTimePickerDropDownSelectedLightColor = Color.Empty;

	protected Color m_DataTimePickerDropDownSelectedDarkColor = Color.Empty;

	protected Color m_DataTimePickerCheckBoxNormalColor = Color.Empty;

	protected Color m_DataTimePickerCheckBoxSelectedColor = Color.Empty;

	protected Color m_DataTimePickerCheckBoxBorderPushedColor = Color.Empty;

	protected Color m_DataTimePickerCheckBoxBorderNormalColor = Color.Empty;

	protected Color m_DataTimePickerCheckBoxInnerRectBorderNormalColor = Color.Empty;

	protected Color m_DataTimePickerCheckBoxInnerRectBorderSelectedColor = Color.Empty;

	protected Color m_DataTimePickerCheckBoxInnerRectBorderPushedColor = Color.Empty;

	protected Color m_DataTimePickerCheckBoxInnerRectFillNormalColor = Color.Empty;

	protected Color m_DataTimePickerCheckBoxInnerRectFillSelectedColor = Color.Empty;

	protected Color m_DataTimePickerCheckBoxInnerRectFillPushedColor = Color.Empty;

	protected Color m_DataTimePickerHighLightedForeColor = Color.Empty;

	protected Color m_MonthCalendarHeaderStartColor = Color.Empty;

	protected Color m_MonthCalendarHeaderEndColor = Color.Empty;

	protected Color m_MonthCalendarForeColor = Color.Empty;

	protected Color m_GroupBarBorderColor = Color.Empty;

	protected Color m_GroupBarItemColorDark = Color.Empty;

	protected Color m_GroupBarItemColorLight = Color.Empty;

	protected Color m_GroupBarHighlightColorLight = Color.Empty;

	protected Color m_GroupBarHighlightColorDark = Color.Empty;

	protected Color m_GroupBarSelectedColorLight = Color.Empty;

	protected Color m_GroupBarSelectedColorDark = Color.Empty;

	protected Color m_GroupBarSelectedTopColorLight = Color.Empty;

	protected Color m_GroupBarSelectedTopColorDark = Color.Empty;

	protected Color m_GroupBarSelectedHighlightColorLight = Color.Empty;

	protected Color m_GroupBarSelectedHighlightColorDark = Color.Empty;

	protected Color m_GroupBarHeaderColorLight = Color.Empty;

	protected Color m_GroupBarHeaderColorDark = Color.Empty;

	protected Color m_GroupBarItemTextColor = Color.Empty;

	protected Color m_GroupBarHeaderTextColor = Color.Empty;

	protected Color m_GroupBarSplitterColorDark = Color.Empty;

	protected Color m_GroupBarSplitterColorLight = Color.Empty;

	protected Color m_GroupBarClientAreaBackground = Color.Empty;

	protected Color m_XPTaskPaneInternalBorderColor = Color.Empty;

	protected Color m_XPTaskPaneBorderColor = Color.Empty;

	protected Color m_XPTaskPageBackColor = Color.Empty;

	protected Color m_MenuBorderColor = Color.Empty;

	protected Color m_MenuSeparatorColor = Color.Empty;

	protected Color m_MenuColumnColor = Color.Empty;

	protected Color m_MenuColumnSeparatorColor = Color.Empty;

	protected Color m_MenuBackground = Color.Empty;

	protected Color m_MenuItemBorderColor = Color.Empty;

	protected Color m_MenuItemDarkColor = Color.Empty;

	protected Color m_MenuItemLightColor = Color.Empty;

	protected Color m_MenuItemArrowLightColor = Color.Empty;

	protected Color m_MenuItemArrowDarkColor = Color.Empty;

	protected Color m_MenuCheckedColor = Color.Empty;

	protected Color m_MenuCheckedFillColor = Color.Empty;

	protected Color m_MenuCheckedBorderColor = Color.Empty;

	protected Color m_MenuTextBoxBorderColor = Color.Empty;

	protected Color m_MenuTextBoxBackColor = Color.Empty;

	protected Color m_MenuComboButtonPushed1Color = Color.Empty;

	protected Color m_MenuComboButtonPushed2Color = Color.Empty;

	protected Color m_MenuComboButtonPushed3Color = Color.Empty;

	protected Color m_MenuComboButtonPushed4Color = Color.Empty;

	protected Color m_MenuComboButtonHighlightLightColor = Color.Empty;

	protected Color m_MenuComboButtonHighlightDarkColor = Color.Empty;

	protected Color m_MenuComboButtonArrowColor = Color.Empty;

	protected Color m_DropDownLightColor = Color.Empty;

	protected Color m_DropDownDarkColor = Color.Empty;

	protected Color m_CommandBarDarkColor = Color.Empty;

	protected Color m_CommandBarLightColor = Color.Empty;

	protected Color m_CommandBarBorderColor = Color.Empty;

	protected Color m_DockBarBackColor = Color.Empty;

	protected Color m_DropDownHighlightLightColor = Color.Empty;

	protected Color m_DropDownHighlightDarkColor = Color.Empty;

	protected Color m_DropDownPressedLightColor = Color.Empty;

	protected Color m_DropDownPressedDarkColor = Color.Empty;

	protected Color m_FloatHighlightButtonColor = Color.Empty;

	protected Color m_FloatHighlightButtonBorderColor = Color.Empty;

	protected Color m_FloatPressButtonColor = Color.Empty;

	protected Color m_FloatPressButtonBorderColor = Color.Empty;

	protected Color m_FloatPressCloseButtonBorderColor = Color.Empty;

	protected Color m_FloatPressCloseButtonColor = Color.Empty;

	protected Color m_FloatCommandBarLightColor = Color.Empty;

	protected Color m_FloatCommandBarDarkColor = Color.Empty;

	protected Color m_FloatLightBorderColor = Color.Empty;

	protected Color m_FloatBackgroundColor = Color.Empty;

	protected Color m_FloatBorderColor = Color.Empty;

	protected Color m_FloatCaptionColor = Color.Empty;

	protected Color m_BarItemSeparatorColor = Color.Empty;

	protected Color m_BarItemPressBorderColor = Color.Empty;

	protected Color m_BarItemHighlightBorderColor = Color.Empty;

	protected Color m_BarItemPressLightColor = Color.Empty;

	protected Color m_BarItemPressDarkColor = Color.Empty;

	protected Color m_DropDownBarItemLightColor = Color.Empty;

	protected Color m_DropDownBarItemDarkColor = Color.Empty;

	protected Color m_DropDownBarItemBorderColor = Color.Empty;

	protected Color m_BarItemCheckLightColor = Color.Empty;

	protected Color m_BarItemCheckDarkColor = Color.Empty;

	protected Color m_BarItemCheckBorderColor = Color.Empty;

	protected Color m_BarItemCheckFlashColor = Color.Empty;

	protected Color m_BarItemPressFlashColor = Color.Empty;

	protected Color m_BarItemSelectFlashColor = Color.Empty;

	protected Color m_TextBarItemBackColor = Color.Empty;

	protected Color m_TextBarItemBorderColor = Color.Empty;

	protected Color m_TextBarItemBorderHighlightColor = Color.Empty;

	protected Color m_ComboButtonLightColor = Color.Empty;

	protected Color m_ComboButtonDarkColor = Color.Empty;

	protected Color m_ComboButtonPressLightColor = Color.Empty;

	protected Color m_ComboButtonPressDarkColor = Color.Empty;

	protected Color m_ComboButtonHighlightLightColor = Color.Empty;

	protected Color m_ComboButtonHighlightDarkColor = Color.Empty;

	protected Color m_ComboButtonBorder = Color.Empty;

	protected Color m_ComboButtonPressBorder = Color.Empty;

	protected Color m_ComboButtonHighlightBorder = Color.Empty;

	protected Color m_ButtonPressedTopColor = Color.Empty;

	protected Color m_ButtonPressedBottomColor = Color.Empty;

	protected Color m_ButtonSelectedTopColor = Color.Empty;

	protected Color m_ButtonSelectedBottomColor = Color.Empty;

	protected Color m_ButtonDisabledTopColor = Color.Empty;

	protected Color m_ButtonDisabledBottomColor = Color.Empty;

	protected Color m_ButtonPressedBorderColor = Color.Empty;

	protected Color m_ButtonSelectedBorderColor = Color.Empty;

	protected Color m_ButtonDisabledBorderColor = Color.Empty;

	protected Color m_ButtonDefaultTopColor = Color.Empty;

	protected Color m_ButtonDefaultBottomColor = Color.Empty;

	protected Color m_ButtonDefaultBorderColor = Color.Empty;

	protected Color m_ButtonDefaultInternalBorderColor = Color.Empty;

	protected Color m_ButtonPressedInternalBorderColor = Color.Empty;

	protected Color m_ButtonSelectedInternalBorderColor = Color.Empty;

	protected Color m_BlueButtonDefaultTopColor = Color.Empty;

	protected Color m_BlueButtonDefaultBottomColor = Color.Empty;

	protected Color m_BlueButtonDefaultBorderColor = Color.Empty;

	protected Color m_BlueButtonDefaultInternalBorderColor = Color.Empty;

	protected Color m_BlueButtonPressedInternalBorderColor = Color.Empty;

	protected Color m_BlueButtonSelectedInternalBorderColor = Color.Empty;

	protected Color m_SilverButtonDefaultTopColor = Color.Empty;

	protected Color m_SilverButtonDefaultBottomColor = Color.Empty;

	protected Color m_SilverButtonDefaultBorderColor = Color.Empty;

	protected Color m_SilverButtonDefaultInternalBorderColor = Color.Empty;

	protected Color m_SilverButtonPressedInternalBorderColor = Color.Empty;

	protected Color m_SilverButtonSelectedInternalBorderColor = Color.Empty;

	protected Color m_BlackButtonDefaultTopColor = Color.Empty;

	protected Color m_BlackButtonDefaultBottomColor = Color.Empty;

	protected Color m_BlackButtonDefaultBorderColor = Color.Empty;

	protected Color m_BlackButtonDefaultInternalBorderColor = Color.Empty;

	protected Color m_BlackButtonPressedInternalBorderColor = Color.Empty;

	protected Color m_BlackButtonSelectedInternalBorderColor = Color.Empty;

	protected Color m_NumericUpDownBorderColor = Color.Empty;

	protected Color m_NumericUpDownHighLightedBorderColor = Color.Empty;

	protected Color m_NumericUpDownSelectedBorderColor = Color.Empty;

	protected Color m_NumericUpDownArrowLightColor = Color.Empty;

	protected Color m_NumericUpDownArrowDarkColor = Color.Empty;

	protected Color m_TabDefaultBorderColor = Color.Empty;

	protected Color m_TabHotLightBottomBorderLineColor = Color.Empty;

	protected Color m_TabHotLightGradientTopBeginColor = Color.Empty;

	protected Color m_TabHotLightGradientTopEndColor = Color.Empty;

	protected Color m_TabHotLightGradientBottomBeginColor = Color.Empty;

	protected Color m_TabHotLightGradientBottomEndColor = Color.Empty;

	protected Color m_TabHotLightGradientCircleColor = Color.Empty;

	protected Color m_TabSelectedGradientTopColor = Color.Empty;

	protected Color m_TabSelectedGradientBottomColor = Color.Empty;

	protected Color m_TabSelectedInnerBorderColor = Color.Empty;

	protected Color m_TabHighlightInnerBorderColor = Color.Empty;

	protected Color m_TabSelectedHotLightBorderColor = Color.Empty;

	protected Color m_TabSelectedHotLightInnerBorderColor = Color.Empty;

	protected Color m_TabForeColor = Color.Empty;

	protected Color m_ActiveTabForeColor = Color.Empty;

	protected Color m_TabBackgroundColor = Color.Empty;

	protected Color m_TabScrollArrowColor = Color.Empty;

	protected Color m_DockTabForeColor = Color.Empty;

	protected Color m_DockTabBackgroundColor = Color.Empty;

	protected Color m_ActiveFormBorderColor = Color.Empty;

	protected Color m_InactiveFormBorderColor = Color.Empty;

	protected Color m_FormTextColor = Color.Empty;

	protected Color m_ActiveTitleGradientBegin = Color.Empty;

	protected Color m_ActiveTitleGradientEnd = Color.Empty;

	protected Color m_InactiveTitleGradientBegin = Color.Empty;

	protected Color m_InactiveTitleGradientEnd = Color.Empty;

	protected Color m_SystemButtonSelectedGradientBegin = Color.Empty;

	protected Color m_SystemButtonSelectedGradientEnd = Color.Empty;

	protected Color m_SystemButtonPressedGradientBegin = Color.Empty;

	protected Color m_SystemButtonPressedGradientEnd = Color.Empty;

	protected Color m_SystemButtonBorderSelected = Color.Empty;

	protected Color m_SystemButtonBorderPressed = Color.Empty;

	protected Color m_FormBackground = Color.Empty;

	protected Color m_UpDownArrowStartColor = Color.Empty;

	protected Color m_UpDownArrowEndColor = Color.Empty;

	protected Color m_UpDownBorderNormalColor = Color.Empty;

	protected Color m_UpDownBackgroundNormalColor = Color.Empty;

	protected Color m_UpDownBackgroundNormalStartColor = Color.Empty;

	protected Color m_UpDownBackgroundNormalEndColor = Color.Empty;

	protected Color m_UpDownBorderHotColor = Color.Empty;

	protected Color m_UpDownInnerBorderHotStartColor = Color.Empty;

	protected Color m_UpDownInnerBorderHotEndColor = Color.Empty;

	protected Color m_UpDownBorderPressedColor = Color.Empty;

	protected Color m_UpDownInnerBorderPressedStartColor = Color.Empty;

	protected Color m_UpDownInnerBorderPressedEndColor = Color.Empty;

	protected Color m_UpDownBackgroundDisabledStartColor = Color.Empty;

	protected Color m_UpDownBackgroundDisabledEndColor = Color.Empty;

	protected Color m_UpDownBorderDisabledColor = Color.Empty;

	protected Color m_UpDownBackgroundHotTopStartColor = Color.Empty;

	protected Color m_UpDownBackgroundHotTopEndColor = Color.Empty;

	protected Color m_UpDownBackgroundHotBottomStartColor = Color.Empty;

	protected Color m_UpDownBackgroundHotBottomEndColor = Color.Empty;

	protected Color m_UpDownBackgroundPressedTopStartColor = Color.Empty;

	protected Color m_UpDownBackgroundPressedTopEndColor = Color.Empty;

	protected Color m_UpDownBackgroundPressedBottomStartColor = Color.Empty;

	protected Color m_UpDownBackgroundPressedBottomEndColor = Color.Empty;

	protected Color m_ComboBoxAdvNormalBackColor = Color.Empty;

	protected Color m_ComboBoxAdvHotBackColor = Color.Empty;

	protected Color m_ComboBoxAdvNormalBorderColor = Color.Empty;

	protected Color m_ComboBoxAdvHotBorderColor = Color.Empty;

	protected Color m_ComboBoxAdvPushedBorderColor = Color.Empty;

	protected Color m_ComboBoxAdvButtonUpperLineColor = Color.Empty;

	protected Color m_ComboBoxAdvArrowColor = Color.Empty;

	protected Color m_ComboBoxAdvLowerArrowLineColor = Color.Empty;

	protected Color m_ComboBoxAdvHotBackgroundButtonColor1 = Color.Empty;

	protected Color m_ComboBoxAdvHotBackgroundButtonColor2 = Color.Empty;

	protected Color m_ComboBoxAdvHotBackgroundButtonColor3 = Color.Empty;

	protected Color m_ComboBoxAdvHotBackgroundButtonColor4 = Color.Empty;

	protected Color m_ComboBoxAdvNormalBackgroundButtonColor1 = Color.Empty;

	protected Color m_ComboBoxAdvNormalBackgroundButtonColor2 = Color.Empty;

	protected Color m_ComboBoxAdvNormalBackgroundButtonColor3 = Color.Empty;

	protected Color m_ComboBoxAdvNormalBackgroundButtonColor4 = Color.Empty;

	protected Color m_ComboBoxAdvPushedBackgroundButtonColor1 = Color.Empty;

	protected Color m_ComboBoxAdvPushedBackgroundButtonColor2 = Color.Empty;

	protected Color m_ComboBoxAdvPushedBackgroundButtonColor3 = Color.Empty;

	protected Color m_ComboBoxAdvPushedBackgroundButtonColor4 = Color.Empty;

	protected Color m_CheckBoxAdvNormalBackColor = Color.Empty;

	protected Color m_CheckBoxAdvSelectedBackColor = Color.Empty;

	protected Color m_CheckBoxAdvPushedBackColor = Color.Empty;

	protected Color m_CheckBoxAdvNormalBorderColor = Color.Empty;

	protected Color m_CheckBoxAdvSelectedBorderColor = Color.Empty;

	protected Color m_CheckBoxAdvPushedBorderColor = Color.Empty;

	protected Color m_CheckBoxAdvNormalInternalBorderColor = Color.Empty;

	protected Color m_CheckBoxAdvSelectedInternalBorderColor = Color.Empty;

	protected Color m_CheckBoxAdvPushedInternalBorderColor = Color.Empty;

	protected Color m_CheckBoxAdvNormalInternalRectangleBorderColor = Color.Empty;

	protected Color m_CheckBoxAdvSelectedInternalRectangleBorderColor = Color.Empty;

	protected Color m_CheckBoxAdvPushedInternalRectangleBorderColor = Color.Empty;

	protected Color m_CheckBoxAdvNormalInternalRectangleColor = Color.Empty;

	protected Color m_CheckBoxAdvSelectedInternalRectangleColor = Color.Empty;

	protected Color m_CheckBoxAdvPushedInternalRectangleColor = Color.Empty;

	protected Color m_CheckBoxAdvNormalTickColor = Color.Empty;

	protected Color m_CheckBoxAdvSelectedTickColor = Color.Empty;

	protected Color m_CheckBoxAdvPushedTickColor = Color.Empty;

	protected Color m_CheckBoxAdvDisabledTickColor = Color.Empty;

	protected Color m_CheckBoxAdvIndeterminateRectangleColor = Color.Empty;

	protected Color m_CheckBoxAdvDisabledBackColor = Color.Empty;

	protected Color m_CheckBoxAdvDisabledBorderColor = Color.Empty;

	protected Color m_CheckBoxAdvDisabledInternalBorderColor = Color.Empty;

	protected Color m_RadioButtonAdvNormalBackColor = Color.Empty;

	protected Color m_RadioButtonAdvNormalBorderColor = Color.Empty;

	protected Color m_RadioButtonAdvNormalInternalBorderColor = Color.Empty;

	protected Color m_RadioButtonAdvSelectedBackColor = Color.Empty;

	protected Color m_RadioButtonAdvSelectedBorderColor = Color.Empty;

	protected Color m_RadioButtonAdvSelectedInternalBorderColor = Color.Empty;

	protected Color m_RadioButtonAdvPushedBackColor = Color.Empty;

	protected Color m_RadioButtonAdvPushedBorderColor = Color.Empty;

	protected Color m_RadioButtonAdvPushedInternalBorderColor = Color.Empty;

	protected Color m_RadioButtonAdvCheckMarkBorderColor = Color.Empty;

	protected Color m_RadioButtonAdvCheckMarkNormalBottomColor = Color.Empty;

	protected Color m_RadioButtonAdvCheckMarkSelectedBottomColor = Color.Empty;

	protected Color m_RadioButtonAdvCheckMarkPushedBottomColor = Color.Empty;

	protected Color m_TabBarSplitterBackColor = Color.Empty;

	protected Color m_TabBarSplitterBorderColor = Color.Empty;

	protected Color m_TabBarSplitterTextColor = Color.Empty;

	protected Color m_TabBarSplitterTabStartColor = Color.Empty;

	protected Color m_TabBarSplitterTabEndColor = Color.Empty;

	protected Color m_TabBarSplitterTabBarStartColor = Color.Empty;

	protected Color m_TabBarSplitterTabBarEndColor = Color.Empty;

	protected Color m_TabBarSplitterButtonHoveredStartColor = Color.Empty;

	protected Color m_TabBarSplitterButtonHoveredEndColor = Color.Empty;

	protected Color m_TabBarSplitterButtonPushedStartColor = Color.Empty;

	protected Color m_TabBarSplitterButtonPushedEndColor = Color.Empty;

	protected Color m_TabBarSplitterSizeGripperColor = Color.Empty;

	protected Color m_TabBarSplitterSizeGripperLightColor = Color.Empty;

	protected Color m_TabBarSplitterSizeGripperDarkColor = Color.Empty;

	protected Color m_XPTaskBarBorderColor = Color.Empty;

	protected Color m_XPTaskBarBoxBackColor = Color.Empty;

	protected Color m_XPTaskBarBoxForeColor = Color.Empty;

	protected Color m_XPTaskBarBoxHeaderUpperLineColor = Color.Empty;

	protected Color m_XPTaskBarBoxHeaderLowerLineColor = Color.Empty;

	protected Color m_XPTaskBarBoxArrowColor = Color.Empty;

	protected Color m_XPTaskBarBoxActiveHighlightedItemColor = Color.Empty;

	protected Color m_XPTaskBarBoxInactiveHighlightedItemColor = Color.Empty;

	protected Color m_ColorUIAdvBackColor = Color.Empty;

	protected Color m_ColorUIAdvTextColor = Color.Empty;

	protected Color m_ColorUIAdvItemBorderColor = Color.Empty;

	protected Color m_ColorUIAdvHighlightedBorderColor = Color.Empty;

	protected Color m_ColorUIAdvSelectedBorderColor = Color.Empty;

	protected Color m_ColorUIAdvSelectedHighlightedBorderColor = Color.Empty;

	protected Color m_ColorUIAdvGroupHeaderBackColor = Color.Empty;

	public static Office2007Colors Default => GetColorTable(s_defaultTheme);

	public static Office2007Theme DefaultTheme
	{
		get
		{
			return s_defaultTheme;
		}
		set
		{
			if (value != s_defaultTheme)
			{
				s_defaultTheme = value;
			}
		}
	}

	internal static Office2007Colors ManagedColors => s_managedColors;

	internal static Color ManagedBaseColor => s_managedBaseColor;

	public Color TabPanelBorderColor
	{
		get
		{
			return m_TabPanelBorderColor;
		}
		set
		{
			if (m_TabPanelBorderColor != value)
			{
				m_TabPanelBorderColor = value;
			}
		}
	}

	public Color TabPanelBackColor
	{
		get
		{
			return m_TabPanelBackColor;
		}
		set
		{
			if (m_TabPanelBackColor != value)
			{
				m_TabPanelBackColor = value;
			}
		}
	}

	public Color TabPanelColor
	{
		get
		{
			return m_TabPanelColor;
		}
		set
		{
			if (m_TabPanelColor != value)
			{
				m_TabPanelColor = value;
			}
		}
	}

	public Color TabItemBorderColor
	{
		get
		{
			return m_TabItemBorderColor;
		}
		set
		{
			if (m_TabItemBorderColor != value)
			{
				m_TabItemBorderColor = value;
			}
		}
	}

	public Color TabItemInnerBorderColor
	{
		get
		{
			return m_TabItemInnerBorderColor;
		}
		set
		{
			if (m_TabItemInnerBorderColor != value)
			{
				m_TabItemInnerBorderColor = value;
			}
		}
	}

	public Color TabItemOuterBorderColor
	{
		get
		{
			return m_TabItemOuterBorderColor;
		}
		set
		{
			if (m_TabItemOuterBorderColor != value)
			{
				m_TabItemOuterBorderColor = value;
			}
		}
	}

	public Color TabItemTextColor
	{
		get
		{
			return m_TabItemTextColor;
		}
		set
		{
			if (m_TabItemTextColor != value)
			{
				m_TabItemTextColor = value;
			}
		}
	}

	public Color TabItemActiveBottomColor
	{
		get
		{
			return m_TabItemActiveBottomColor;
		}
		set
		{
			if (m_TabItemActiveBottomColor != value)
			{
				m_TabItemActiveBottomColor = value;
			}
		}
	}

	[Obsolete("Use TabItemTopGradientColor property instead.")]
	public Color TopGradientColor
	{
		get
		{
			return TabItemTopGradientColor;
		}
		set
		{
			TabItemTopGradientColor = value;
		}
	}

	public Color TabItemTopGradientColor
	{
		get
		{
			return m_TabItemTopGradientColor;
		}
		set
		{
			if (m_TabItemTopGradientColor != value)
			{
				m_TabItemTopGradientColor = value;
			}
		}
	}

	public Color TabItemInActiveBottomColor
	{
		get
		{
			return m_TabItemInActiveBottomColor;
		}
		set
		{
			if (m_TabItemInActiveBottomColor != value)
			{
				m_TabItemInActiveBottomColor = value;
			}
		}
	}

	public Color TabItemMiddleLineColor
	{
		get
		{
			return m_TabItemMiddleLineColor;
		}
		set
		{
			if (m_TabItemMiddleLineColor != value)
			{
				m_TabItemMiddleLineColor = value;
			}
		}
	}

	public Color DataTimePickerBorderColor
	{
		get
		{
			return m_DataTimePickerBorderColor;
		}
		set
		{
			if (m_DataTimePickerBorderColor != value)
			{
				m_DataTimePickerBorderColor = value;
			}
		}
	}

	public Color DataTimePickerHighLightedBorderColor
	{
		get
		{
			return m_DataTimePickerHighLightedBorderColor;
		}
		set
		{
			if (m_DataTimePickerHighLightedBorderColor != value)
			{
				m_DataTimePickerHighLightedBorderColor = value;
			}
		}
	}

	public Color DataTimePickerSelectedBorderColor
	{
		get
		{
			return m_DataTimePickerSelectedBorderColor;
		}
		set
		{
			if (m_DataTimePickerSelectedBorderColor != value)
			{
				m_DataTimePickerSelectedBorderColor = value;
			}
		}
	}

	public Color DataTimePickerDropDownArrowColor
	{
		get
		{
			return m_DataTimePickerDropDownArrowColor;
		}
		set
		{
			if (m_DataTimePickerDropDownArrowColor != value)
			{
				m_DataTimePickerDropDownArrowColor = value;
			}
		}
	}

	public Color DataTimePickerDropDownLightColor
	{
		get
		{
			return m_DataTimePickerDropDownLightColor;
		}
		set
		{
			if (m_DataTimePickerDropDownLightColor != value)
			{
				m_DataTimePickerDropDownLightColor = value;
			}
		}
	}

	public Color DataTimePickerDropDownDarkColor
	{
		get
		{
			return m_DataTimePickerDropDownDarkColor;
		}
		set
		{
			if (m_DataTimePickerDropDownDarkColor != value)
			{
				m_DataTimePickerDropDownDarkColor = value;
			}
		}
	}

	public Color DataTimePickerDropDownHighLightLightColor
	{
		get
		{
			return m_DataTimePickerDropDownHighLightLightColor;
		}
		set
		{
			if (m_DataTimePickerDropDownHighLightLightColor != value)
			{
				m_DataTimePickerDropDownHighLightLightColor = value;
			}
		}
	}

	public Color DataTimePickerDropDownHighLightDarkColor
	{
		get
		{
			return m_DataTimePickerDropDownHighLightDarkColor;
		}
		set
		{
			if (m_DataTimePickerDropDownHighLightDarkColor != value)
			{
				m_DataTimePickerDropDownHighLightDarkColor = value;
			}
		}
	}

	public Color DataTimePickerDropDownSelectedLightColor
	{
		get
		{
			return m_DataTimePickerDropDownSelectedLightColor;
		}
		set
		{
			if (m_DataTimePickerDropDownSelectedLightColor != value)
			{
				m_DataTimePickerDropDownSelectedLightColor = value;
			}
		}
	}

	public Color DataTimePickerDropDownSelectedDarkColor
	{
		get
		{
			return m_DataTimePickerDropDownSelectedDarkColor;
		}
		set
		{
			if (m_DataTimePickerDropDownSelectedDarkColor != value)
			{
				m_DataTimePickerDropDownSelectedDarkColor = value;
			}
		}
	}

	public Color DataTimePickerCheckBoxNormalColor
	{
		get
		{
			return m_DataTimePickerCheckBoxNormalColor;
		}
		set
		{
			if (m_DataTimePickerCheckBoxNormalColor != value)
			{
				m_DataTimePickerCheckBoxNormalColor = value;
			}
		}
	}

	public Color DataTimePickerCheckBoxSelectedColor
	{
		get
		{
			return m_DataTimePickerCheckBoxSelectedColor;
		}
		set
		{
			if (m_DataTimePickerCheckBoxSelectedColor != value)
			{
				m_DataTimePickerCheckBoxSelectedColor = value;
			}
		}
	}

	public Color DataTimePickerCheckBoxBorderPushedColor
	{
		get
		{
			return m_DataTimePickerCheckBoxBorderPushedColor;
		}
		set
		{
			if (m_DataTimePickerCheckBoxBorderPushedColor != value)
			{
				m_DataTimePickerCheckBoxBorderPushedColor = value;
			}
		}
	}

	public Color DataTimePickerCheckBoxBorderNormalColor
	{
		get
		{
			return m_DataTimePickerCheckBoxBorderNormalColor;
		}
		set
		{
			if (m_DataTimePickerCheckBoxBorderNormalColor != value)
			{
				m_DataTimePickerCheckBoxBorderNormalColor = value;
			}
		}
	}

	public Color DataTimePickerCheckBoxInnerRectBorderNormalColor
	{
		get
		{
			return m_DataTimePickerCheckBoxInnerRectBorderNormalColor;
		}
		set
		{
			if (m_DataTimePickerCheckBoxInnerRectBorderNormalColor != value)
			{
				m_DataTimePickerCheckBoxInnerRectBorderNormalColor = value;
			}
		}
	}

	public Color DataTimePickerCheckBoxInnerRectBorderSelectedColor
	{
		get
		{
			return m_DataTimePickerCheckBoxInnerRectBorderSelectedColor;
		}
		set
		{
			if (m_DataTimePickerCheckBoxInnerRectBorderSelectedColor != value)
			{
				m_DataTimePickerCheckBoxInnerRectBorderSelectedColor = value;
			}
		}
	}

	public Color DataTimePickerCheckBoxInnerRectBorderPushedColor
	{
		get
		{
			return m_DataTimePickerCheckBoxInnerRectBorderPushedColor;
		}
		set
		{
			if (m_DataTimePickerCheckBoxInnerRectBorderPushedColor != value)
			{
				m_DataTimePickerCheckBoxInnerRectBorderPushedColor = value;
			}
		}
	}

	public Color DataTimePickerCheckBoxInnerRectFillNormalColor
	{
		get
		{
			return m_DataTimePickerCheckBoxInnerRectFillNormalColor;
		}
		set
		{
			if (m_DataTimePickerCheckBoxInnerRectFillNormalColor != value)
			{
				m_DataTimePickerCheckBoxInnerRectFillNormalColor = value;
			}
		}
	}

	public Color DataTimePickerCheckBoxInnerRectFillSelectedColor
	{
		get
		{
			return m_DataTimePickerCheckBoxInnerRectFillSelectedColor;
		}
		set
		{
			if (m_DataTimePickerCheckBoxInnerRectFillSelectedColor != value)
			{
				m_DataTimePickerCheckBoxInnerRectFillSelectedColor = value;
			}
		}
	}

	public Color DataTimePickerCheckBoxInnerRectFillPushedColor
	{
		get
		{
			return m_DataTimePickerCheckBoxInnerRectFillPushedColor;
		}
		set
		{
			if (m_DataTimePickerCheckBoxInnerRectFillPushedColor != value)
			{
				m_DataTimePickerCheckBoxInnerRectFillPushedColor = value;
			}
		}
	}

	public Color DataTimePickerHighLightedForeColor
	{
		get
		{
			return m_DataTimePickerHighLightedForeColor;
		}
		set
		{
			if (m_DataTimePickerHighLightedForeColor != value)
			{
				m_DataTimePickerHighLightedForeColor = value;
			}
		}
	}

	public Color NumericUpDownBorderColor
	{
		get
		{
			return m_NumericUpDownBorderColor;
		}
		set
		{
			if (m_NumericUpDownBorderColor != value)
			{
				m_NumericUpDownBorderColor = value;
			}
		}
	}

	public Color NumericUpDownHighLightedBorderColor
	{
		get
		{
			return m_NumericUpDownHighLightedBorderColor;
		}
		set
		{
			if (m_NumericUpDownHighLightedBorderColor != value)
			{
				m_NumericUpDownHighLightedBorderColor = value;
			}
		}
	}

	public Color NumericUpDownSelectedBorderColor
	{
		get
		{
			return m_NumericUpDownSelectedBorderColor;
		}
		set
		{
			if (m_NumericUpDownSelectedBorderColor != value)
			{
				m_NumericUpDownSelectedBorderColor = value;
			}
		}
	}

	public Color NumericUpDownArrowLightColor
	{
		get
		{
			return m_NumericUpDownArrowLightColor;
		}
		set
		{
			if (m_NumericUpDownArrowLightColor != value)
			{
				m_NumericUpDownArrowLightColor = value;
			}
		}
	}

	public Color NumericUpDownArrowDarkColor
	{
		get
		{
			return m_NumericUpDownArrowDarkColor;
		}
		set
		{
			if (m_NumericUpDownArrowDarkColor != value)
			{
				m_NumericUpDownArrowDarkColor = value;
			}
		}
	}

	public Color MonthCalendarHeaderStartColor
	{
		get
		{
			return m_MonthCalendarHeaderStartColor;
		}
		set
		{
			if (m_MonthCalendarHeaderStartColor != value)
			{
				m_MonthCalendarHeaderStartColor = value;
			}
		}
	}

	public Color MonthCalendarHeaderEndColor
	{
		get
		{
			return m_MonthCalendarHeaderEndColor;
		}
		set
		{
			if (m_MonthCalendarHeaderEndColor != value)
			{
				m_MonthCalendarHeaderEndColor = value;
			}
		}
	}

	public Color MonthCalendarForeColor
	{
		get
		{
			return m_MonthCalendarForeColor;
		}
		set
		{
			if (m_MonthCalendarForeColor != value)
			{
				m_MonthCalendarForeColor = value;
			}
		}
	}

	public Color GroupBarBorderColor
	{
		get
		{
			return m_GroupBarBorderColor;
		}
		set
		{
			if (m_GroupBarBorderColor != value)
			{
				m_GroupBarBorderColor = value;
			}
		}
	}

	public Color GroupBarItemColorDark
	{
		get
		{
			return m_GroupBarItemColorDark;
		}
		set
		{
			if (m_GroupBarItemColorDark != value)
			{
				m_GroupBarItemColorDark = value;
			}
		}
	}

	public Color GroupBarItemColorLight
	{
		get
		{
			return m_GroupBarItemColorLight;
		}
		set
		{
			if (m_GroupBarItemColorLight != value)
			{
				m_GroupBarItemColorLight = value;
			}
		}
	}

	public Color GroupBarHeaderColorDark
	{
		get
		{
			return m_GroupBarHeaderColorDark;
		}
		set
		{
			if (m_GroupBarHeaderColorDark != value)
			{
				m_GroupBarHeaderColorDark = value;
			}
		}
	}

	public Color GroupBarHeaderColorLight
	{
		get
		{
			return m_GroupBarHeaderColorLight;
		}
		set
		{
			if (m_GroupBarHeaderColorLight != value)
			{
				m_GroupBarHeaderColorLight = value;
			}
		}
	}

	public Color GroupBarHighlightColorLight
	{
		get
		{
			return m_GroupBarHighlightColorLight;
		}
		set
		{
			if (m_GroupBarHighlightColorLight != value)
			{
				m_GroupBarHighlightColorLight = value;
			}
		}
	}

	public Color GroupBarHighlightColorDark
	{
		get
		{
			return m_GroupBarHighlightColorDark;
		}
		set
		{
			if (m_GroupBarHighlightColorDark != value)
			{
				m_GroupBarHighlightColorDark = value;
			}
		}
	}

	public Color GroupBarSelectedColorDark
	{
		get
		{
			return m_GroupBarSelectedColorDark;
		}
		set
		{
			if (m_GroupBarSelectedColorDark != value)
			{
				m_GroupBarSelectedColorDark = value;
			}
		}
	}

	public Color GroupBarSelectedColorLight
	{
		get
		{
			return m_GroupBarSelectedColorLight;
		}
		set
		{
			if (m_GroupBarSelectedColorLight != value)
			{
				m_GroupBarSelectedColorLight = value;
			}
		}
	}

	public Color GroupBarSelectedTopColorDark
	{
		get
		{
			return m_GroupBarSelectedTopColorDark;
		}
		set
		{
			if (m_GroupBarSelectedTopColorDark != value)
			{
				m_GroupBarSelectedTopColorDark = value;
			}
		}
	}

	public Color GroupBarSelectedTopColorLight
	{
		get
		{
			return m_GroupBarSelectedTopColorLight;
		}
		set
		{
			if (m_GroupBarSelectedTopColorLight != value)
			{
				m_GroupBarSelectedTopColorLight = value;
			}
		}
	}

	public Color GroupBarSelectedHighlightColorDark
	{
		get
		{
			return m_GroupBarSelectedHighlightColorDark;
		}
		set
		{
			if (m_GroupBarSelectedHighlightColorDark != value)
			{
				m_GroupBarSelectedHighlightColorDark = value;
			}
		}
	}

	public Color GroupBarSelectedHighlightColorLight
	{
		get
		{
			return m_GroupBarSelectedHighlightColorLight;
		}
		set
		{
			if (m_GroupBarSelectedHighlightColorLight != value)
			{
				m_GroupBarSelectedHighlightColorLight = value;
			}
		}
	}

	public Color GroupBarItemTextColor
	{
		get
		{
			return m_GroupBarItemTextColor;
		}
		set
		{
			if (m_GroupBarItemTextColor != value)
			{
				m_GroupBarItemTextColor = value;
			}
		}
	}

	public Color GroupBarHeaderTextColor
	{
		get
		{
			return m_GroupBarHeaderTextColor;
		}
		set
		{
			if (m_GroupBarHeaderTextColor != value)
			{
				m_GroupBarHeaderTextColor = value;
			}
		}
	}

	public Color GroupBarSplitterColorDark
	{
		get
		{
			return m_GroupBarSplitterColorDark;
		}
		set
		{
			if (m_GroupBarSplitterColorDark != value)
			{
				m_GroupBarSplitterColorDark = value;
			}
		}
	}

	public Color GroupBarSplitterColorLight
	{
		get
		{
			return m_GroupBarSplitterColorLight;
		}
		set
		{
			if (m_GroupBarSplitterColorLight != value)
			{
				m_GroupBarSplitterColorLight = value;
			}
		}
	}

	public Color GroupBarClientAreaBackground
	{
		get
		{
			return m_GroupBarClientAreaBackground;
		}
		set
		{
			m_GroupBarClientAreaBackground = value;
		}
	}

	public Color XPTaskPaneInternalBorderColor
	{
		get
		{
			return m_XPTaskPaneInternalBorderColor;
		}
		set
		{
			if (m_XPTaskPaneInternalBorderColor != value)
			{
				m_XPTaskPaneInternalBorderColor = value;
			}
		}
	}

	public Color XPTaskPaneBorderColor
	{
		get
		{
			return m_XPTaskPaneBorderColor;
		}
		set
		{
			if (m_XPTaskPaneBorderColor != value)
			{
				m_XPTaskPaneBorderColor = value;
			}
		}
	}

	public Color XPTaskPageBackColor
	{
		get
		{
			return m_XPTaskPageBackColor;
		}
		set
		{
			if (m_XPTaskPageBackColor != value)
			{
				m_XPTaskPageBackColor = value;
			}
		}
	}

	public Color MenuBorderColor
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

	public Color MenuSeparatorColor
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

	public Color MenuItemDarkColor
	{
		get
		{
			return m_MenuItemDarkColor;
		}
		set
		{
			if (m_MenuItemDarkColor != value)
			{
				m_MenuItemDarkColor = value;
			}
		}
	}

	public Color MenuItemLightColor
	{
		get
		{
			return m_MenuItemLightColor;
		}
		set
		{
			if (m_MenuItemLightColor != value)
			{
				m_MenuItemLightColor = value;
			}
		}
	}

	public Color MenuItemBorderColor
	{
		get
		{
			return m_MenuItemBorderColor;
		}
		set
		{
			if (m_MenuItemBorderColor != value)
			{
				m_MenuItemBorderColor = value;
			}
		}
	}

	public Color MenuColumnColor
	{
		get
		{
			return m_MenuColumnColor;
		}
		set
		{
			if (m_MenuColumnColor != value)
			{
				m_MenuColumnColor = value;
			}
		}
	}

	public Color MenuColumnSeparatorColor
	{
		get
		{
			return m_MenuColumnSeparatorColor;
		}
		set
		{
			if (m_MenuColumnSeparatorColor != value)
			{
				m_MenuColumnSeparatorColor = value;
			}
		}
	}

	public Color MenuItemArrowLightColor
	{
		get
		{
			return m_MenuItemArrowLightColor;
		}
		set
		{
			if (m_MenuItemArrowLightColor != value)
			{
				m_MenuItemArrowLightColor = value;
			}
		}
	}

	public Color MenuItemArrowDarkColor
	{
		get
		{
			return m_MenuItemArrowDarkColor;
		}
		set
		{
			if (m_MenuItemArrowDarkColor != value)
			{
				m_MenuItemArrowDarkColor = value;
			}
		}
	}

	public Color MenuCheckedColor
	{
		get
		{
			return m_MenuCheckedColor;
		}
		set
		{
			if (m_MenuCheckedColor != value)
			{
				m_MenuCheckedColor = value;
			}
		}
	}

	public Color MenuCheckedFillColor
	{
		get
		{
			return m_MenuCheckedFillColor;
		}
		set
		{
			if (m_MenuCheckedFillColor != value)
			{
				m_MenuCheckedFillColor = value;
			}
		}
	}

	public Color MenuCheckedBorderColor
	{
		get
		{
			return m_MenuCheckedBorderColor;
		}
		set
		{
			if (m_MenuCheckedBorderColor != value)
			{
				m_MenuCheckedBorderColor = value;
			}
		}
	}

	public Color MenuTextBoxBorderColor
	{
		get
		{
			return m_MenuTextBoxBorderColor;
		}
		set
		{
			if (m_MenuTextBoxBorderColor != value)
			{
				m_MenuTextBoxBorderColor = value;
			}
		}
	}

	public Color MenuTextBoxBackColor
	{
		get
		{
			return m_MenuTextBoxBackColor;
		}
		set
		{
			if (m_MenuTextBoxBackColor != value)
			{
				m_MenuTextBoxBackColor = value;
			}
		}
	}

	public Color MenuComboButtonPushed1Color
	{
		get
		{
			return m_MenuComboButtonPushed1Color;
		}
		set
		{
			if (m_MenuComboButtonPushed1Color != value)
			{
				m_MenuComboButtonPushed1Color = value;
			}
		}
	}

	public Color MenuComboButtonPushed2Color
	{
		get
		{
			return m_MenuComboButtonPushed2Color;
		}
		set
		{
			if (m_MenuComboButtonPushed2Color != value)
			{
				m_MenuComboButtonPushed2Color = value;
			}
		}
	}

	public Color MenuComboButtonPushed3Color
	{
		get
		{
			return m_MenuComboButtonPushed3Color;
		}
		set
		{
			if (m_MenuComboButtonPushed3Color != value)
			{
				m_MenuComboButtonPushed3Color = value;
			}
		}
	}

	public Color MenuComboButtonPushed4Color
	{
		get
		{
			return m_MenuComboButtonPushed4Color;
		}
		set
		{
			if (m_MenuComboButtonPushed4Color != value)
			{
				m_MenuComboButtonPushed4Color = value;
			}
		}
	}

	public Color MenuComboButtonHighlightLightColor
	{
		get
		{
			return m_MenuComboButtonHighlightLightColor;
		}
		set
		{
			if (m_MenuComboButtonHighlightLightColor != value)
			{
				m_MenuComboButtonHighlightLightColor = value;
			}
		}
	}

	public Color MenuComboButtonHighlightDarkColor
	{
		get
		{
			return m_MenuComboButtonHighlightDarkColor;
		}
		set
		{
			if (m_MenuComboButtonHighlightDarkColor != value)
			{
				m_MenuComboButtonHighlightDarkColor = value;
			}
		}
	}

	public Color MenuComboButtonArrowColor
	{
		get
		{
			return m_MenuComboButtonArrowColor;
		}
		set
		{
			if (m_MenuComboButtonArrowColor != value)
			{
				m_MenuComboButtonArrowColor = value;
			}
		}
	}

	public Color MenuBackground
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

	public Color DropDownLightColor
	{
		get
		{
			return m_DropDownLightColor;
		}
		set
		{
			if (m_DropDownLightColor != value)
			{
				m_DropDownLightColor = value;
			}
		}
	}

	public Color DropDownDarkColor
	{
		get
		{
			return m_DropDownDarkColor;
		}
		set
		{
			if (m_DropDownDarkColor != value)
			{
				m_DropDownDarkColor = value;
			}
		}
	}

	public Color CommandBarDarkColor
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

	public Color CommandBarLightColor
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

	public Color CommandBarBorderColor
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

	public Color DockBarBackColor
	{
		get
		{
			return m_DockBarBackColor;
		}
		set
		{
			if (m_DockBarBackColor != value)
			{
				m_DockBarBackColor = value;
			}
		}
	}

	public Color DropDownHighlightLightColor
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

	public Color DropDownHighlightDarkColor
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

	public Color DropDownPressedLightColor
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

	public Color DropDownPressedDarkColor
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

	public Color FloatHighlightButtonColor
	{
		get
		{
			return m_FloatHighlightButtonColor;
		}
		set
		{
			if (m_FloatHighlightButtonColor != value)
			{
				m_FloatHighlightButtonColor = value;
			}
		}
	}

	public Color FloatHighlightButtonBorderColor
	{
		get
		{
			return m_FloatHighlightButtonBorderColor;
		}
		set
		{
			if (m_FloatHighlightButtonBorderColor != value)
			{
				m_FloatHighlightButtonBorderColor = value;
			}
		}
	}

	public Color FloatPressButtonColor
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

	public Color FloatPressButtonBorderColor
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

	public Color FloatPressCloseButtonBorderColor
	{
		get
		{
			return m_FloatPressCloseButtonBorderColor;
		}
		set
		{
			if (m_FloatPressCloseButtonBorderColor != value)
			{
				m_FloatPressCloseButtonBorderColor = value;
			}
		}
	}

	public Color FloatPressCloseButtonColor
	{
		get
		{
			return m_FloatPressCloseButtonColor;
		}
		set
		{
			if (m_FloatPressCloseButtonColor != value)
			{
				m_FloatPressCloseButtonColor = value;
			}
		}
	}

	public Color FloatCommandBarLightColor
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

	public Color FloatCommandBarDarkColor
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

	public Color FloatLightBorderColor
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

	public Color FloatBackgroundColor
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

	public Color FloatBorderColor
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

	public Color FloatCaptionColor
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

	public Color BarItemSeparatorColor
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

	public Color BarItemPressBorderColor
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

	public Color BarItemHighlightBorderColor
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

	public Color BarItemPressLightColor
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

	public Color BarItemPressDarkColor
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

	public Color DropDownBarItemLightColor
	{
		get
		{
			return m_DropDownBarItemLightColor;
		}
		set
		{
			if (m_DropDownBarItemLightColor != value)
			{
				m_DropDownBarItemLightColor = value;
			}
		}
	}

	public Color DropDownBarItemDarkColor
	{
		get
		{
			return m_DropDownBarItemDarkColor;
		}
		set
		{
			if (m_DropDownBarItemDarkColor != value)
			{
				m_DropDownBarItemDarkColor = value;
			}
		}
	}

	public Color DropDownBarItemBorderColor
	{
		get
		{
			return m_DropDownBarItemBorderColor;
		}
		set
		{
			if (m_DropDownBarItemBorderColor != value)
			{
				m_DropDownBarItemBorderColor = value;
			}
		}
	}

	public Color BarItemCheckLightColor
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

	public Color BarItemCheckDarkColor
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

	public Color BarItemCheckBorderColor
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

	public Color BarItemCheckFlashColor
	{
		get
		{
			return m_BarItemCheckFlashColor;
		}
		set
		{
			if (m_BarItemCheckFlashColor != value)
			{
				m_BarItemCheckFlashColor = value;
			}
		}
	}

	public Color BarItemPressFlashColor
	{
		get
		{
			return m_BarItemPressFlashColor;
		}
		set
		{
			if (m_BarItemPressFlashColor != value)
			{
				m_BarItemPressFlashColor = value;
			}
		}
	}

	public Color BarItemSelectFlashColor
	{
		get
		{
			return m_BarItemSelectFlashColor;
		}
		set
		{
			if (m_BarItemSelectFlashColor != value)
			{
				m_BarItemSelectFlashColor = value;
			}
		}
	}

	public Color TextBarItemBackColor
	{
		get
		{
			return m_TextBarItemBackColor;
		}
		set
		{
			if (m_TextBarItemBackColor != value)
			{
				m_TextBarItemBackColor = value;
			}
		}
	}

	public Color TextBarItemBorderColor
	{
		get
		{
			return m_TextBarItemBorderColor;
		}
		set
		{
			if (m_TextBarItemBorderColor != value)
			{
				m_TextBarItemBorderColor = value;
			}
		}
	}

	public Color TextBarItemBorderHighlightColor
	{
		get
		{
			return m_TextBarItemBorderHighlightColor;
		}
		set
		{
			if (m_TextBarItemBorderHighlightColor != value)
			{
				m_TextBarItemBorderHighlightColor = value;
			}
		}
	}

	public Color ComboButtonLightColor
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

	public Color ComboButtonDarkColor
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

	public Color ComboButtonPressLightColor
	{
		get
		{
			return m_ComboButtonPressLightColor;
		}
		set
		{
			if (m_ComboButtonPressLightColor != value)
			{
				m_ComboButtonPressLightColor = value;
			}
		}
	}

	public Color ComboButtonPressDarkColor
	{
		get
		{
			return m_ComboButtonPressDarkColor;
		}
		set
		{
			if (m_ComboButtonPressDarkColor != value)
			{
				m_ComboButtonPressDarkColor = value;
			}
		}
	}

	public Color ComboButtonHighlightLightColor
	{
		get
		{
			return m_ComboButtonHighlightLightColor;
		}
		set
		{
			if (m_ComboButtonHighlightLightColor != value)
			{
				m_ComboButtonHighlightLightColor = value;
			}
		}
	}

	public Color ComboButtonHighlightDarkColor
	{
		get
		{
			return m_ComboButtonHighlightDarkColor;
		}
		set
		{
			if (m_ComboButtonHighlightDarkColor != value)
			{
				m_ComboButtonHighlightDarkColor = value;
			}
		}
	}

	public Color ComboButtonBorder
	{
		get
		{
			return m_ComboButtonBorder;
		}
		set
		{
			if (m_ComboButtonBorder != value)
			{
				m_ComboButtonBorder = value;
			}
		}
	}

	public Color ComboButtonPressBorder
	{
		get
		{
			return m_ComboButtonPressBorder;
		}
		set
		{
			if (m_ComboButtonPressBorder != value)
			{
				m_ComboButtonPressBorder = value;
			}
		}
	}

	public Color ComboButtonHighlightBorder
	{
		get
		{
			return m_ComboButtonHighlightBorder;
		}
		set
		{
			if (m_ComboButtonHighlightBorder != value)
			{
				m_ComboButtonHighlightBorder = value;
			}
		}
	}

	public Color ButtonPressedTopColor => m_ButtonPressedTopColor;

	public Color ButtonPressedBottomColor => m_ButtonPressedBottomColor;

	public Color ButtonSelectedTopColor => m_ButtonSelectedTopColor;

	public Color ButtonSelectedBottomColor => m_ButtonSelectedBottomColor;

	public Color ButtonDisabledTopColor => m_ButtonDisabledTopColor;

	public Color ButtonDisabledBottomColor => m_ButtonDisabledBottomColor;

	public Color ButtonPressedBorderColor => m_ButtonPressedBorderColor;

	public Color ButtonSelectedBorderColor => m_ButtonSelectedBorderColor;

	public Color ButtonDisabledBorderColor => m_ButtonDisabledBorderColor;

	public Color ButtonDefaultTopColor
	{
		get
		{
			if (m_ButtonDefaultTopColor != Color.Empty)
			{
				return m_ButtonDefaultTopColor;
			}
			return m_ButtonDefaultTopColor;
		}
	}

	public Color ButtonDefaultBottomColor
	{
		get
		{
			if (m_ButtonDefaultBottomColor != Color.Empty)
			{
				return m_ButtonDefaultBottomColor;
			}
			return m_ButtonDefaultBottomColor;
		}
	}

	public Color ButtonDefaultBorderColor
	{
		get
		{
			if (m_ButtonDefaultBorderColor != Color.Empty)
			{
				return m_ButtonDefaultBorderColor;
			}
			return m_ButtonDefaultBorderColor;
		}
	}

	public Color ButtonDefaultInternalBorderColor
	{
		get
		{
			if (m_ButtonDefaultInternalBorderColor != Color.Empty)
			{
				return m_ButtonDefaultInternalBorderColor;
			}
			return m_ButtonDefaultInternalBorderColor;
		}
	}

	public Color ButtonPressedInternalBorderColor
	{
		get
		{
			if (m_ButtonPressedInternalBorderColor != Color.Empty)
			{
				return m_ButtonPressedInternalBorderColor;
			}
			return m_ButtonPressedInternalBorderColor;
		}
	}

	public Color ButtonSelectedInternalBorderColor
	{
		get
		{
			if (m_ButtonSelectedInternalBorderColor != Color.Empty)
			{
				return m_ButtonSelectedInternalBorderColor;
			}
			return m_ButtonSelectedInternalBorderColor;
		}
	}

	[Obsolete]
	public Color BlueButtonDefaultTopColor
	{
		get
		{
			if (m_BlueButtonDefaultTopColor != Color.Empty)
			{
				return m_BlueButtonDefaultTopColor;
			}
			m_BlueButtonDefaultTopColor = Color.FromArgb(231, 242, 255);
			return m_BlueButtonDefaultTopColor;
		}
	}

	[Obsolete]
	public Color BlueButtonDefaultBottomColor
	{
		get
		{
			if (m_BlueButtonDefaultBottomColor != Color.Empty)
			{
				return m_BlueButtonDefaultBottomColor;
			}
			m_BlueButtonDefaultBottomColor = Color.FromArgb(179, 209, 252);
			return m_BlueButtonDefaultBottomColor;
		}
	}

	[Obsolete]
	public Color BlueButtonDefaultBorderColor
	{
		get
		{
			if (m_BlueButtonDefaultBorderColor != Color.Empty)
			{
				return m_BlueButtonDefaultBorderColor;
			}
			m_BlueButtonDefaultBorderColor = Color.FromArgb(176, 208, 255);
			return m_BlueButtonDefaultBorderColor;
		}
	}

	[Obsolete]
	public Color BlueButtonDefaultInternalBorderColor
	{
		get
		{
			if (m_BlueButtonDefaultInternalBorderColor != Color.Empty)
			{
				return m_BlueButtonDefaultInternalBorderColor;
			}
			m_BlueButtonDefaultInternalBorderColor = Color.FromArgb(128, Color.FromArgb(250, 251, 255));
			return m_BlueButtonDefaultInternalBorderColor;
		}
	}

	[Obsolete]
	public Color BlueButtonPressedInternalBorderColor
	{
		get
		{
			if (m_BlueButtonPressedInternalBorderColor != Color.Empty)
			{
				return m_BlueButtonPressedInternalBorderColor;
			}
			m_BlueButtonPressedInternalBorderColor = Color.FromArgb(70, Color.FromArgb(176, 132, 92));
			return m_BlueButtonPressedInternalBorderColor;
		}
	}

	[Obsolete]
	public Color BlueButtonSelectedInternalBorderColor
	{
		get
		{
			if (m_BlueButtonSelectedInternalBorderColor != Color.Empty)
			{
				return m_BlueButtonSelectedInternalBorderColor;
			}
			m_BlueButtonSelectedInternalBorderColor = Color.FromArgb(128, Color.FromArgb(250, 251, 255));
			return m_BlueButtonSelectedInternalBorderColor;
		}
	}

	[Obsolete]
	public Color SilverButtonDefaultTopColor
	{
		get
		{
			if (m_SilverButtonDefaultTopColor != Color.Empty)
			{
				return m_SilverButtonDefaultTopColor;
			}
			m_SilverButtonDefaultTopColor = Color.FromArgb(223, 227, 231);
			return m_SilverButtonDefaultTopColor;
		}
	}

	[Obsolete]
	public Color SilverButtonDefaultBottomColor
	{
		get
		{
			if (m_SilverButtonDefaultBottomColor != Color.Empty)
			{
				return m_SilverButtonDefaultBottomColor;
			}
			m_SilverButtonDefaultBottomColor = Color.FromArgb(208, 212, 221);
			return m_SilverButtonDefaultBottomColor;
		}
	}

	[Obsolete]
	public Color SilverButtonDefaultBorderColor
	{
		get
		{
			if (m_SilverButtonDefaultBorderColor != Color.Empty)
			{
				return m_SilverButtonDefaultBorderColor;
			}
			m_SilverButtonDefaultBorderColor = Color.FromArgb(208, 212, 221);
			return m_SilverButtonDefaultBorderColor;
		}
	}

	[Obsolete]
	public Color SilverButtonDefaultInternalBorderColor
	{
		get
		{
			if (m_SilverButtonDefaultInternalBorderColor != Color.Empty)
			{
				return m_SilverButtonDefaultInternalBorderColor;
			}
			m_SilverButtonDefaultInternalBorderColor = Color.FromArgb(128, Color.FromArgb(250, 251, 255));
			return m_SilverButtonDefaultInternalBorderColor;
		}
	}

	[Obsolete]
	public Color SilverButtonPressedInternalBorderColor
	{
		get
		{
			if (m_SilverButtonPressedInternalBorderColor != Color.Empty)
			{
				return m_SilverButtonPressedInternalBorderColor;
			}
			m_SilverButtonPressedInternalBorderColor = Color.FromArgb(70, Color.FromArgb(176, 132, 92));
			return m_SilverButtonPressedInternalBorderColor;
		}
	}

	[Obsolete]
	public Color SilverButtonSelectedInternalBorderColor
	{
		get
		{
			if (m_SilverButtonSelectedInternalBorderColor != Color.Empty)
			{
				return m_SilverButtonSelectedInternalBorderColor;
			}
			m_SilverButtonSelectedInternalBorderColor = Color.FromArgb(128, Color.FromArgb(250, 251, 255));
			return m_SilverButtonSelectedInternalBorderColor;
		}
	}

	[Obsolete]
	public Color BlackButtonDefaultTopColor
	{
		get
		{
			if (m_BlackButtonDefaultTopColor != Color.Empty)
			{
				return m_BlackButtonDefaultTopColor;
			}
			m_BlackButtonDefaultTopColor = Color.FromArgb(146, 146, 146);
			return m_BlackButtonDefaultTopColor;
		}
	}

	[Obsolete]
	public Color BlackButtonDefaultBottomColor
	{
		get
		{
			if (m_BlackButtonDefaultBottomColor != Color.Empty)
			{
				return m_BlackButtonDefaultBottomColor;
			}
			m_BlackButtonDefaultBottomColor = Color.FromArgb(83, 83, 83);
			return m_BlackButtonDefaultBottomColor;
		}
	}

	[Obsolete]
	public Color BlackButtonDefaultBorderColor
	{
		get
		{
			if (m_BlackButtonDefaultBorderColor != Color.Empty)
			{
				return m_BlackButtonDefaultBorderColor;
			}
			m_BlackButtonDefaultBorderColor = Color.FromArgb(153, 153, 153);
			return m_BlackButtonDefaultBorderColor;
		}
	}

	[Obsolete]
	public Color BlackButtonDefaultInternalBorderColor
	{
		get
		{
			if (m_BlackButtonDefaultInternalBorderColor != Color.Empty)
			{
				return m_BlackButtonDefaultInternalBorderColor;
			}
			m_BlackButtonDefaultInternalBorderColor = Color.FromArgb(128, Color.FromArgb(250, 251, 255));
			return m_BlackButtonDefaultInternalBorderColor;
		}
	}

	[Obsolete]
	public Color BlackButtonPressedInternalBorderColor
	{
		get
		{
			if (m_BlackButtonPressedInternalBorderColor != Color.Empty)
			{
				return m_BlackButtonPressedInternalBorderColor;
			}
			m_BlackButtonPressedInternalBorderColor = Color.FromArgb(70, Color.FromArgb(176, 132, 92));
			return m_BlackButtonPressedInternalBorderColor;
		}
	}

	[Obsolete]
	public Color BlackButtonSelectedInternalBorderColor
	{
		get
		{
			if (m_BlackButtonSelectedInternalBorderColor != Color.Empty)
			{
				return m_BlackButtonSelectedInternalBorderColor;
			}
			m_BlackButtonSelectedInternalBorderColor = Color.FromArgb(128, Color.FromArgb(250, 251, 255));
			return m_BlackButtonSelectedInternalBorderColor;
		}
	}

	public Color TabDefaultBorderColor => m_TabDefaultBorderColor;

	public Color TabHotLightBottomBorderLineColor => m_TabHotLightBottomBorderLineColor;

	public Color TabHotLightGradientTopBeginColor => m_TabHotLightGradientTopBeginColor;

	public Color TabHotLightGradientTopEndColor => m_TabHotLightGradientTopEndColor;

	public Color TabHotLightGradientBottomBeginColor => m_TabHotLightGradientBottomBeginColor;

	public Color TabHotLightGradientBottomEndColor => m_TabHotLightGradientBottomEndColor;

	public Color TabHotLightGradientCircleColor => m_TabHotLightGradientCircleColor;

	public Color TabSelectedGradientTopColor => m_TabSelectedGradientTopColor;

	public Color TabSelectedGradientBottomColor => m_TabSelectedGradientBottomColor;

	public Color TabSelectedInnerBorderColor => m_TabSelectedInnerBorderColor;

	public Color TabHighlightInnerBorderColor => m_TabHighlightInnerBorderColor;

	public Color TabSelectedHotLightBorderColor => m_TabSelectedHotLightBorderColor;

	public Color TabSelectedHotLightInnerBorderColor => m_TabSelectedHotLightInnerBorderColor;

	public Color TabForeColor => m_TabForeColor;

	public Color ActiveTabForeColor => m_ActiveTabForeColor;

	public Color TabBackgroundColor => m_TabBackgroundColor;

	public Color TabScrollArrowColor => m_TabScrollArrowColor;

	public Color DockTabForeColor => m_DockTabForeColor;

	public Color DockTabBackgroundColor => m_DockTabBackgroundColor;

	public Color ActiveFormBorderColor => m_ActiveFormBorderColor;

	public Color InactiveFormBorderColor => m_InactiveFormBorderColor;

	public Color FormTextColor => m_FormTextColor;

	public Color ActiveTitleGradientBegin => m_ActiveTitleGradientBegin;

	public Color ActiveTitleGradientEnd => m_ActiveTitleGradientEnd;

	public Color InactiveTitleGradientBegin => m_InactiveTitleGradientBegin;

	public Color InactiveTitleGradientEnd => m_InactiveTitleGradientEnd;

	public Color SystemButtonSelectedGradientBegin => m_SystemButtonSelectedGradientBegin;

	public Color SystemButtonSelectedGradientEnd => m_SystemButtonSelectedGradientEnd;

	public Color SystemButtonPressedGradientBegin => m_SystemButtonPressedGradientBegin;

	public Color SystemButtonPressedGradientEnd => m_SystemButtonPressedGradientEnd;

	public Color SystemButtonBorderSelected => m_SystemButtonBorderSelected;

	public Color SystemButtonBorderPressed => m_SystemButtonBorderPressed;

	public Color FormBackground => m_FormBackground;

	public Color UpDownArrowStartColor => m_UpDownArrowStartColor;

	public Color UpDownArrowEndColor => m_UpDownArrowEndColor;

	public Color UpDownBorderNormalColor => m_UpDownBorderNormalColor;

	public Color UpDownBackgroundNormalColor => m_UpDownBackgroundNormalColor;

	public Color UpDownBackgroundNormalStartColor => m_UpDownBackgroundNormalStartColor;

	public Color UpDownBackgroundNormalEndColor => m_UpDownBackgroundNormalEndColor;

	public Color UpDownBorderHotColor => m_UpDownBorderHotColor;

	public Color UpDownInnerBorderHotStartColor => m_UpDownInnerBorderHotStartColor;

	public Color UpDownInnerBorderHotEndColor => m_UpDownInnerBorderHotEndColor;

	public Color UpDownBorderPressedColor => m_UpDownBorderPressedColor;

	public Color UpDownInnerBorderPressedStartColor => m_UpDownInnerBorderPressedStartColor;

	public Color UpDownInnerBorderPressedEndColor => m_UpDownInnerBorderPressedEndColor;

	public Color UpDownBackgroundDisabledStartColor => m_UpDownBackgroundDisabledStartColor;

	public Color UpDownBackgroundDisabledEndColor => m_UpDownBackgroundDisabledEndColor;

	public Color UpDownBorderDisabledColor => m_UpDownBorderDisabledColor;

	public Color UpDownBackgroundHotTopStartColor => m_UpDownBackgroundHotTopStartColor;

	public Color UpDownBackgroundHotTopEndColor => m_UpDownBackgroundHotTopEndColor;

	public Color UpDownBackgroundHotBottomStartColor => m_UpDownBackgroundHotBottomStartColor;

	public Color UpDownBackgroundHotBottomEndColor => m_UpDownBackgroundHotBottomEndColor;

	public Color UpDownBackgroundPressedTopStartColor => m_UpDownBackgroundPressedTopStartColor;

	public Color UpDownBackgroundPressedTopEndColor => m_UpDownBackgroundPressedTopEndColor;

	public Color UpDownBackgroundPressedBottomStartColor => m_UpDownBackgroundPressedBottomStartColor;

	public Color UpDownBackgroundPressedBottomEndColor => m_UpDownBackgroundPressedBottomEndColor;

	public Color ComboBoxAdvNormalBackColor
	{
		get
		{
			return m_ComboBoxAdvNormalBackColor;
		}
		set
		{
			if (m_ComboBoxAdvNormalBackColor != value)
			{
				m_ComboBoxAdvNormalBackColor = value;
			}
		}
	}

	public Color ComboBoxAdvHotBackColor
	{
		get
		{
			return m_ComboBoxAdvHotBackColor;
		}
		set
		{
			if (m_ComboBoxAdvHotBackColor != value)
			{
				m_ComboBoxAdvHotBackColor = value;
			}
		}
	}

	public Color ComboBoxAdvNormalBorderColor
	{
		get
		{
			return m_ComboBoxAdvNormalBorderColor;
		}
		set
		{
			if (m_ComboBoxAdvNormalBorderColor != value)
			{
				m_ComboBoxAdvNormalBorderColor = value;
			}
		}
	}

	public Color ComboBoxAdvHotBorderColor
	{
		get
		{
			return m_ComboBoxAdvHotBorderColor;
		}
		set
		{
			if (m_ComboBoxAdvHotBorderColor != value)
			{
				m_ComboBoxAdvHotBorderColor = value;
			}
		}
	}

	public Color ComboBoxAdvPushedBorderColor
	{
		get
		{
			return m_ComboBoxAdvPushedBorderColor;
		}
		set
		{
			if (m_ComboBoxAdvPushedBorderColor != value)
			{
				m_ComboBoxAdvPushedBorderColor = value;
			}
		}
	}

	public Color ComboBoxAdvButtonUpperLineColor
	{
		get
		{
			return m_ComboBoxAdvButtonUpperLineColor;
		}
		set
		{
			if (m_ComboBoxAdvButtonUpperLineColor != value)
			{
				m_ComboBoxAdvButtonUpperLineColor = value;
			}
		}
	}

	public Color ComboBoxAdvArrowColor
	{
		get
		{
			return m_ComboBoxAdvArrowColor;
		}
		set
		{
			if (m_ComboBoxAdvArrowColor != value)
			{
				m_ComboBoxAdvArrowColor = value;
			}
		}
	}

	public Color ComboBoxAdvLowerArrowLineColor
	{
		get
		{
			return m_ComboBoxAdvLowerArrowLineColor;
		}
		set
		{
			if (m_ComboBoxAdvLowerArrowLineColor != value)
			{
				m_ComboBoxAdvLowerArrowLineColor = value;
			}
		}
	}

	public Color ComboBoxAdvHotBackgroundButtonColor1
	{
		get
		{
			return m_ComboBoxAdvHotBackgroundButtonColor1;
		}
		set
		{
			if (m_ComboBoxAdvHotBackgroundButtonColor1 != value)
			{
				m_ComboBoxAdvHotBackgroundButtonColor1 = value;
			}
		}
	}

	public Color ComboBoxAdvHotBackgroundButtonColor2
	{
		get
		{
			return m_ComboBoxAdvHotBackgroundButtonColor2;
		}
		set
		{
			if (m_ComboBoxAdvHotBackgroundButtonColor2 != value)
			{
				m_ComboBoxAdvHotBackgroundButtonColor2 = value;
			}
		}
	}

	public Color ComboBoxAdvHotBackgroundButtonColor3
	{
		get
		{
			return m_ComboBoxAdvHotBackgroundButtonColor3;
		}
		set
		{
			if (m_ComboBoxAdvHotBackgroundButtonColor3 != value)
			{
				m_ComboBoxAdvHotBackgroundButtonColor3 = value;
			}
		}
	}

	public Color ComboBoxAdvHotBackgroundButtonColor4
	{
		get
		{
			return m_ComboBoxAdvHotBackgroundButtonColor4;
		}
		set
		{
			if (m_ComboBoxAdvHotBackgroundButtonColor4 != value)
			{
				m_ComboBoxAdvHotBackgroundButtonColor4 = value;
			}
		}
	}

	public Color ComboBoxAdvNormalBackgroundButtonColor1
	{
		get
		{
			return m_ComboBoxAdvNormalBackgroundButtonColor1;
		}
		set
		{
			if (m_ComboBoxAdvNormalBackgroundButtonColor1 != value)
			{
				m_ComboBoxAdvNormalBackgroundButtonColor1 = value;
			}
		}
	}

	public Color ComboBoxAdvNormalBackgroundButtonColor2
	{
		get
		{
			return m_ComboBoxAdvNormalBackgroundButtonColor2;
		}
		set
		{
			if (m_ComboBoxAdvNormalBackgroundButtonColor2 != value)
			{
				m_ComboBoxAdvNormalBackgroundButtonColor2 = value;
			}
		}
	}

	public Color ComboBoxAdvNormalBackgroundButtonColor3
	{
		get
		{
			return m_ComboBoxAdvNormalBackgroundButtonColor3;
		}
		set
		{
			if (m_ComboBoxAdvNormalBackgroundButtonColor3 != value)
			{
				m_ComboBoxAdvNormalBackgroundButtonColor3 = value;
			}
		}
	}

	public Color ComboBoxAdvNormalBackgroundButtonColor4
	{
		get
		{
			return m_ComboBoxAdvNormalBackgroundButtonColor4;
		}
		set
		{
			if (m_ComboBoxAdvNormalBackgroundButtonColor4 != value)
			{
				m_ComboBoxAdvNormalBackgroundButtonColor4 = value;
			}
		}
	}

	public Color ComboBoxAdvPushedBackgroundButtonColor1
	{
		get
		{
			return m_ComboBoxAdvPushedBackgroundButtonColor1;
		}
		set
		{
			if (m_ComboBoxAdvPushedBackgroundButtonColor1 != value)
			{
				m_ComboBoxAdvPushedBackgroundButtonColor1 = value;
			}
		}
	}

	public Color ComboBoxAdvPushedBackgroundButtonColor2
	{
		get
		{
			return m_ComboBoxAdvPushedBackgroundButtonColor2;
		}
		set
		{
			if (m_ComboBoxAdvPushedBackgroundButtonColor2 != value)
			{
				m_ComboBoxAdvPushedBackgroundButtonColor2 = value;
			}
		}
	}

	public Color ComboBoxAdvPushedBackgroundButtonColor3
	{
		get
		{
			return m_ComboBoxAdvPushedBackgroundButtonColor3;
		}
		set
		{
			if (m_ComboBoxAdvPushedBackgroundButtonColor3 != value)
			{
				m_ComboBoxAdvPushedBackgroundButtonColor3 = value;
			}
		}
	}

	public Color ComboBoxAdvPushedBackgroundButtonColor4
	{
		get
		{
			return m_ComboBoxAdvPushedBackgroundButtonColor4;
		}
		set
		{
			if (m_ComboBoxAdvPushedBackgroundButtonColor4 != value)
			{
				m_ComboBoxAdvPushedBackgroundButtonColor4 = value;
			}
		}
	}

	public Color CheckBoxAdvNormalBackColor
	{
		get
		{
			return m_CheckBoxAdvNormalBackColor;
		}
		set
		{
			if (m_CheckBoxAdvNormalBackColor != value)
			{
				m_CheckBoxAdvNormalBackColor = value;
			}
		}
	}

	public Color CheckBoxAdvSelectedBackColor
	{
		get
		{
			return m_CheckBoxAdvSelectedBackColor;
		}
		set
		{
			if (m_CheckBoxAdvSelectedBackColor != value)
			{
				m_CheckBoxAdvSelectedBackColor = value;
			}
		}
	}

	public Color CheckBoxAdvPushedBackColor
	{
		get
		{
			return m_CheckBoxAdvPushedBackColor;
		}
		set
		{
			if (m_CheckBoxAdvPushedBackColor != value)
			{
				m_CheckBoxAdvPushedBackColor = value;
			}
		}
	}

	public Color CheckBoxAdvNormalBorderColor
	{
		get
		{
			return m_CheckBoxAdvNormalBorderColor;
		}
		set
		{
			if (m_CheckBoxAdvNormalBorderColor != value)
			{
				m_CheckBoxAdvNormalBorderColor = value;
			}
		}
	}

	public Color CheckBoxAdvSelectedBorderColor
	{
		get
		{
			return m_CheckBoxAdvSelectedBorderColor;
		}
		set
		{
			if (m_CheckBoxAdvSelectedBorderColor != value)
			{
				m_CheckBoxAdvSelectedBorderColor = value;
			}
		}
	}

	public Color CheckBoxAdvPushedBorderColor
	{
		get
		{
			return m_CheckBoxAdvPushedBorderColor;
		}
		set
		{
			if (m_CheckBoxAdvPushedBorderColor != value)
			{
				m_CheckBoxAdvPushedBorderColor = value;
			}
		}
	}

	public Color CheckBoxAdvNormalInternalBorderColor
	{
		get
		{
			return m_CheckBoxAdvNormalInternalBorderColor;
		}
		set
		{
			if (m_CheckBoxAdvNormalInternalBorderColor != value)
			{
				m_CheckBoxAdvNormalInternalBorderColor = value;
			}
		}
	}

	public Color CheckBoxAdvSelectedInternalBorderColor
	{
		get
		{
			return m_CheckBoxAdvSelectedInternalBorderColor;
		}
		set
		{
			if (m_CheckBoxAdvSelectedInternalBorderColor != value)
			{
				m_CheckBoxAdvSelectedInternalBorderColor = value;
			}
		}
	}

	public Color CheckBoxAdvPushedInternalBorderColor
	{
		get
		{
			return m_CheckBoxAdvPushedInternalBorderColor;
		}
		set
		{
			if (m_CheckBoxAdvPushedInternalBorderColor != value)
			{
				m_CheckBoxAdvPushedInternalBorderColor = value;
			}
		}
	}

	public Color CheckBoxAdvNormalInternalRectangleBorderColor
	{
		get
		{
			return m_CheckBoxAdvNormalInternalRectangleBorderColor;
		}
		set
		{
			if (m_CheckBoxAdvNormalInternalRectangleBorderColor != value)
			{
				m_CheckBoxAdvNormalInternalRectangleBorderColor = value;
			}
		}
	}

	public Color CheckBoxAdvSelectedInternalRectangleBorderColor
	{
		get
		{
			return m_CheckBoxAdvSelectedInternalRectangleBorderColor;
		}
		set
		{
			if (m_CheckBoxAdvSelectedInternalRectangleBorderColor != value)
			{
				m_CheckBoxAdvSelectedInternalRectangleBorderColor = value;
			}
		}
	}

	public Color CheckBoxAdvPushedInternalRectangleBorderColor
	{
		get
		{
			return m_CheckBoxAdvPushedInternalRectangleBorderColor;
		}
		set
		{
			if (m_CheckBoxAdvPushedInternalRectangleBorderColor != value)
			{
				m_CheckBoxAdvPushedInternalRectangleBorderColor = value;
			}
		}
	}

	public Color CheckBoxAdvNormalInternalRectangleColor
	{
		get
		{
			return m_CheckBoxAdvNormalInternalRectangleColor;
		}
		set
		{
			if (m_CheckBoxAdvNormalInternalRectangleColor != value)
			{
				m_CheckBoxAdvNormalInternalRectangleColor = value;
			}
		}
	}

	public Color CheckBoxAdvSelectedInternalRectangleColor
	{
		get
		{
			return m_CheckBoxAdvSelectedInternalRectangleColor;
		}
		set
		{
			if (m_CheckBoxAdvSelectedInternalRectangleColor != value)
			{
				m_CheckBoxAdvSelectedInternalRectangleColor = value;
			}
		}
	}

	public Color CheckBoxAdvPushedInternalRectangleColor
	{
		get
		{
			return m_CheckBoxAdvPushedInternalRectangleColor;
		}
		set
		{
			if (m_CheckBoxAdvPushedInternalRectangleColor != value)
			{
				m_CheckBoxAdvPushedInternalRectangleColor = value;
			}
		}
	}

	public Color CheckBoxAdvNormalTickColor
	{
		get
		{
			return m_CheckBoxAdvNormalTickColor;
		}
		set
		{
			if (m_CheckBoxAdvNormalTickColor != value)
			{
				m_CheckBoxAdvNormalTickColor = value;
			}
		}
	}

	public Color CheckBoxAdvSelectedTickColor
	{
		get
		{
			return m_CheckBoxAdvSelectedTickColor;
		}
		set
		{
			if (m_CheckBoxAdvSelectedTickColor != value)
			{
				m_CheckBoxAdvSelectedTickColor = value;
			}
		}
	}

	public Color CheckBoxAdvPushedTickColor
	{
		get
		{
			return m_CheckBoxAdvPushedTickColor;
		}
		set
		{
			if (m_CheckBoxAdvPushedTickColor != value)
			{
				m_CheckBoxAdvPushedTickColor = value;
			}
		}
	}

	public Color CheckBoxAdvDisabledTickColor
	{
		get
		{
			return m_CheckBoxAdvDisabledTickColor;
		}
		set
		{
			if (m_CheckBoxAdvDisabledTickColor != value)
			{
				m_CheckBoxAdvDisabledTickColor = value;
			}
		}
	}

	public Color CheckBoxAdvIndeterminateRectangleColor
	{
		get
		{
			return m_CheckBoxAdvIndeterminateRectangleColor;
		}
		set
		{
			if (m_CheckBoxAdvIndeterminateRectangleColor != value)
			{
				m_CheckBoxAdvIndeterminateRectangleColor = value;
			}
		}
	}

	public Color CheckBoxAdvDisabledBackColor
	{
		get
		{
			return m_CheckBoxAdvDisabledBackColor;
		}
		set
		{
			if (m_CheckBoxAdvDisabledBackColor != value)
			{
				m_CheckBoxAdvDisabledBackColor = value;
			}
		}
	}

	public Color CheckBoxAdvDisabledBorderColor
	{
		get
		{
			return m_CheckBoxAdvDisabledBorderColor;
		}
		set
		{
			if (m_CheckBoxAdvDisabledBorderColor != value)
			{
				m_CheckBoxAdvDisabledBorderColor = value;
			}
		}
	}

	public Color CheckBoxAdvDisabledInternalBorderColor
	{
		get
		{
			return m_CheckBoxAdvDisabledInternalBorderColor;
		}
		set
		{
			if (m_CheckBoxAdvDisabledInternalBorderColor != value)
			{
				m_CheckBoxAdvDisabledInternalBorderColor = value;
			}
		}
	}

	public Color RadioButtonAdvNormalBackColor
	{
		get
		{
			return m_RadioButtonAdvNormalBackColor;
		}
		set
		{
			if (m_RadioButtonAdvNormalBackColor != value)
			{
				m_RadioButtonAdvNormalBackColor = value;
			}
		}
	}

	public Color RadioButtonAdvNormalBorderColor
	{
		get
		{
			return m_RadioButtonAdvNormalBorderColor;
		}
		set
		{
			if (m_RadioButtonAdvNormalBorderColor != value)
			{
				m_RadioButtonAdvNormalBorderColor = value;
			}
		}
	}

	public Color RadioButtonAdvNormalInternalBorderColor
	{
		get
		{
			return m_RadioButtonAdvNormalInternalBorderColor;
		}
		set
		{
			if (m_RadioButtonAdvNormalInternalBorderColor != value)
			{
				m_RadioButtonAdvNormalInternalBorderColor = value;
			}
		}
	}

	public Color RadioButtonAdvSelectedBackColor
	{
		get
		{
			return m_RadioButtonAdvSelectedBackColor;
		}
		set
		{
			if (m_RadioButtonAdvSelectedBackColor != value)
			{
				m_RadioButtonAdvSelectedBackColor = value;
			}
		}
	}

	public Color RadioButtonAdvSelectedBorderColor
	{
		get
		{
			return m_RadioButtonAdvSelectedBorderColor;
		}
		set
		{
			if (m_RadioButtonAdvSelectedBorderColor != value)
			{
				m_RadioButtonAdvSelectedBorderColor = value;
			}
		}
	}

	public Color RadioButtonAdvSelectedInternalBorderColor
	{
		get
		{
			return m_RadioButtonAdvSelectedInternalBorderColor;
		}
		set
		{
			if (m_RadioButtonAdvSelectedInternalBorderColor != value)
			{
				m_RadioButtonAdvSelectedInternalBorderColor = value;
			}
		}
	}

	public Color RadioButtonAdvPushedBackColor
	{
		get
		{
			return m_RadioButtonAdvPushedBackColor;
		}
		set
		{
			if (m_RadioButtonAdvPushedBackColor != value)
			{
				m_RadioButtonAdvPushedBackColor = value;
			}
		}
	}

	public Color RadioButtonAdvPushedBorderColor
	{
		get
		{
			return m_RadioButtonAdvPushedBorderColor;
		}
		set
		{
			if (m_RadioButtonAdvPushedBorderColor != value)
			{
				m_RadioButtonAdvPushedBorderColor = value;
			}
		}
	}

	public Color RadioButtonAdvPushedInternalBorderColor
	{
		get
		{
			return m_RadioButtonAdvPushedInternalBorderColor;
		}
		set
		{
			if (m_RadioButtonAdvPushedInternalBorderColor != value)
			{
				m_RadioButtonAdvPushedInternalBorderColor = value;
			}
		}
	}

	public Color RadioButtonAdvCheckMarkBorderColor
	{
		get
		{
			return m_RadioButtonAdvCheckMarkBorderColor;
		}
		set
		{
			if (m_RadioButtonAdvCheckMarkBorderColor != value)
			{
				m_RadioButtonAdvCheckMarkBorderColor = value;
			}
		}
	}

	public Color RadioButtonAdvCheckMarkNormalBottomColor
	{
		get
		{
			return m_RadioButtonAdvCheckMarkNormalBottomColor;
		}
		set
		{
			if (m_RadioButtonAdvCheckMarkNormalBottomColor != value)
			{
				m_RadioButtonAdvCheckMarkNormalBottomColor = value;
			}
		}
	}

	public Color RadioButtonAdvCheckMarkSelectedBottomColor
	{
		get
		{
			return m_RadioButtonAdvCheckMarkSelectedBottomColor;
		}
		set
		{
			if (m_RadioButtonAdvCheckMarkSelectedBottomColor != value)
			{
				m_RadioButtonAdvCheckMarkSelectedBottomColor = value;
			}
		}
	}

	public Color RadioButtonAdvCheckMarkPushedBottomColor
	{
		get
		{
			return m_RadioButtonAdvCheckMarkPushedBottomColor;
		}
		set
		{
			if (m_RadioButtonAdvCheckMarkPushedBottomColor != value)
			{
				m_RadioButtonAdvCheckMarkPushedBottomColor = value;
			}
		}
	}

	public Color TabBarSplitterBackColor
	{
		get
		{
			return m_TabBarSplitterBackColor;
		}
		set
		{
			if (m_TabBarSplitterBackColor != value)
			{
				m_TabBarSplitterBackColor = value;
			}
		}
	}

	public Color TabBarSplitterBorderColor
	{
		get
		{
			return m_TabBarSplitterBorderColor;
		}
		set
		{
			if (m_TabBarSplitterBorderColor != value)
			{
				m_TabBarSplitterBorderColor = value;
			}
		}
	}

	public Color TabBarSplitterTextColor
	{
		get
		{
			return m_TabBarSplitterTextColor;
		}
		set
		{
			if (m_TabBarSplitterTextColor != value)
			{
				m_TabBarSplitterTextColor = value;
			}
		}
	}

	public Color TabBarSplitterTabStartColor
	{
		get
		{
			return m_TabBarSplitterTabStartColor;
		}
		set
		{
			if (m_TabBarSplitterTabStartColor != value)
			{
				m_TabBarSplitterTabStartColor = value;
			}
		}
	}

	public Color TabBarSplitterTabEndColor
	{
		get
		{
			return m_TabBarSplitterTabEndColor;
		}
		set
		{
			if (m_TabBarSplitterTabEndColor != value)
			{
				m_TabBarSplitterTabEndColor = value;
			}
		}
	}

	public Color TabBarSplitterTabBarStartColor
	{
		get
		{
			return m_TabBarSplitterTabBarStartColor;
		}
		set
		{
			if (m_TabBarSplitterTabBarStartColor != value)
			{
				m_TabBarSplitterTabBarStartColor = value;
			}
		}
	}

	public Color TabBarSplitterTabBarEndColor
	{
		get
		{
			return m_TabBarSplitterTabBarEndColor;
		}
		set
		{
			if (m_TabBarSplitterTabBarEndColor != value)
			{
				m_TabBarSplitterTabBarEndColor = value;
			}
		}
	}

	public Color TabBarSplitterButtonHoveredStartColor
	{
		get
		{
			return m_TabBarSplitterButtonHoveredStartColor;
		}
		set
		{
			if (m_TabBarSplitterButtonHoveredStartColor != value)
			{
				m_TabBarSplitterButtonHoveredStartColor = value;
			}
		}
	}

	public Color TabBarSplitterButtonHoveredEndColor
	{
		get
		{
			return m_TabBarSplitterButtonHoveredEndColor;
		}
		set
		{
			if (m_TabBarSplitterButtonHoveredEndColor != value)
			{
				m_TabBarSplitterButtonHoveredEndColor = value;
			}
		}
	}

	public Color TabBarSplitterButtonPushedStartColor
	{
		get
		{
			return m_TabBarSplitterButtonPushedStartColor;
		}
		set
		{
			if (m_TabBarSplitterButtonPushedStartColor != value)
			{
				m_TabBarSplitterButtonPushedStartColor = value;
			}
		}
	}

	public Color TabBarSplitterButtonPushedEndColor
	{
		get
		{
			return m_TabBarSplitterButtonPushedEndColor;
		}
		set
		{
			if (m_TabBarSplitterButtonPushedEndColor != value)
			{
				m_TabBarSplitterButtonPushedEndColor = value;
			}
		}
	}

	public Color TabBarSplitterSizeGripperColor
	{
		get
		{
			return m_TabBarSplitterSizeGripperColor;
		}
		set
		{
			if (m_TabBarSplitterSizeGripperColor != value)
			{
				m_TabBarSplitterSizeGripperColor = value;
			}
		}
	}

	public Color TabBarSplitterSizeGripperLightColor
	{
		get
		{
			return m_TabBarSplitterSizeGripperLightColor;
		}
		set
		{
			if (m_TabBarSplitterSizeGripperLightColor != value)
			{
				m_TabBarSplitterSizeGripperLightColor = value;
			}
		}
	}

	public Color TabBarSplitterSizeGripperDarkColor
	{
		get
		{
			return m_TabBarSplitterSizeGripperDarkColor;
		}
		set
		{
			if (m_TabBarSplitterSizeGripperDarkColor != value)
			{
				m_TabBarSplitterSizeGripperDarkColor = value;
			}
		}
	}

	public Color XPTaskBarBorderColor
	{
		get
		{
			return m_XPTaskBarBorderColor;
		}
		set
		{
			if (m_XPTaskBarBorderColor != value)
			{
				m_XPTaskBarBorderColor = value;
			}
		}
	}

	public Color XPTaskBarBoxBackColor
	{
		get
		{
			return m_XPTaskBarBoxBackColor;
		}
		set
		{
			if (m_XPTaskBarBoxBackColor != value)
			{
				m_XPTaskBarBoxBackColor = value;
			}
		}
	}

	public Color XPTaskBarBoxForeColor
	{
		get
		{
			return m_XPTaskBarBoxForeColor;
		}
		set
		{
			if (m_XPTaskBarBoxForeColor != value)
			{
				m_XPTaskBarBoxForeColor = value;
			}
		}
	}

	public Color XPTaskBarBoxHeaderUpperLineColor
	{
		get
		{
			return m_XPTaskBarBoxHeaderUpperLineColor;
		}
		set
		{
			if (m_XPTaskBarBoxHeaderUpperLineColor != value)
			{
				m_XPTaskBarBoxHeaderUpperLineColor = value;
			}
		}
	}

	public Color XPTaskBarBoxHeaderLowerLineColor
	{
		get
		{
			return m_XPTaskBarBoxHeaderLowerLineColor;
		}
		set
		{
			if (m_XPTaskBarBoxHeaderLowerLineColor != value)
			{
				m_XPTaskBarBoxHeaderLowerLineColor = value;
			}
		}
	}

	public Color XPTaskBarBoxArrowColor
	{
		get
		{
			return m_XPTaskBarBoxArrowColor;
		}
		set
		{
			if (m_XPTaskBarBoxArrowColor != value)
			{
				m_XPTaskBarBoxArrowColor = value;
			}
		}
	}

	public Color XPTaskBarBoxActiveHighlightedItemColor
	{
		get
		{
			return m_XPTaskBarBoxActiveHighlightedItemColor;
		}
		set
		{
			if (m_XPTaskBarBoxActiveHighlightedItemColor != value)
			{
				m_XPTaskBarBoxActiveHighlightedItemColor = value;
			}
		}
	}

	public Color XPTaskBarBoxInactiveHighlightedItemColor
	{
		get
		{
			return m_XPTaskBarBoxInactiveHighlightedItemColor;
		}
		set
		{
			if (m_XPTaskBarBoxInactiveHighlightedItemColor != value)
			{
				m_XPTaskBarBoxInactiveHighlightedItemColor = value;
			}
		}
	}

	public Color ColorUIAdvBackColor
	{
		get
		{
			return m_ColorUIAdvBackColor;
		}
		set
		{
			if (m_ColorUIAdvBackColor != value)
			{
				m_ColorUIAdvBackColor = value;
			}
		}
	}

	public Color ColorUIAdvTextColor
	{
		get
		{
			return m_ColorUIAdvTextColor;
		}
		set
		{
			if (m_ColorUIAdvTextColor != value)
			{
				m_ColorUIAdvTextColor = value;
			}
		}
	}

	public Color ColorUIAdvItemBorderColor
	{
		get
		{
			return m_ColorUIAdvItemBorderColor;
		}
		set
		{
			if (m_ColorUIAdvItemBorderColor != value)
			{
				m_ColorUIAdvItemBorderColor = value;
			}
		}
	}

	public Color ColorUIAdvHighlightedBorderColor
	{
		get
		{
			return m_ColorUIAdvHighlightedBorderColor;
		}
		set
		{
			if (m_ColorUIAdvHighlightedBorderColor != value)
			{
				m_ColorUIAdvHighlightedBorderColor = value;
			}
		}
	}

	public Color ColorUIAdvSelectedBorderColor
	{
		get
		{
			return m_ColorUIAdvSelectedBorderColor;
		}
		set
		{
			if (m_ColorUIAdvSelectedBorderColor != value)
			{
				m_ColorUIAdvSelectedBorderColor = value;
			}
		}
	}

	public Color ColorUIAdvSelectedHighlightedBorderColor
	{
		get
		{
			return m_ColorUIAdvSelectedHighlightedBorderColor;
		}
		set
		{
			if (m_ColorUIAdvSelectedHighlightedBorderColor != value)
			{
				m_ColorUIAdvSelectedHighlightedBorderColor = value;
			}
		}
	}

	public Color ColorUIAdvGroupHeaderBackColor
	{
		get
		{
			return m_ColorUIAdvGroupHeaderBackColor;
		}
		set
		{
			if (m_ColorUIAdvGroupHeaderBackColor != value)
			{
				m_ColorUIAdvGroupHeaderBackColor = value;
			}
		}
	}

	public static event ManagedColorsAppliedEventHandler ManagedColorsApplied;

	public static Office2007Colors GetColorTable(Office2007Theme theme)
	{
		Office2007Colors office2007Colors = null;
		return theme switch
		{
			Office2007Theme.Black => s_blackColors, 
			Office2007Theme.Silver => s_silverColors, 
			Office2007Theme.Blue => s_blueColors, 
			Office2007Theme.Managed => s_managedColors, 
			_ => throw new ArgumentException("Unknown theme."), 
		};
	}

	public static void ApplyManagedColors(Form form, Color baseColor)
	{
		s_managedBaseColor = baseColor;
		ManagedColors.UpdateColors(baseColor);
		OnManagedColorApplied(form, baseColor);
		if (form.IsHandleCreated)
		{
			NativeMethods.RedrawWindow(form.Handle, IntPtr.Zero, IntPtr.Zero, 1025u);
			form.Invalidate(invalidateChildren: true);
			form.Update();
		}
	}

	public static void ApplyManagedScheme(Form form, Office2007Theme scheme)
	{
		s_managedBaseColor = Color.Empty;
		ManagedColors.UpdateScheme(scheme);
		if (form.IsHandleCreated)
		{
			NativeMethods.RedrawWindow(form.Handle, IntPtr.Zero, IntPtr.Zero, 1025u);
			form.Invalidate(invalidateChildren: true);
		}
	}

	protected static void OnManagedColorApplied(Form form, Color baseColor)
	{
		if (Office2007Colors.ManagedColorsApplied != null)
		{
			Office2007Colors.ManagedColorsApplied(new ManagedColorsAppliedEventArgs(form, baseColor));
		}
	}

	static Office2007Colors()
	{
		s_blueColors = null;
		s_silverColors = null;
		s_blackColors = null;
		s_managedColors = null;
		s_defaultTheme = Office2007Theme.Blue;
		s_managedBaseColor = Color.Empty;
		s_managedColors = new Office2007BlueColors();
		s_blueColors = new Office2007BlueColors();
		s_silverColors = new Office2007SilverColors();
		s_blackColors = new Office2007BlackColors();
	}

	protected Office2007Colors()
	{
		InitializeColors();
	}

	protected virtual void InitializeColors()
	{
		m_MenuSeparatorColor = Color.FromArgb(197, 197, 197);
		m_MenuBorderColor = Color.FromArgb(134, 134, 134);
		m_MenuColumnColor = Color.FromArgb(233, 238, 238);
		m_MenuColumnSeparatorColor = Color.FromArgb(197, 197, 197);
		m_MenuItemBorderColor = Color.FromArgb(150, 175, 142, 80);
		m_MenuItemDarkColor = Color.FromArgb(255, 213, 92);
		m_MenuItemLightColor = Color.FromArgb(255, 253, 233);
		m_MenuCheckedColor = Color.FromArgb(52, 55, 124);
		m_MenuCheckedFillColor = Color.FromArgb(255, 227, 149);
		m_MenuCheckedBorderColor = Color.FromArgb(242, 149, 54);
		m_MenuComboButtonPushed1Color = Color.FromArgb(234, 224, 191);
		m_MenuComboButtonPushed2Color = Color.FromArgb(239, 189, 119);
		m_MenuComboButtonPushed3Color = Color.FromArgb(255, 168, 56);
		m_MenuComboButtonPushed4Color = Color.FromArgb(255, 212, 86);
		m_BarItemPressBorderColor = Color.FromArgb(139, 118, 84);
		m_BarItemHighlightBorderColor = Color.FromArgb(255, 185, 160, 116);
		m_BarItemPressLightColor = Color.FromArgb(255, 197, 108);
		m_BarItemPressDarkColor = Color.FromArgb(251, 138, 59);
		m_DropDownBarItemLightColor = Color.FromArgb(234, 207, 178);
		m_DropDownBarItemDarkColor = Color.FromArgb(248, 171, 72);
		m_DropDownBarItemBorderColor = Color.FromArgb(158, 130, 85);
		m_BarItemCheckLightColor = Color.FromArgb(253, 210, 168);
		m_BarItemCheckDarkColor = Color.FromArgb(249, 147, 47);
		m_BarItemCheckBorderColor = Color.FromArgb(160, 131, 85);
		m_BarItemCheckFlashColor = Color.FromArgb(255, 253, 241, 176);
		m_BarItemPressFlashColor = Color.FromArgb(255, 255, 208, 134);
		m_BarItemSelectFlashColor = Color.FromArgb(255, 255, 235, 174);
		m_TextBarItemBackColor = SystemColors.Window;
		m_TextBarItemBorderColor = SystemColors.Window;
		m_TextBarItemBorderHighlightColor = Color.FromArgb(139, 118, 84);
		m_ComboButtonPressLightColor = Color.FromArgb(255, 197, 108);
		m_ComboButtonPressDarkColor = Color.FromArgb(251, 138, 59);
		m_ComboButtonHighlightLightColor = Color.FromArgb(255, 252, 217);
		m_ComboButtonHighlightDarkColor = Color.FromArgb(255, 214, 70);
		m_ComboButtonPressBorder = Color.FromArgb(139, 118, 84);
		m_ComboButtonHighlightBorder = Color.FromArgb(128, 185, 160, 116);
		m_TabItemBorderColor = Color.FromArgb(153, 187, 232);
		m_TabItemInnerBorderColor = Color.FromArgb(239, 246, 255);
		m_TabItemOuterBorderColor = Color.FromArgb(209, 229, 254);
		m_TabItemTextColor = Color.FromArgb(21, 66, 139);
		m_TabItemActiveBottomColor = Color.FromArgb(225, 210, 163);
		m_TabItemTopGradientColor = Color.FromArgb(196, 221, 254);
		m_TabItemInActiveBottomColor = Color.FromArgb(235, 243, 253);
		m_TabItemMiddleLineColor = Color.FromArgb(215, 226, 232);
		m_TabPanelColor = Color.FromArgb(199, 216, 237);
		m_TabPanelBorderColor = Color.FromArgb(219, 232, 249);
		m_TabPanelBackColor = Color.FromArgb(199, 216, 237);
		m_GroupBarHighlightColorLight = Color.FromArgb(255, 255, 231);
		m_GroupBarHighlightColorDark = Color.FromArgb(255, 215, 107);
		m_GroupBarSelectedColorLight = Color.FromArgb(255, 227, 123);
		m_GroupBarSelectedColorDark = Color.FromArgb(255, 170, 57);
		m_GroupBarSelectedTopColorLight = Color.FromArgb(255, 219, 173);
		m_GroupBarSelectedTopColorDark = Color.FromArgb(255, 190, 115);
		m_GroupBarSelectedHighlightColorLight = Color.FromArgb(255, 211, 99);
		m_GroupBarSelectedHighlightColorDark = Color.FromArgb(255, 142, 66);
		m_DataTimePickerHighLightedBorderColor = Color.FromArgb(219, 206, 153);
		m_DataTimePickerSelectedBorderColor = Color.FromArgb(166, 155, 107);
		m_DataTimePickerDropDownHighLightLightColor = Color.FromArgb(255, 252, 217);
		m_DataTimePickerDropDownHighLightDarkColor = Color.FromArgb(255, 214, 70);
		m_DataTimePickerDropDownSelectedLightColor = Color.FromArgb(255, 250, 243);
		m_DataTimePickerDropDownSelectedDarkColor = Color.FromArgb(255, 168, 56);
		m_DataTimePickerCheckBoxNormalColor = Color.FromArgb(74, 93, 148);
		m_DataTimePickerCheckBoxSelectedColor = Color.FromArgb(0, 32, 115);
		m_DataTimePickerCheckBoxInnerRectBorderNormalColor = Color.FromArgb(173, 178, 189);
		m_DataTimePickerCheckBoxInnerRectBorderSelectedColor = Color.FromArgb(253, 203, 87);
		m_DataTimePickerCheckBoxInnerRectBorderPushedColor = Color.FromArgb(241, 138, 35);
		m_DataTimePickerCheckBoxInnerRectFillNormalColor = Color.FromArgb(206, 207, 214);
		m_DataTimePickerCheckBoxInnerRectFillSelectedColor = Color.FromArgb(250, 221, 143);
		m_DataTimePickerCheckBoxInnerRectFillPushedColor = Color.FromArgb(255, 206, 103);
		m_DataTimePickerHighLightedForeColor = Color.FromArgb(0, 101, 206);
		m_NumericUpDownBorderColor = Color.FromArgb(173, 174, 181);
		m_NumericUpDownHighLightedBorderColor = Color.FromArgb(57, 125, 181);
		m_NumericUpDownSelectedBorderColor = Color.FromArgb(41, 97, 140);
		m_NumericUpDownArrowLightColor = Color.FromArgb(115, 134, 214);
		m_NumericUpDownArrowDarkColor = Color.FromArgb(74, 85, 123);
		m_TabDefaultBorderColor = Color.FromArgb(141, 178, 227);
		m_TabHotLightBottomBorderLineColor = Color.FromArgb(208, 195, 146);
		m_TabHotLightGradientTopBeginColor = Color.FromArgb(205, 217, 224);
		m_TabHotLightGradientTopEndColor = Color.FromArgb(228, 230, 222);
		m_TabHotLightGradientBottomBeginColor = Color.FromArgb(221, 221, 208);
		m_TabHotLightGradientBottomEndColor = Color.FromArgb(223, 213, 177);
		m_TabHotLightGradientCircleColor = Color.FromArgb(196, 221, 254);
		m_TabSelectedGradientTopColor = Color.FromArgb(240, 246, 254);
		m_TabSelectedGradientBottomColor = Color.FromArgb(225, 235, 246);
		m_TabSelectedInnerBorderColor = Color.FromArgb(235, 243, 252);
		m_TabHighlightInnerBorderColor = Color.FromArgb(234, 237, 253);
		m_TabSelectedHotLightBorderColor = Color.FromArgb(255, 208, 48);
		m_TabSelectedHotLightInnerBorderColor = Color.FromArgb(255, 240, 187);
		m_TabForeColor = Color.FromArgb(21, 66, 139);
		m_ActiveTabForeColor = m_TabForeColor;
		m_TabBackgroundColor = Color.FromArgb(199, 216, 237);
		m_DockTabForeColor = Color.FromArgb(21, 66, 139);
		m_DockTabBackgroundColor = Color.FromArgb(199, 216, 237);
		m_UpDownBorderHotColor = Color.FromArgb(221, 204, 155);
		m_UpDownInnerBorderHotStartColor = Color.FromArgb(254, 254, 254);
		m_UpDownInnerBorderHotEndColor = Color.FromArgb(253, 249, 245);
		m_UpDownBorderPressedColor = Color.FromArgb(152, 143, 103);
		m_UpDownInnerBorderPressedStartColor = Color.FromArgb(193, 180, 168);
		m_UpDownInnerBorderPressedEndColor = Color.FromArgb(255, 223, 141);
		m_UpDownBackgroundDisabledStartColor = Color.FromArgb(244, 244, 244);
		m_UpDownBackgroundDisabledEndColor = Color.FromArgb(201, 201, 201);
		m_UpDownBorderDisabledColor = Color.FromArgb(200, 200, 200);
		m_UpDownBackgroundHotTopStartColor = Color.FromArgb(255, 248, 224);
		m_UpDownBackgroundHotTopEndColor = Color.FromArgb(254, 242, 180);
		m_UpDownBackgroundHotBottomStartColor = Color.FromArgb(255, 214, 119);
		m_UpDownBackgroundHotBottomEndColor = Color.FromArgb(254, 221, 139);
		m_UpDownBackgroundPressedTopStartColor = Color.FromArgb(193, 180, 168);
		m_UpDownBackgroundPressedTopEndColor = Color.FromArgb(231, 214, 182);
		m_UpDownBackgroundPressedBottomStartColor = Color.FromArgb(255, 165, 59);
		m_UpDownBackgroundPressedBottomEndColor = Color.FromArgb(255, 190, 71);
		m_ColorUIAdvBackColor = Color.FromArgb(250, 250, 250);
		m_ColorUIAdvTextColor = Color.FromArgb(2, 22, 109);
		m_ColorUIAdvItemBorderColor = Color.FromArgb(197, 197, 197);
		m_ColorUIAdvHighlightedBorderColor = Color.FromArgb(243, 148, 54);
		m_ColorUIAdvSelectedBorderColor = Color.FromArgb(235, 75, 13);
		m_ColorUIAdvSelectedHighlightedBorderColor = Color.FromArgb(255, 226, 148);
		m_ColorUIAdvGroupHeaderBackColor = Color.FromArgb(235, 235, 235);
		m_ButtonPressedTopColor = Color.FromArgb(255, 197, 108);
		m_ButtonPressedBottomColor = Color.FromArgb(251, 138, 59);
		m_ButtonSelectedTopColor = Color.FromArgb(255, 252, 217);
		m_ButtonSelectedBottomColor = Color.FromArgb(255, 214, 70);
		m_ButtonDisabledTopColor = Color.FromArgb(244, 244, 244);
		m_ButtonDisabledBottomColor = Color.FromArgb(201, 201, 201);
		m_ButtonPressedBorderColor = Color.FromArgb(139, 118, 84);
		m_ButtonSelectedBorderColor = Color.FromArgb(185, 160, 116);
		m_ButtonDisabledBorderColor = Color.FromArgb(156, 164, 173);
	}

	internal void UpdateColors(Color basicColor)
	{
		InitializeColors();
		Office2007Colors colorTable = GetColorTable(Office2007Theme.Silver);
		Type type = colorTable.GetType();
		PropertyInfo[] properties = type.GetProperties(BindingFlags.Instance | BindingFlags.Public);
		PropertyInfo[] array = properties;
		foreach (PropertyInfo propertyInfo in array)
		{
			if (propertyInfo.PropertyType == typeof(Color))
			{
				string name = "m_" + propertyInfo.Name;
				FieldInfo field = type.GetField(name, BindingFlags.Instance | BindingFlags.NonPublic);
				if (field != null)
				{
					field.SetValue(this, MergeColors((Color)propertyInfo.GetValue(colorTable, null), basicColor));
				}
			}
		}
	}

	internal void UpdateScheme(Office2007Theme scheme)
	{
		switch (scheme)
		{
		case Office2007Theme.Blue:
			s_managedColors = new Office2007BlueColors();
			break;
		case Office2007Theme.Silver:
			s_managedColors = new Office2007SilverColors();
			break;
		case Office2007Theme.Black:
			s_managedColors = new Office2007BlackColors();
			break;
		}
	}

	internal static Color MergeColors(Color baseColor, Color blendColor)
	{
		int red = MergeChannels(baseColor.R, blendColor.R);
		int green = MergeChannels(baseColor.G, blendColor.G);
		int blue = MergeChannels(baseColor.B, blendColor.B);
		return Color.FromArgb(red, green, blue);
	}

	private static int MergeChannels(int baseChannel, int blendChannel)
	{
		int num = baseChannel * blendChannel / 255;
		int num2 = 255 - (255 - baseChannel) * (255 - blendChannel) / 255;
		return (byte)(num + baseChannel * (num2 - num) / 255);
	}

	public virtual object Clone()
	{
		return (Office2007Colors)MemberwiseClone();
	}
}
