using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Grid;

public class GridPushButtonCellRenderer : GridCellRendererBase
{
	private GridCellButton pushButton;

	public GridPushButtonCellRenderer(GridControlBase grid, GridCellModelBase cellModel)
		: base(grid, cellModel)
	{
		AddButton(pushButton = new GridCellButton(this));
		base.ForceRefreshOnActivateCell = true;
	}

	protected GridPushButtonCellRenderer(GridControlBase grid, GridCellModelBase cellModel, GridCellButton button)
		: base(grid, cellModel)
	{
		pushButton = button;
	}

	protected override Rectangle OnLayout(int rowIndex, int colIndex, GridStyleInfo style, Rectangle innerBounds, Rectangle[] buttonsBounds)
	{
		buttonsBounds[0] = innerBounds;
		pushButton.Text = style.Description;
		innerBounds = Rectangle.Empty;
		return innerBounds;
	}

	protected override void OnOutlineCurrentCell(Graphics g, Rectangle r)
	{
	}

	protected override bool OnQueryShowButtons(int rowIndex, int colIndex, GridStyleInfo style)
	{
		return true;
	}

	protected override void OnButtonClicked(int rowIndex, int colIndex, int button)
	{
		base.OnButtonClicked(rowIndex, colIndex, button);
		OnPushButtonClick(rowIndex, colIndex);
	}

	protected override void OnKeyDown(KeyEventArgs e)
	{
		if (!e.Handled && e.KeyCode == Keys.Space)
		{
			e.Handled = true;
			PerformLayout(base.RowIndex, base.ColIndex);
			pushButton.SetPushed(base.RowIndex, base.ColIndex, pushButton.Bounds, value: true);
		}
	}

	protected override void OnKeyUp(KeyEventArgs e)
	{
		if (!e.Handled && e.KeyCode == Keys.Space && pushButton.IsPushed(base.RowIndex, base.ColIndex))
		{
			e.Handled = true;
			OnPushButtonClick(base.RowIndex, base.ColIndex);
			PerformLayout(base.RowIndex, base.ColIndex);
			pushButton.SetPushed(base.RowIndex, base.ColIndex, pushButton.Bounds, value: false);
		}
	}

	protected virtual void OnPushButtonClick(int rowIndex, int colIndex)
	{
		base.Grid.RaisePushButtonClick(rowIndex, colIndex);
	}
}
