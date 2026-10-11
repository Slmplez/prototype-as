using System.Runtime.InteropServices;
using System.Security;

namespace Syncfusion.Windows.Forms.Tools;

[SuppressUnmanagedCodeSecurity]
[ComVisible(false)]
internal class StatusBarAdvNativeMethods
{
	[DllImport("user32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	public static extern short GetKeyState(int keyCode);

	public static int HIWORD(int n)
	{
		return (n >> 16) & 0xFFFF;
	}

	public static int LOWORD(int n)
	{
		return n & 0xFFFF;
	}
}
