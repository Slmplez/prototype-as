using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using Microsoft.VisualC;

namespace EtasTime;

[StructLayout(LayoutKind.Sequential, Size = 4)]
[NativeCppClass]
[DebugInfoInPDB]
[MiscellaneousBits(65)]
internal static struct IHighResolutionCounter
{
}
