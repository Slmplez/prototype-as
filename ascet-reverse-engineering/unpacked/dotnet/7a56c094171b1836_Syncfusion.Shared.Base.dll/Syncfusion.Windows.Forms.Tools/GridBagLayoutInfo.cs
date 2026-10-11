using System;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[Serializable]
[DocumentationExclude]
public class GridBagLayoutInfo
{
	public int columns;

	public int rows;

	public int startX;

	public int startY;

	public int[] minWidth;

	public int[] minHeight;

	public double[] weightX;

	public double[] weightY;

	public GridBagLayoutInfo()
	{
		minWidth = new int[512];
		minHeight = new int[512];
		weightX = new double[512];
		weightY = new double[512];
	}
}
