using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Grid;

public class GridCellComboBoxButton : GridCellButton
{
	private bool drawEllipsis;

	private static GridIconPaint iconPainter;

	public bool DrawEllipsis
	{
		get
		{
			return drawEllipsis;
		}
		set
		{
			if (drawEllipsis != value)
			{
				drawEllipsis = value;
			}
		}
	}

	public GridCellComboBoxButton(GridCellRendererBase control)
		: base(control)
	{
	}

	protected override void Dispose(bool disposing)
	{
		base.Dispose(disposing);
	}

	public override void DrawButton(Graphics g, Rectangle rect, ButtonState buttonState, GridStyleInfo style)
	{
		if (drawEllipsis)
		{
			base.DrawButton(g, Bounds, buttonState, style);
			if (iconPainter == null)
			{
				iconPainter = GridIconPaint.GridPainter;
			}
			string bitmapName = "Browse.bmp";
			Point offset = (((buttonState & ButtonState.Pushed) != ButtonState.Normal) ? new Point(1, 1) : Point.Empty);
			iconPainter.PaintIcon(g, rect, offset, bitmapName, SystemColors.ControlText);
		}
		else if ((!base.Grid.PrintingMode && style.Themed && XPThemes.IsThemedOS && XPThemes.IsThemeActive && base.Grid.ThemesEnabled) || (style.Themed && base.Grid.ThemesEnabled && base.Grid.Model.Options.GridVisualStyles != GridVisualStyles.SystemTheme))
		{
			ThemedComboBoxDrawing.DropDownState state = ThemedComboBoxDrawing.DropDownState.Normal;
			int rowIndex = style.CellIdentity.RowIndex;
			int colIndex = style.CellIdentity.ColIndex;
			bool flag = IsHovering(rowIndex, colIndex);
			bool flag2 = IsMouseDown(rowIndex, colIndex);
			if (!style.Clickable)
			{
				state = ThemedComboBoxDrawing.DropDownState.Disabled;
			}
			else if (flag2)
			{
				state = ThemedComboBoxDrawing.DropDownState.Pressed;
			}
			else if (flag)
			{
				state = ThemedComboBoxDrawing.DropDownState.Hot;
			}
			Color empty = Color.Empty;
			empty = ((!(style.BackColor == SystemColors.Window)) ? style.BackColor : base.Grid.BackColor);
			base.Grid.Model.Options.GridVisualStylesDrawing.DrawComboBoxStyle(g, rect, state, empty);
			if (flag || flag2)
			{
				base.Grid.NotifyCellHighlighted(style.CellIdentity.RowIndex, style.CellIdentity.ColIndex, style);
			}
		}
		else
		{
			ControlPaint.DrawComboButton(g, rect, buttonState);
		}
	}
}
