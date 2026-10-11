using System.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools.Win32API;

[StructLayout(LayoutKind.Sequential, Pack = 1)]
public struct TBBUTTON
{
	public int iBitmap;

	public int idCommand;

	public byte fsState;

	public byte fsStyle;

	public byte bReserved0;

	public byte bReserved1;

	public int dwData;

	public int iString;
}
