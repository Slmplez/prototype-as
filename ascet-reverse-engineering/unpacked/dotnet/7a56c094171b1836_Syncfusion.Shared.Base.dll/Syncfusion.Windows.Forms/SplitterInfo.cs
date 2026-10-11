using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms;

[DocumentationExclude]
internal class SplitterInfo
{
	internal Control splitterControl;

	internal Rectangle horizontalBarBounds;

	internal Rectangle verticalBarBounds;

	internal Rectangle innerBounds;

	internal Rectangle sizeGripBounds;

	internal Rectangle hLeftBarBounds;

	internal Rectangle hSplitBarBounds;

	internal Rectangle hRightBarBounds;

	internal Rectangle vTopBarBounds;

	internal Rectangle vSplitBarBounds;

	internal Rectangle vBottomBarBounds;

	internal Control[,] splitterPanes = new Control[2, 2];

	internal int activeRow;

	internal int activeColumn;

	internal SplitterLayout splitterLayout;

	internal DynamicSplitBars splitBars = DynamicSplitBars.Both;

	public SplitterInfo(Control splitterControl)
	{
		this.splitterControl = splitterControl;
	}

	public void Dispose()
	{
		for (int i = 0; i < 2; i++)
		{
			for (int j = 0; j < 2; j++)
			{
				if (splitterPanes != null && splitterPanes[i, j] != null)
				{
					splitterPanes[i, j].Dispose();
				}
			}
		}
	}
}
