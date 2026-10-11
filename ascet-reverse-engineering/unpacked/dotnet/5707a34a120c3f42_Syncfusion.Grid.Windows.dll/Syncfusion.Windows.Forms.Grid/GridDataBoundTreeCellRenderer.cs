using System;
using System.Drawing;

namespace Syncfusion.Windows.Forms.Grid;

public class GridDataBoundTreeCellRenderer : GridTextBoxCellRenderer
{
	internal int offSet = 12;

	internal int leftSide = 4;

	internal int midPt = 5;

	internal int indentLen = 6;

	internal int centerLine = 9;

	private Rectangle innerBounds;

	private Color lineColor;

	private GridDataBoundGrid dataBoundGrid;

	public Color LineColor
	{
		get
		{
			return lineColor;
		}
		set
		{
			lineColor = value;
		}
	}

	public GridDataBoundTreeCellRenderer(GridControlBase grid, GridCellModelBase cellModel)
		: base(grid, cellModel)
	{
		AddButton(new GridDataBoundTreeCellButton(this));
		lineColor = Color.Black;
		dataBoundGrid = grid as GridDataBoundGrid;
	}

	public override void OnPrepareViewStyleInfo(GridPrepareViewStyleInfoEventArgs e)
	{
		GridBoundRecordState recordStateAtRowIndex = dataBoundGrid.Binder.GetRecordStateAtRowIndex(e.Style.CellIdentity.RowIndex);
		if (recordStateAtRowIndex.RowIndexInRecord > 0)
		{
			e.Style.ShowButtons = GridShowButtons.Hide;
			return;
		}
		e.Style.HorizontalAlignment = GridHorizontalAlignment.Center;
		e.Style.VerticalAlignment = GridVerticalAlignment.Middle;
		object cellValue = base.Grid.Model[e.Style.CellIdentity.RowIndex, 1].CellValue;
		e.Style.ShowButtons = ((Convert.ToInt32((cellValue.ToString().Length > 0) ? cellValue : "1") != -1) ? GridShowButtons.Show : GridShowButtons.Hide);
		e.Style.Clickable = true;
	}

	protected override Rectangle OnLayout(int rowIndex, int colIndex, GridStyleInfo style, Rectangle innerBounds, Rectangle[] buttonsBounds)
	{
		ref Rectangle reference = ref buttonsBounds[0];
		reference = GridUtil.CenterInRect(innerBounds, new Size(11, 11));
		buttonsBounds[0].X = innerBounds.X + leftSide;
		this.innerBounds = innerBounds;
		if (rowIndex > base.Grid.Model.Rows.HeaderCount)
		{
			GridBoundRecordState recordStateAtRowIndex = ((GridDataBoundGrid)base.Grid).Binder.GetRecordStateAtRowIndex(rowIndex);
			int num = buttonsBounds[0].X + recordStateAtRowIndex.LevelIndex * offSet;
			ref Rectangle reference2 = ref buttonsBounds[0];
			int x;
			if (!base.Grid.IsRightToLeft())
			{
				int num2 = (buttonsBounds[0].X = num);
				x = num2;
			}
			else
			{
				x = innerBounds.Right - num + innerBounds.Left - buttonsBounds[0].Width;
			}
			reference2.X = x;
		}
		return innerBounds;
	}

	public override void Draw(Graphics g, Rectangle cellRectangle, int rowIndex, int colIndex, GridStyleInfo style)
	{
		GridDataBoundGrid gridDataBoundGrid = (GridDataBoundGrid)base.Grid;
		GridBoundRecordState recordStateAtRowIndex = gridDataBoundGrid.Binder.GetRecordStateAtRowIndex(rowIndex);
		int num = (recordStateAtRowIndex.level + 1) * offSet + midPt + leftSide + 2;
		if (gridDataBoundGrid.IndentHierarchies)
		{
			num -= indentLen;
		}
		style.TextMargins.Left = num;
		style.HorizontalAlignment = GridHorizontalAlignment.Left;
		base.Draw(g, cellRectangle, rowIndex, colIndex, style);
		DrawTreeLines(g, rowIndex, GetButton(0).Bounds);
	}

	protected override bool OnQueryShowButtons(int rowIndex, int colIndex, GridStyleInfo style)
	{
		GridBoundRecordState recordStateAtRowIndex = ((GridDataBoundGrid)base.Grid).Binder.GetRecordStateAtRowIndex(rowIndex);
		if ((recordStateAtRowIndex != null && !recordStateAtRowIndex.HasChildList) || (dataBoundGrid.EnableAddNew && rowIndex > dataBoundGrid.Model.RowCount - dataBoundGrid.Binder.GetHierarchyLevel(0).RowCountPerRecord))
		{
			return false;
		}
		if (!base.OnQueryShowButtons(rowIndex, colIndex, style))
		{
			return base.Grid.IsPrinting();
		}
		return true;
	}

	protected override void OnDrawCellButton(GridCellButton button, Graphics g, int rowIndex, int colIndex, bool bActive, GridStyleInfo style)
	{
		GridDataBoundGrid gridDataBoundGrid = (GridDataBoundGrid)base.Grid;
		if (!gridDataBoundGrid.Binder.AllowAddNew || rowIndex != gridDataBoundGrid.Model.RowCount)
		{
			base.OnDrawCellButton(button, g, rowIndex, colIndex, bActive, style);
		}
	}

	private void DrawTreeLines(Graphics g, int rowIndex, Rectangle rect)
	{
		if (((GridDataBoundGrid)base.Grid).IndentHierarchies || (dataBoundGrid.EnableAddNew && rowIndex > dataBoundGrid.Model.RowCount - dataBoundGrid.Binder.GetHierarchyLevel(0).RowCountPerRecord) || rowIndex <= base.Grid.Model.Rows.HeaderCount)
		{
			return;
		}
		using Pen pen = new Pen(lineColor, 1f);
		GridBoundRecordState recordStateAtRowIndex = dataBoundGrid.Binder.GetRecordStateAtRowIndex(rowIndex);
		for (int i = 0; i <= recordStateAtRowIndex.LevelIndex; i++)
		{
			int num = innerBounds.Left + centerLine + i * offSet;
			if (base.Grid.IsRightToLeft())
			{
				num = innerBounds.Right - num + innerBounds.Left - 1;
			}
			if (i < recordStateAtRowIndex.LevelIndex && (i < recordStateAtRowIndex.LevelIndex || recordStateAtRowIndex.Position < recordStateAtRowIndex.Table.Count - 1))
			{
				GridBoundRecordState parent = recordStateAtRowIndex.Parent;
				while (parent != null && parent.LevelIndex > i)
				{
					parent = parent.Parent;
				}
				if (parent == null || parent.Position < parent.Table.Count - 1)
				{
					g.DrawLine(pen, num, innerBounds.Top, num, innerBounds.Bottom);
				}
				continue;
			}
			if (recordStateAtRowIndex.RowIndexInRecord > 0)
			{
				if (dataBoundGrid.IsExpandedAtRowIndex(rowIndex - recordStateAtRowIndex.RowIndexInRecord + 1))
				{
					g.DrawLine(pen, num + offSet, innerBounds.Top, num + offSet, innerBounds.Bottom);
				}
				if (recordStateAtRowIndex.Position == recordStateAtRowIndex.Table.Count - 1)
				{
					break;
				}
				g.DrawLine(pen, num, innerBounds.Top, num, innerBounds.Bottom);
				continue;
			}
			int num2 = ((!recordStateAtRowIndex.HasChildList) ? (indentLen - 1) : 0);
			int num3 = ((!recordStateAtRowIndex.HasChildList) ? midPt : 0);
			if (i > 0 || recordStateAtRowIndex.Position > 0)
			{
				g.DrawLine(pen, num, innerBounds.Top, num, rect.Top + num3);
			}
			if (recordStateAtRowIndex.Position < recordStateAtRowIndex.Table.Count - 1)
			{
				g.DrawLine(pen, num, rect.Bottom - 1 - num3, num, innerBounds.Bottom);
			}
			if (base.Grid.IsRightToLeft())
			{
				g.DrawLine(pen, rect.Left - indentLen, rect.Top + midPt, rect.Left + num2, rect.Top + midPt);
			}
			else
			{
				g.DrawLine(pen, rect.Right - 1 - num2, rect.Top + midPt, rect.Right + indentLen, rect.Top + midPt);
			}
			if (recordStateAtRowIndex.Expanded)
			{
				if (base.Grid.IsRightToLeft())
				{
					g.DrawLine(pen, rect.Left - indentLen - 1, rect.Top + midPt, rect.Left - indentLen - 1, innerBounds.Bottom);
				}
				else
				{
					g.DrawLine(pen, rect.Right + indentLen, rect.Top + midPt, rect.Right + indentLen, innerBounds.Bottom);
				}
			}
		}
	}
}
