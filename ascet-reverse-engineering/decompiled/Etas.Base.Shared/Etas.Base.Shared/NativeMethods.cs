using System.Runtime.InteropServices;

namespace Etas.Base.Shared;

internal class NativeMethods
{
	[DllImport("ole32.dll")]
	internal static extern uint CoGetCurrentProcess();
}
