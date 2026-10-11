using System;

namespace Syncfusion.Windows.Forms.Tools.Win32API;

[CLSCompliant(false)]
public struct TVHITTESTINFO
{
	public POINT pt;

	public uint flags;

	public IntPtr hItem;

	public TVHitTestFlags Flags
	{
		get
		{
			return (TVHitTestFlags)flags;
		}
		set
		{
			flags = (uint)value;
		}
	}
}
