using System;
using System.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools.Win32API;

[StructLayout(LayoutKind.Sequential, CharSet = CharSet.Auto)]
[CLSCompliant(false)]
public struct PARAFORMAT2
{
	public uint cbSize;

	public uint dwMask;

	public ushort wNumbering;

	public ushort wEffects;

	public int dxStartIndent;

	public int dxRightIndent;

	public int dxOffset;

	public ushort wAlignment;

	public short cTabCount;

	[MarshalAs(UnmanagedType.ByValArray, SizeConst = 32)]
	public int[] rgxTabs;

	public int dySpaceBefore;

	public int dySpaceAfter;

	public int dyLineSpacing;

	public short sStyle;

	public byte bLineSpacingRule;

	public byte bOutlineLevel;

	public ushort wShadingWeight;

	public ushort wShadingStyle;

	public ushort wNumberingStart;

	public ushort wNumberingStyle;

	public ushort wNumberingTab;

	public ushort wBorderSpace;

	public ushort wBorderWidth;

	public ushort wBorders;
}
