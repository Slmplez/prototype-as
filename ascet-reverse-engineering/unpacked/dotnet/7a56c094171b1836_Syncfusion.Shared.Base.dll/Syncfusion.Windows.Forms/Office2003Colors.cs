using System;
using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms;

public class Office2003Colors
{
	private static Color selColor;

	private static Color pressedSelColor;

	private static Color checkedColor;

	private static Color checkedSelColor;

	private static Color selBorderColor;

	private static Color menuMarginColorLeft;

	private static Color menuMarginColorRight;

	private static Color menuExpandedItemsMarginColorLeft;

	private static Color menuExpandedItemsMarginColorRight;

	private static Color dropDownBorderColor;

	private static Color dockBarColorLight;

	private static Color dockBarColorDark;

	private static Color controlGripperColor;

	private static Color controlBorderColorLight;

	private static Color controlBorderColorDark;

	private static Color menuItemHotColorLight;

	private static Color menuItemHotColorDark;

	private static Color menuItemPressedColorLight;

	private static Color menuItemPressedColorDark;

	private static Color floatingCommandBarCaptionColor;

	private static Color floatingCommandBarItemPressedColor;

	private static Color commandBarDropDownColorLight;

	private static Color commandBarDropDownColorDark;

	private static Color groupBarHighlightColorLight;

	private static Color groupBarHighlightColorDark;

	private static Color groupBarSelectedColorLight;

	private static Color groupBarSelectedColorDark;

	private static Color groupBarSelectedHighlightColorLight;

	private static Color groupBarSelectedHighlightColorDark;

	private static Color groupBarHeaderColorLight;

	private static Color groupBarHeaderColorDark;

	private static Color groupBarItemTextColor;

	private static Color groupBarItemTextSelectedHighlightColor;

	private static Color separatorColor;

	private static Color customSelColor;

	private static Color customPressedSelColor;

	private static Color customCheckedColor;

	private static Color customCheckedSelColor;

	private static Color customMenuCheckBoxSelBGColor;

	private static Color customSelBorderColor;

	private static Color customMenuMarginColorLeft;

	private static Color customMenuMarginColorRight;

	private static Color customMenuExpandedItemsMarginColorLeft;

	private static Color customMenuExpandedItemsMarginColorRight;

	private static Color customDropDownBorderColor;

	private static Color customDockBarColorLight;

	private static Color customDockBarColorDark;

	private static Color customControlGripperColor;

	private static Color customControlBorderColorLight;

	private static Color customControlBorderColorDark;

	private static Color customMenuItemHotColorLight;

	private static Color customMenuItemHotColorDark;

	private static Color customMenuItemPressedColorLight;

	private static Color customMenuItemPressedColorDark;

	private static Color customFloatingCommandBarCaptionColor;

	private static Color customFloatingCommandBarItemPressedColor;

	private static Color customCommandBarDropDownColorLight;

	private static Color customCommandBarDropDownColorDark;

	private static Color customGroupBarHighlightColorLight;

	private static Color customGroupBarHighlightColorDark;

	private static Color customGroupBarSelectedColorLight;

	private static Color customGroupBarSelectedColorDark;

	private static Color customGroupBarSelectedHighlightColorLight;

	private static Color customGroupBarSelectedHighlightColorDark;

	private static Color customGroupBarHeaderColorLight;

	private static Color customGroupBarHeaderColorDark;

	private static Color customGroupBarItemTextColor;

	private static Color customGroupBarItemTextSelectedHighlightColor;

	private static Color customSeparatorColor;

	private static bool needToUpdateColors;

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

	public static Color SelColor
	{
		get
		{
			if (customSelColor == Color.Empty)
			{
				return selColor;
			}
			return customSelColor;
		}
		set
		{
			if (customSelColor != value)
			{
				customSelColor = value;
				OnMenuColorsChanged(EventArgs.Empty);
			}
		}
	}

	public static Color PressedSelColor
	{
		get
		{
			if (customPressedSelColor == Color.Empty)
			{
				return pressedSelColor;
			}
			return customPressedSelColor;
		}
		set
		{
			if (customPressedSelColor != value)
			{
				customPressedSelColor = value;
				OnMenuColorsChanged(EventArgs.Empty);
			}
		}
	}

	public static Color CheckedSelColor
	{
		get
		{
			if (customCheckedSelColor == Color.Empty)
			{
				return checkedSelColor;
			}
			return customCheckedSelColor;
		}
		set
		{
			if (customCheckedSelColor != value)
			{
				customCheckedSelColor = value;
				OnMenuColorsChanged(EventArgs.Empty);
			}
		}
	}

	public static Color CheckedColor
	{
		get
		{
			if (customCheckedColor == Color.Empty)
			{
				return checkedColor;
			}
			return customCheckedColor;
		}
		set
		{
			if (customCheckedColor != value)
			{
				customCheckedColor = value;
				OnMenuColorsChanged(EventArgs.Empty);
			}
		}
	}

	public static Color SelBorderColor
	{
		get
		{
			if (customSelBorderColor == Color.Empty)
			{
				return selBorderColor;
			}
			return customSelBorderColor;
		}
		set
		{
			if (customSelBorderColor != value)
			{
				customSelBorderColor = value;
				OnMenuColorsChanged(EventArgs.Empty);
			}
		}
	}

	public static Color DropdownBorderColor
	{
		get
		{
			if (customDropDownBorderColor == Color.Empty)
			{
				return dropDownBorderColor;
			}
			return customDropDownBorderColor;
		}
		set
		{
			if (customDropDownBorderColor != value)
			{
				customDropDownBorderColor = value;
				OnMenuColorsChanged(EventArgs.Empty);
			}
		}
	}

	public static Color MenuMarginColorLight
	{
		get
		{
			if (customMenuMarginColorLeft == Color.Empty)
			{
				return menuMarginColorLeft;
			}
			return customMenuMarginColorLeft;
		}
		set
		{
			if (customMenuMarginColorLeft != value)
			{
				customMenuMarginColorLeft = value;
				OnMenuColorsChanged(EventArgs.Empty);
			}
		}
	}

	public static Color MenuMarginColorDark
	{
		get
		{
			if (customMenuMarginColorRight == Color.Empty)
			{
				return menuMarginColorRight;
			}
			return customMenuMarginColorRight;
		}
		set
		{
			if (customMenuMarginColorRight != value)
			{
				customMenuMarginColorRight = value;
				OnMenuColorsChanged(EventArgs.Empty);
			}
		}
	}

	public static Color MenuExpandedItemsMarginColorLeft
	{
		get
		{
			if (customMenuExpandedItemsMarginColorLeft == Color.Empty)
			{
				return menuExpandedItemsMarginColorLeft;
			}
			return customMenuExpandedItemsMarginColorLeft;
		}
		set
		{
			if (customMenuExpandedItemsMarginColorLeft != value)
			{
				customMenuExpandedItemsMarginColorLeft = value;
				OnMenuColorsChanged(EventArgs.Empty);
			}
		}
	}

	public static Color MenuExpandedItemsMarginColorRight
	{
		get
		{
			if (customMenuExpandedItemsMarginColorRight == Color.Empty)
			{
				return menuExpandedItemsMarginColorRight;
			}
			return customMenuExpandedItemsMarginColorRight;
		}
		set
		{
			if (customMenuExpandedItemsMarginColorRight != value)
			{
				customMenuExpandedItemsMarginColorRight = value;
				OnMenuColorsChanged(EventArgs.Empty);
			}
		}
	}

	public static Color DockBarColorLight
	{
		get
		{
			if (customDockBarColorLight == Color.Empty)
			{
				return dockBarColorLight;
			}
			return customDockBarColorLight;
		}
		set
		{
			if (customDockBarColorLight != value)
			{
				customDockBarColorLight = value;
				OnMenuColorsChanged(EventArgs.Empty);
			}
		}
	}

	public static Color DockBarColorDark
	{
		get
		{
			if (customDockBarColorDark == Color.Empty)
			{
				return dockBarColorDark;
			}
			return customDockBarColorDark;
		}
		set
		{
			if (customDockBarColorDark != value)
			{
				customDockBarColorDark = value;
				OnMenuColorsChanged(EventArgs.Empty);
			}
		}
	}

	public static Color ControlGripperColor
	{
		get
		{
			if (customControlGripperColor == Color.Empty)
			{
				return controlGripperColor;
			}
			return customControlGripperColor;
		}
		set
		{
			if (customControlGripperColor != value)
			{
				customControlGripperColor = value;
				OnMenuColorsChanged(EventArgs.Empty);
			}
		}
	}

	public static Color ControlBorderColorLight
	{
		get
		{
			if (customControlBorderColorLight == Color.Empty)
			{
				return controlBorderColorLight;
			}
			return customControlBorderColorLight;
		}
		set
		{
			if (customControlBorderColorLight != value)
			{
				customControlBorderColorLight = value;
				OnMenuColorsChanged(EventArgs.Empty);
			}
		}
	}

	public static Color ControlBorderColorDark
	{
		get
		{
			if (customControlBorderColorDark == Color.Empty)
			{
				return controlBorderColorDark;
			}
			return customControlBorderColorDark;
		}
		set
		{
			if (customControlBorderColorDark != value)
			{
				customControlBorderColorDark = value;
				OnMenuColorsChanged(EventArgs.Empty);
			}
		}
	}

	public static Color MenuItemHotColorLight
	{
		get
		{
			if (customMenuItemHotColorLight == Color.Empty)
			{
				return menuItemHotColorLight;
			}
			return customMenuItemHotColorLight;
		}
		set
		{
			if (customMenuItemHotColorLight != value)
			{
				customMenuItemHotColorLight = value;
				OnMenuColorsChanged(EventArgs.Empty);
			}
		}
	}

	public static Color MenuItemHotColorDark
	{
		get
		{
			if (customMenuItemHotColorDark == Color.Empty)
			{
				return menuItemHotColorDark;
			}
			return customMenuItemHotColorDark;
		}
		set
		{
			if (customMenuItemHotColorDark != value)
			{
				customMenuItemHotColorDark = value;
				OnMenuColorsChanged(EventArgs.Empty);
			}
		}
	}

	public static Color MenuItemPressedColorLight
	{
		get
		{
			if (customMenuItemPressedColorLight == Color.Empty)
			{
				return menuItemPressedColorLight;
			}
			return customMenuItemPressedColorLight;
		}
		set
		{
			if (customMenuItemPressedColorLight != value)
			{
				customMenuItemPressedColorLight = value;
				OnMenuColorsChanged(EventArgs.Empty);
			}
		}
	}

	public static Color MenuItemPressedColorDark
	{
		get
		{
			if (customMenuItemPressedColorDark == Color.Empty)
			{
				return menuItemPressedColorDark;
			}
			return customMenuItemPressedColorDark;
		}
		set
		{
			if (customMenuItemPressedColorDark != value)
			{
				customMenuItemPressedColorDark = value;
				OnMenuColorsChanged(EventArgs.Empty);
			}
		}
	}

	public static Color FloatingCommandBarCaptionColor
	{
		get
		{
			if (customFloatingCommandBarCaptionColor == Color.Empty)
			{
				return floatingCommandBarCaptionColor;
			}
			return customFloatingCommandBarCaptionColor;
		}
		set
		{
			if (customFloatingCommandBarCaptionColor != value)
			{
				customFloatingCommandBarCaptionColor = value;
				OnMenuColorsChanged(EventArgs.Empty);
			}
		}
	}

	public static Color FloatingCommandBarItemPressedColor
	{
		get
		{
			if (customFloatingCommandBarItemPressedColor == Color.Empty)
			{
				return floatingCommandBarItemPressedColor;
			}
			return customFloatingCommandBarItemPressedColor;
		}
		set
		{
			if (customFloatingCommandBarItemPressedColor != value)
			{
				floatingCommandBarItemPressedColor = value;
				OnMenuColorsChanged(EventArgs.Empty);
			}
		}
	}

	public static Color CommandBarDropDownColorLight
	{
		get
		{
			if (customCommandBarDropDownColorLight == Color.Empty)
			{
				return commandBarDropDownColorLight;
			}
			return customCommandBarDropDownColorLight;
		}
		set
		{
			if (customCommandBarDropDownColorLight != value)
			{
				customCommandBarDropDownColorLight = value;
				OnMenuColorsChanged(EventArgs.Empty);
			}
		}
	}

	public static Color CommandBarDropDownColorDark
	{
		get
		{
			if (customCommandBarDropDownColorDark == Color.Empty)
			{
				return commandBarDropDownColorDark;
			}
			return customCommandBarDropDownColorDark;
		}
		set
		{
			if (customCommandBarDropDownColorDark != value)
			{
				customCommandBarDropDownColorDark = value;
				OnMenuColorsChanged(EventArgs.Empty);
			}
		}
	}

	public static Color GroupBarHighlightColorLight
	{
		get
		{
			if (customGroupBarHighlightColorLight == Color.Empty)
			{
				return groupBarHighlightColorLight;
			}
			return customGroupBarHighlightColorLight;
		}
		set
		{
			if (customGroupBarHighlightColorLight != value)
			{
				customGroupBarHighlightColorLight = value;
				OnMenuColorsChanged(EventArgs.Empty);
			}
		}
	}

	public static Color GroupBarHighlightColorDark
	{
		get
		{
			if (customGroupBarHighlightColorDark == Color.Empty)
			{
				return groupBarHighlightColorDark;
			}
			return customGroupBarHighlightColorDark;
		}
		set
		{
			if (customGroupBarHighlightColorDark != value)
			{
				customGroupBarHighlightColorDark = value;
				OnMenuColorsChanged(EventArgs.Empty);
			}
		}
	}

	public static Color GroupBarSelectedColorLight
	{
		get
		{
			if (customGroupBarSelectedColorLight == Color.Empty)
			{
				return groupBarSelectedColorLight;
			}
			return customGroupBarSelectedColorLight;
		}
		set
		{
			if (customGroupBarSelectedColorLight != value)
			{
				customGroupBarSelectedColorLight = value;
				OnMenuColorsChanged(EventArgs.Empty);
			}
		}
	}

	public static Color GroupBarSelectedColorDark
	{
		get
		{
			if (customGroupBarSelectedColorDark == Color.Empty)
			{
				return groupBarSelectedColorDark;
			}
			return customGroupBarSelectedColorDark;
		}
		set
		{
			if (customGroupBarSelectedColorDark != value)
			{
				customGroupBarSelectedColorDark = value;
				OnMenuColorsChanged(EventArgs.Empty);
			}
		}
	}

	public static Color GroupBarSelectedHighlightColorLight
	{
		get
		{
			if (customGroupBarSelectedHighlightColorLight == Color.Empty)
			{
				return groupBarSelectedHighlightColorLight;
			}
			return customGroupBarSelectedHighlightColorLight;
		}
		set
		{
			if (customGroupBarSelectedHighlightColorLight != value)
			{
				customGroupBarSelectedHighlightColorLight = value;
				OnMenuColorsChanged(EventArgs.Empty);
			}
		}
	}

	public static Color GroupBarSelectedHighlightColorDark
	{
		get
		{
			if (customGroupBarSelectedHighlightColorDark == Color.Empty)
			{
				return groupBarSelectedHighlightColorDark;
			}
			return customGroupBarSelectedHighlightColorDark;
		}
		set
		{
			if (customGroupBarSelectedHighlightColorDark != value)
			{
				customGroupBarSelectedHighlightColorDark = value;
				OnMenuColorsChanged(EventArgs.Empty);
			}
		}
	}

	public static Color GroupBarHeaderColorLight
	{
		get
		{
			if (customGroupBarHeaderColorLight == Color.Empty)
			{
				return groupBarHeaderColorLight;
			}
			return customGroupBarHeaderColorLight;
		}
		set
		{
			if (customGroupBarHeaderColorLight != value)
			{
				customGroupBarHeaderColorLight = value;
				OnMenuColorsChanged(EventArgs.Empty);
			}
		}
	}

	public static Color GroupBarHeaderColorDark
	{
		get
		{
			if (customGroupBarHeaderColorDark == Color.Empty)
			{
				return groupBarHeaderColorDark;
			}
			return customGroupBarHeaderColorDark;
		}
		set
		{
			if (customGroupBarHeaderColorDark != value)
			{
				customGroupBarHeaderColorDark = value;
				OnMenuColorsChanged(EventArgs.Empty);
			}
		}
	}

	public static Color GroupBarItemTextColor
	{
		get
		{
			if (customGroupBarItemTextColor == Color.Empty)
			{
				return groupBarItemTextColor;
			}
			return customGroupBarItemTextColor;
		}
		set
		{
			if (customGroupBarItemTextColor != value)
			{
				customGroupBarItemTextColor = value;
				OnMenuColorsChanged(EventArgs.Empty);
			}
		}
	}

	public static Color GroupBarItemTextSelectedHighlightColor
	{
		get
		{
			if (customGroupBarItemTextSelectedHighlightColor == Color.Empty)
			{
				return groupBarItemTextSelectedHighlightColor;
			}
			return customGroupBarItemTextSelectedHighlightColor;
		}
		set
		{
			if (customGroupBarItemTextSelectedHighlightColor != value)
			{
				customGroupBarItemTextSelectedHighlightColor = value;
				OnMenuColorsChanged(EventArgs.Empty);
			}
		}
	}

	public static Color SeparatorColor
	{
		get
		{
			if (customSeparatorColor == Color.Empty)
			{
				return separatorColor;
			}
			return customSeparatorColor;
		}
		set
		{
			if (customSeparatorColor != value)
			{
				customSeparatorColor = value;
				OnMenuColorsChanged(EventArgs.Empty);
			}
		}
	}

	public static event EventHandler MenuColorsChanged;

	public static void UpdateMenuColors()
	{
		if (!needToUpdateColors)
		{
			return;
		}
		needToUpdateColors = false;
		bool flag = false;
		if (XPThemes.IsThemedOS && XPThemes.IsThemeActive && XPThemes.IsAppThemed)
		{
			pressedSelColor = Color.FromArgb(254, 128, 62);
			if (XPThemes.IsDefaultBlueThemeOn || Environment.OSVersion.Version.Major > 5)
			{
				selColor = Color.FromArgb(255, 238, 194);
				selBorderColor = Color.FromArgb(0, 0, 128);
				menuMarginColorLeft = Color.FromArgb(222, 236, 254);
				menuMarginColorRight = Color.FromArgb(147, 182, 232);
				menuExpandedItemsMarginColorLeft = Color.FromArgb(203, 221, 246);
				menuExpandedItemsMarginColorRight = Color.FromArgb(141, 178, 230);
				checkedColor = Color.FromArgb(255, 192, 111);
				checkedSelColor = Color.FromArgb(254, 128, 62);
				dropDownBorderColor = Color.FromArgb(0, 45, 150);
				dockBarColorLight = Color.FromArgb(196, 217, 249);
				dockBarColorDark = Color.FromArgb(158, 190, 245);
				controlGripperColor = Color.FromArgb(39, 65, 118);
				controlBorderColorLight = Color.FromArgb(117, 166, 241);
				controlBorderColorDark = Color.FromArgb(59, 97, 156);
				menuItemHotColorLight = Color.FromArgb(255, 248, 211);
				menuItemHotColorDark = Color.FromArgb(255, 193, 118);
				menuItemPressedColorLight = Color.FromArgb(255, 217, 149);
				menuItemPressedColorDark = Color.FromArgb(254, 149, 82);
				floatingCommandBarCaptionColor = Color.FromArgb(42, 102, 201);
				floatingCommandBarItemPressedColor = Color.FromArgb(203, 225, 252);
				commandBarDropDownColorLight = Color.FromArgb(117, 166, 241);
				commandBarDropDownColorDark = Color.FromArgb(59, 97, 156);
				groupBarHighlightColorLight = Color.FromArgb(255, 255, 220);
				groupBarHighlightColorDark = Color.FromArgb(247, 192, 91);
				groupBarSelectedColorLight = Color.FromArgb(251, 230, 148);
				groupBarSelectedColorDark = Color.FromArgb(238, 149, 21);
				groupBarSelectedHighlightColorLight = Color.FromArgb(247, 218, 124);
				groupBarSelectedHighlightColorDark = Color.FromArgb(232, 127, 8);
				groupBarHeaderColorLight = Color.FromArgb(89, 135, 214);
				groupBarHeaderColorDark = Color.FromArgb(3, 56, 147);
				groupBarItemTextColor = SystemColors.ControlText;
				groupBarItemTextSelectedHighlightColor = SystemColors.ControlText;
				separatorColor = Color.FromArgb(106, 140, 203);
			}
			else if (XPThemes.IsOliveGreenThemeOn)
			{
				selColor = Color.FromArgb(255, 238, 194);
				selBorderColor = Color.FromArgb(63, 93, 56);
				menuMarginColorLeft = Color.FromArgb(255, 255, 237);
				menuMarginColorRight = Color.FromArgb(186, 201, 148);
				menuExpandedItemsMarginColorLeft = Color.FromArgb(230, 230, 209);
				menuExpandedItemsMarginColorRight = Color.FromArgb(168, 184, 124);
				checkedColor = Color.FromArgb(255, 192, 111);
				checkedSelColor = Color.FromArgb(254, 128, 62);
				dropDownBorderColor = Color.FromArgb(117, 141, 94);
				dockBarColorLight = Color.FromArgb(241, 240, 227);
				dockBarColorDark = Color.FromArgb(217, 217, 167);
				controlGripperColor = Color.FromArgb(81, 94, 51);
				controlBorderColorLight = Color.FromArgb(176, 194, 140);
				controlBorderColorDark = Color.FromArgb(96, 128, 88);
				menuItemHotColorLight = Color.FromArgb(255, 248, 211);
				menuItemHotColorDark = Color.FromArgb(255, 193, 118);
				menuItemPressedColorLight = Color.FromArgb(255, 217, 149);
				menuItemPressedColorDark = Color.FromArgb(254, 149, 82);
				floatingCommandBarCaptionColor = Color.FromArgb(116, 134, 94);
				floatingCommandBarItemPressedColor = Color.FromArgb(216, 227, 182);
				commandBarDropDownColorLight = Color.FromArgb(176, 194, 140);
				commandBarDropDownColorDark = Color.FromArgb(96, 128, 88);
				groupBarHighlightColorLight = Color.FromArgb(255, 255, 220);
				groupBarHighlightColorDark = Color.FromArgb(247, 192, 91);
				groupBarSelectedColorLight = Color.FromArgb(251, 230, 148);
				groupBarSelectedColorDark = Color.FromArgb(238, 149, 21);
				groupBarSelectedHighlightColorLight = Color.FromArgb(247, 218, 124);
				groupBarSelectedHighlightColorDark = Color.FromArgb(232, 127, 8);
				groupBarHeaderColorLight = Color.FromArgb(176, 194, 140);
				groupBarHeaderColorDark = Color.FromArgb(96, 128, 88);
				groupBarItemTextColor = SystemColors.ControlText;
				groupBarItemTextSelectedHighlightColor = SystemColors.ControlText;
				separatorColor = Color.FromArgb(96, 128, 88);
			}
			else if (XPThemes.IsSilverThemeOn)
			{
				selColor = Color.FromArgb(255, 238, 194);
				selBorderColor = Color.FromArgb(75, 75, 111);
				menuMarginColorLeft = Color.FromArgb(249, 249, 255);
				menuMarginColorRight = Color.FromArgb(165, 163, 189);
				menuExpandedItemsMarginColorLeft = Color.FromArgb(215, 215, 226);
				menuExpandedItemsMarginColorRight = Color.FromArgb(133, 131, 162);
				checkedColor = Color.FromArgb(255, 192, 111);
				checkedSelColor = Color.FromArgb(254, 128, 62);
				dropDownBorderColor = Color.FromArgb(124, 124, 148);
				dockBarColorLight = Color.FromArgb(242, 242, 247);
				dockBarColorDark = Color.FromArgb(215, 215, 229);
				controlGripperColor = Color.FromArgb(84, 84, 117);
				controlBorderColorLight = Color.FromArgb(179, 178, 200);
				controlBorderColorDark = Color.FromArgb(124, 124, 148);
				menuItemHotColorLight = Color.FromArgb(255, 248, 211);
				menuItemHotColorDark = Color.FromArgb(255, 193, 118);
				menuItemPressedColorLight = Color.FromArgb(255, 217, 149);
				menuItemPressedColorDark = Color.FromArgb(254, 149, 82);
				floatingCommandBarCaptionColor = Color.FromArgb(122, 121, 153);
				floatingCommandBarItemPressedColor = Color.FromArgb(214, 211, 231);
				commandBarDropDownColorLight = Color.FromArgb(179, 178, 200);
				commandBarDropDownColorDark = Color.FromArgb(124, 124, 148);
				groupBarHighlightColorLight = Color.FromArgb(255, 255, 220);
				groupBarHighlightColorDark = Color.FromArgb(247, 192, 91);
				groupBarSelectedColorLight = Color.FromArgb(251, 230, 148);
				groupBarSelectedColorDark = Color.FromArgb(238, 149, 21);
				groupBarSelectedHighlightColorLight = Color.FromArgb(247, 218, 124);
				groupBarSelectedHighlightColorDark = Color.FromArgb(232, 127, 8);
				groupBarHeaderColorLight = Color.FromArgb(179, 178, 200);
				groupBarHeaderColorDark = Color.FromArgb(124, 124, 148);
				groupBarItemTextColor = SystemColors.ControlText;
				groupBarItemTextSelectedHighlightColor = SystemColors.ControlText;
				separatorColor = Color.FromArgb(110, 109, 143);
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
			selColor = MenuColors.SelColor;
			selBorderColor = MenuColors.SelBorderColor;
			pressedSelColor = MenuColors.PressedSelColor;
			checkedColor = MenuColors.CheckedSelColor;
			checkedSelColor = MenuColors.CheckedSelColor;
			menuMarginColorLeft = SystemColors.Window;
			menuMarginColorRight = SystemColors.Control;
			menuExpandedItemsMarginColorLeft = SystemColors.Control;
			menuExpandedItemsMarginColorRight = SystemColors.Control;
			dropDownBorderColor = MenuColors.DropDownBorderColor;
			dockBarColorLight = MenuColors.MenuBGColor;
			dockBarColorDark = SystemColors.Control;
			controlGripperColor = SystemColors.ControlDark;
			controlBorderColorLight = ControlPaint.Light(SystemColors.Control, 0.18f);
			controlBorderColorDark = SystemColors.Control;
			menuItemHotColorLight = MenuColors.SelColor;
			menuItemHotColorDark = MenuColors.SelColor;
			menuItemPressedColorLight = ControlPaint.Light(MenuColors.SelColor, 0.7f);
			menuItemPressedColorDark = ControlPaint.Light(MenuColors.SelColor, 0.85f);
			floatingCommandBarCaptionColor = MenuColors.FloatingCommandBarCaptionColor;
			floatingCommandBarItemPressedColor = SystemColors.Control;
			commandBarDropDownColorLight = ControlPaint.Light(SystemColors.ControlDark, 0.5f);
			commandBarDropDownColorDark = SystemColors.ControlDark;
			groupBarHighlightColorLight = MenuColors.SelColor;
			groupBarHighlightColorDark = MenuColors.SelColor;
			groupBarSelectedColorLight = ControlPaint.Light(MenuColors.SelColor, 0.85f);
			groupBarSelectedColorDark = ControlPaint.Light(MenuColors.SelColor, 0.85f);
			groupBarSelectedHighlightColorLight = MenuColors.PressedSelColor;
			groupBarSelectedHighlightColorDark = MenuColors.PressedSelColor;
			groupBarHeaderColorLight = SystemColors.ControlDark;
			groupBarHeaderColorDark = SystemColors.ControlDark;
			groupBarItemTextColor = SystemColors.ControlText;
			if (groupBarSelectedHighlightColorLight.GetBrightness() < 0.65f)
			{
				groupBarItemTextSelectedHighlightColor = Color.White;
			}
			else
			{
				groupBarItemTextSelectedHighlightColor = SystemColors.ControlText;
			}
			separatorColor = SystemColors.ControlDarkDark;
		}
		OnMenuColorsChanged(EventArgs.Empty);
	}

	private static void OnMenuColorsChanged(EventArgs e)
	{
		if (Office2003Colors.MenuColorsChanged != null)
		{
			Office2003Colors.MenuColorsChanged(null, e);
		}
	}

	static Office2003Colors()
	{
		selColor = Color.Empty;
		pressedSelColor = Color.Empty;
		checkedColor = Color.Empty;
		checkedSelColor = Color.Empty;
		selBorderColor = Color.Empty;
		menuMarginColorLeft = Color.Empty;
		menuMarginColorRight = Color.Empty;
		menuExpandedItemsMarginColorLeft = Color.Empty;
		menuExpandedItemsMarginColorRight = Color.Empty;
		dropDownBorderColor = Color.Empty;
		dockBarColorLight = Color.Empty;
		dockBarColorDark = Color.Empty;
		controlGripperColor = Color.Empty;
		controlBorderColorLight = Color.Empty;
		controlBorderColorDark = Color.Empty;
		menuItemHotColorLight = Color.Empty;
		menuItemHotColorDark = Color.Empty;
		menuItemPressedColorLight = Color.Empty;
		menuItemPressedColorDark = Color.Empty;
		floatingCommandBarCaptionColor = Color.Empty;
		floatingCommandBarItemPressedColor = Color.Empty;
		commandBarDropDownColorLight = Color.Empty;
		commandBarDropDownColorDark = Color.Empty;
		groupBarHighlightColorLight = Color.Empty;
		groupBarHighlightColorDark = Color.Empty;
		groupBarSelectedColorLight = Color.Empty;
		groupBarSelectedColorDark = Color.Empty;
		groupBarSelectedHighlightColorLight = Color.Empty;
		groupBarSelectedHighlightColorDark = Color.Empty;
		groupBarHeaderColorLight = Color.Empty;
		groupBarHeaderColorDark = Color.Empty;
		groupBarItemTextColor = Color.Empty;
		groupBarItemTextSelectedHighlightColor = Color.Empty;
		separatorColor = Color.Empty;
		customSelColor = Color.Empty;
		customPressedSelColor = Color.Empty;
		customCheckedColor = Color.Empty;
		customCheckedSelColor = Color.Empty;
		customMenuCheckBoxSelBGColor = Color.Empty;
		customSelBorderColor = Color.Empty;
		customMenuMarginColorLeft = Color.Empty;
		customMenuMarginColorRight = Color.Empty;
		customMenuExpandedItemsMarginColorLeft = Color.Empty;
		customMenuExpandedItemsMarginColorRight = Color.Empty;
		customDropDownBorderColor = Color.Empty;
		customDockBarColorLight = Color.Empty;
		customDockBarColorDark = Color.Empty;
		customControlGripperColor = Color.Empty;
		customControlBorderColorLight = Color.Empty;
		customControlBorderColorDark = Color.Empty;
		customMenuItemHotColorLight = Color.Empty;
		customMenuItemHotColorDark = Color.Empty;
		customMenuItemPressedColorLight = Color.Empty;
		customMenuItemPressedColorDark = Color.Empty;
		customFloatingCommandBarCaptionColor = Color.Empty;
		customFloatingCommandBarItemPressedColor = Color.Empty;
		customCommandBarDropDownColorLight = Color.Empty;
		customCommandBarDropDownColorDark = Color.Empty;
		customGroupBarHighlightColorLight = Color.Empty;
		customGroupBarHighlightColorDark = Color.Empty;
		customGroupBarSelectedColorLight = Color.Empty;
		customGroupBarSelectedColorDark = Color.Empty;
		customGroupBarSelectedHighlightColorLight = Color.Empty;
		customGroupBarSelectedHighlightColorDark = Color.Empty;
		customGroupBarHeaderColorLight = Color.Empty;
		customGroupBarHeaderColorDark = Color.Empty;
		customGroupBarItemTextColor = Color.Empty;
		customGroupBarItemTextSelectedHighlightColor = Color.Empty;
		customSeparatorColor = Color.Empty;
		needToUpdateColors = true;
		UpdateMenuColors();
	}

	public static void SysColorsChanged(bool updateColorsNow)
	{
		if (updateColorsNow)
		{
			UpdateMenuColors();
		}
		else
		{
			needToUpdateColors = true;
		}
	}
}
