using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Grid;

public class GridProgressBarCellRenderer : GridStaticCellRenderer
{
	private GridProgressBar progressBar;

	public GridProgressBarCellRenderer(GridControlBase grid, GridCellModelBase cellModel)
		: base(grid, cellModel)
	{
		progressBar = new GridProgressBar(this);
	}

	private void FixParent(GridProgressBar progressBar)
	{
		if (this.progressBar.Parent != base.Grid)
		{
			this.progressBar.Visible = true;
			this.progressBar.Location = new Point(10000, 10000);
			this.progressBar.CausesValidation = false;
			base.Grid.Controls.Add(progressBar);
			this.progressBar.Visible = false;
			this.progressBar.ThemesEnabled = XPThemes.IsAppThemed;
		}
	}

	protected override void OnDraw(Graphics g, Rectangle clientRectangle, int rowIndex, int colIndex, GridStyleInfo style)
	{
		GetCellClientRectangle(rowIndex, colIndex, style, floatedCells: true);
		GridProgressBarCellModel.InitProgressBarProperties(progressBar, style);
		FixParent(progressBar);
		progressBar.BorderStyle = BorderStyle.None;
		progressBar.BackColor = Color.FromArgb(255, base.Grid.GetBackColor(style.Interior.BackColor));
		bool drawRightToLeft = (style.RightToLeft == RightToLeft.Inherit && base.Grid.IsRightToLeft()) || style.RightToLeft == RightToLeft.Yes;
		progressBar.Draw(g, clientRectangle, drawRightToLeft);
	}
}
