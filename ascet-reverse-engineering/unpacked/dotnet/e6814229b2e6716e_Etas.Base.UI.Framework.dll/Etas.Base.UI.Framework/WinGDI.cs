using System.Runtime.InteropServices;

namespace Etas.Base.UI.Framework;

public sealed class WinGDI
{
	public enum PS
	{
		SOLID = 0,
		DASH = 1,
		DOT = 2,
		DASHDOT = 3,
		DASHDOTDOT = 4,
		USERSTYLE = 7,
		COSMETIC = 0,
		GEOMETRIC = 65536
	}

	public enum BS
	{
		SOLID,
		NULL,
		HATCHED,
		PATTERN,
		INDEXED,
		DIBPATTERN,
		DIBPATTERNPT,
		PATTERN8X8,
		DIBPATTERN8X8,
		MONOPATTERN
	}

	[StructLayout(LayoutKind.Sequential)]
	public class LOGBRUSH
	{
		public uint style;

		public int color;

		public int hatch;
	}
}
