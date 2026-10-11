using System;

namespace Syncfusion.Windows.Forms.Tools.Win32API;

[CLSCompliant(false)]
public struct HD_HITTESTINFO
{
	public POINT pt;

	public uint flags;

	public int iItem;
}
