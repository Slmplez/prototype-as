using System;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[Serializable]
[Flags]
public enum BarStyle
{
	None = 0,
	AllowQuickCustomizing = 1,
	IsMainMenu = 2,
	MultiLine = 4,
	RotateWhenVertical = 8,
	Visible = 0x10,
	UseWholeRow = 0x20,
	DrawDragBorder = 0x40,
	IsStatusBar = 0x80,
	TextBelowImage = 0x100
}
