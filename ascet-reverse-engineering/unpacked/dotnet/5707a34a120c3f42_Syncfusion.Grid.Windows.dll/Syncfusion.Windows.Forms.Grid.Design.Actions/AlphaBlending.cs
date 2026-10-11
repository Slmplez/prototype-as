using System;
using System.Drawing;
using Syncfusion.Drawing;

namespace Syncfusion.Windows.Forms.Grid.Design.Actions;

internal class AlphaBlending : GridDesignerBasicAction
{
	public override void InvokeAction(object sender, EventArgs e)
	{
		GridControlBase grid = base.MainWindow.Grid;
		if (grid != null)
		{
			grid.SupportsTransparentBackColor = !grid.SupportsTransparentBackColor;
			if (grid.SupportsTransparentBackColor)
			{
				grid.Model.TableStyle.Interior = new BrushInfo(Color.FromArgb(50, Color.White));
			}
			else
			{
				grid.Model.TableStyle.ResetInterior();
			}
			grid.Model.Options.TransparentBackground = !grid.SupportsTransparentBackColor && grid.BackgroundImage == null;
		}
	}
}
