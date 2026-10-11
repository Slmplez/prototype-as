using System;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using Microsoft.VisualC;

namespace std;

[StructLayout(LayoutKind.Sequential, Size = 4)]
[MiscellaneousBits(64)]
[DebugInfoInPDB]
[NativeCppClass]
internal struct locale
{
	[StructLayout(LayoutKind.Sequential, Size = 4)]
	[DebugInfoInPDB]
	[MiscellaneousBits(64)]
	[NativeCppClass]
	[CLSCompliant(false)]
	public struct id
	{
	}

	[StructLayout(LayoutKind.Sequential, Size = 32)]
	[MiscellaneousBits(64)]
	[CLSCompliant(false)]
	[NativeCppClass]
	[DebugInfoInPDB]
	public struct _Locimp
	{
	}

	[StructLayout(LayoutKind.Sequential, Size = 8)]
	[CLSCompliant(false)]
	[NativeCppClass]
	[DebugInfoInPDB]
	[MiscellaneousBits(64)]
	public struct facet
	{
	}
}
