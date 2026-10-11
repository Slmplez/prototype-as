using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using Microsoft.VisualC;

namespace EtasTime;

[StructLayout(LayoutKind.Sequential, Size = 8)]
[MiscellaneousBits(64)]
[NativeCppClass]
[DebugInfoInPDB]
internal struct EtasUnixTime
{
}
