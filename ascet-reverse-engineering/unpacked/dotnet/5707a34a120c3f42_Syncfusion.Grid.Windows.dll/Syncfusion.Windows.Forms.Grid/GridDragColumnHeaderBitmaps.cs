using System;
using System.Drawing;
using Syncfusion.Drawing;

namespace Syncfusion.Windows.Forms.Grid;

public class GridDragColumnHeaderBitmaps
{
	[ThreadStatic]
	private static IconPaint iconPainter;

	private static string RootNamespace = GridWindowsAssembly.RootNamespace + ".Extensions.MouseController";

	internal static IconPaint IconPainter
	{
		get
		{
			if (iconPainter == null)
			{
				iconPainter = new IconPaint(RootNamespace + ".", typeof(GridDragColumnHeaderBitmaps).Assembly);
			}
			return iconPainter;
		}
	}

	public static Bitmap RedDownBitmap => IconPainter.GetBitmap("RedDownArrow.bmp");

	public static Bitmap RedUpBitmap => IconPainter.GetBitmap("RedUpArrow.bmp");
}
