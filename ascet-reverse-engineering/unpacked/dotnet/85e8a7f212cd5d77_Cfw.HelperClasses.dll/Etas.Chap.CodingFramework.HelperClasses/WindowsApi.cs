using System.Runtime.InteropServices;

namespace Etas.Chap.CodingFramework.HelperClasses;

public class WindowsApi
{
	[DllImport("kernel32.dll", CharSet = CharSet.Auto)]
	public static extern bool SetPriorityClass(uint aHandle, uint aPriorityClass);

	[DllImport("kernel32.dll", CharSet = CharSet.Auto)]
	public static extern uint GetCurrentProcess();
}
