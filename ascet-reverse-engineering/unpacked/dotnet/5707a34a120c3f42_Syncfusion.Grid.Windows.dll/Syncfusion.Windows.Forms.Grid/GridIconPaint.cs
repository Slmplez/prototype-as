using System;
using System.Reflection;
using Syncfusion.Drawing;

namespace Syncfusion.Windows.Forms.Grid;

public sealed class GridIconPaint : IconPaint
{
	[ThreadStatic]
	private static GridIconPaint gridPainter;

	internal static GridIconPaint GridPainter
	{
		get
		{
			if (gridPainter == null)
			{
				gridPainter = new GridIconPaint(GridWindowsAssembly.RootNamespace + ".Resources.", GridWindowsAssembly.Assembly);
			}
			return gridPainter;
		}
	}

	public GridIconPaint(string manifestPrefix, Assembly ass)
		: base(manifestPrefix, ass)
	{
	}
}
