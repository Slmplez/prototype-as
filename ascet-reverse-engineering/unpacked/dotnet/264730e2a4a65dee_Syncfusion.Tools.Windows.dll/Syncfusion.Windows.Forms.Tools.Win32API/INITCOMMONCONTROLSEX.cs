using System.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools.Win32API;

[StructLayout(LayoutKind.Sequential, Pack = 1)]
public class INITCOMMONCONTROLSEX
{
	public int dwSize;

	public int dwICC;
}
