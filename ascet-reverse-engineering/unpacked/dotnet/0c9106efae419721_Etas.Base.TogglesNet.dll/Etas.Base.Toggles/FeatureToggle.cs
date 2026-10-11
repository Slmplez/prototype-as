using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using Microsoft.VisualC;

namespace Etas.Base.Toggles;

[StructLayout(LayoutKind.Sequential, Size = 1)]
[NativeCppClass]
[DebugInfoInPDB]
[MiscellaneousBits(64)]
internal struct FeatureToggle
{
}
