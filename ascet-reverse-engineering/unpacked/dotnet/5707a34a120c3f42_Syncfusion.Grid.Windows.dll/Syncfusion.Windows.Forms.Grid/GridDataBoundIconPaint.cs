using System;
using Syncfusion.Drawing;

namespace Syncfusion.Windows.Forms.Grid;

public class GridDataBoundIconPaint
{
	[ThreadStatic]
	private static IconPaint gridPainter;

	internal static IconPaint Paint
	{
		get
		{
			if (gridPainter == null)
			{
				gridPainter = new IconPaint(GridWindowsAssembly.RootNamespace + ".Extensions.DataBound.Resources.", GridWindowsAssembly.Assembly);
			}
			return gridPainter;
		}
	}
}
