using System;

namespace Syncfusion.Windows.Forms.Tools.Win32API;

[CLSCompliant(false)]
public struct COMBOBOXINFO
{
	public uint cbSize;

	public RECT rcItem;

	public RECT rcButton;

	public uint stateButton;

	public IntPtr hwndCombo;

	public IntPtr hwndItem;

	public IntPtr hwndList;
}
