using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using Microsoft.VisualC;

namespace EtasTime;

[StructLayout(LayoutKind.Sequential, Size = 8)]
[DebugInfoInPDB]
[MiscellaneousBits(64)]
[NativeCppClass]
internal struct EtasFileTime
{
}
