using System;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Diagnostics;
using Syncfusion.Drawing;

namespace Syncfusion.Windows.Forms.Grid;

public class GridHeaderCellRenderer : GridStaticCellRenderer
{
	private GridRangeInfo hoverRange = GridRangeInfo.Empty;

	private GridRangeInfo mouseDownRange = GridRangeInfo.Empty;

	private bool mouseDown;

	private bool inMouseDownRange;

	private static readonly BrushInfo defaultInterior1 = new BrushInfo(GradientStyle.Vertical, Color.FromArgb(203, 199, 184), Color.FromArgb(238, 234, 216));

	private static readonly BrushInfo defaultInterior2 = new BrushInfo(GradientStyle.Horizontal, Color.FromArgb(203, 199, 184), Color.FromArgb(238, 234, 216));

	private bool recurssioncheck = true;

	public GridHeaderCellRenderer(GridControlBase grid, GridCellModelBase cellModel)
		: base(grid, cellModel)
	{
		base.AlwaysRaiseCellClick = false;
		WireGrid();
		base.SupportsEditing = false;
	}

	protected virtual void WireGrid()
	{
		base.Grid.GetWindow();
	}

	protected virtual void UnwireGrid()
	{
		base.Grid.GetWindow();
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing && XPThemes.IsThemedOS && base.Grid != null)
		{
			UnwireGrid();
		}
		base.Dispose(disposing);
	}

	protected override int OnHitTest(int rowIndex, int colIndex, MouseEventArgs e, IMouseController controller)
	{
		if (Control.MouseButtons != MouseButtons.None)
		{
			return 0;
		}
		return 3;
	}

	protected override void OnMouseMove(int rowIndex, int colIndex, MouseEventArgs e)
	{
		base.OnMouseMove(rowIndex, colIndex, e);
	}

	protected override void OnMouseHover(int rowIndex, int colIndex, MouseEventArgs e)
	{
		bool flag = false;
		GridRangeInfo range = GridRangeInfo.Cell(rowIndex, colIndex);
		if (!range.IsEmpty)
		{
			base.Grid.Model.GetSpannedRangeInfo(range.Top, range.Left, out range);
		}
		GridStyleInfo gridStyleInfo = base.Grid.Model[range.Top, range.Left];
		if (!gridStyleInfo.Clickable || base.Grid.CellRenderers[gridStyleInfo.CellType] != this)
		{
			range = GridRangeInfo.Empty;
		}
		if (!mouseDown)
		{
			if (IntelliMouseDragScroll.ActiveIntelliMouseDragScroll != null)
			{
				range = GridRangeInfo.Empty;
			}
			if (!hoverRange.Equals(range))
			{
				if (!hoverRange.IsEmpty)
				{
					base.Grid.InvalidateRange(hoverRange);
					flag = true;
				}
				hoverRange = range;
				if (!hoverRange.IsEmpty)
				{
					base.Grid.InvalidateRange(hoverRange);
					flag = true;
				}
			}
		}
		else if (inMouseDownRange != mouseDownRange.Equals(range))
		{
			inMouseDownRange = !inMouseDownRange;
			base.Grid.InvalidateRange(mouseDownRange);
			flag = true;
		}
		base.OnMouseHover(rowIndex, colIndex, e);
		if (flag)
		{
			base.Grid.GetWindow().Update();
		}
		flag = false;
	}

	protected override void OnMouseDown(int rowIndex, int colIndex, MouseEventArgs e)
	{
		GridRangeInfo gridRangeInfo = GridRangeInfo.Cell(rowIndex, colIndex);
		if (!gridRangeInfo.IsEmpty)
		{
			base.Grid.Model.GetSpannedRangeInfo(gridRangeInfo.Top, gridRangeInfo.Left, out mouseDownRange);
			GridStyleInfo gridStyleInfo = base.Grid.Model[gridRangeInfo.Top, gridRangeInfo.Left];
			if (!gridStyleInfo.Clickable || base.Grid.CellRenderers[gridStyleInfo.CellType] != this)
			{
				mouseDownRange = GridRangeInfo.Empty;
			}
		}
		mouseDown = !mouseDownRange.IsEmpty;
		hoverRange = GridRangeInfo.Empty;
		if (mouseDown)
		{
			inMouseDownRange = true;
			base.Grid.InvalidateRange(mouseDownRange);
		}
		base.OnMouseDown(rowIndex, colIndex, e);
	}

	protected override void OnMouseUp(int rowIndex, int colIndex, MouseEventArgs e)
	{
		if (mouseDown)
		{
			mouseDown = false;
			base.Grid.InvalidateRange(mouseDownRange);
			mouseDownRange = GridRangeInfo.Empty;
		}
		base.OnMouseUp(rowIndex, colIndex, e);
	}

	protected override void OnMouseHoverLeave(int rowIndex, int colIndex, EventArgs e)
	{
		if (!hoverRange.IsEmpty)
		{
			base.Grid.InvalidateRange(hoverRange);
			hoverRange = GridRangeInfo.Empty;
		}
		if (!mouseDownRange.IsEmpty)
		{
			base.Grid.InvalidateRange(mouseDownRange);
			mouseDownRange = GridRangeInfo.Empty;
			inMouseDownRange = false;
		}
		base.OnMouseHoverLeave(rowIndex, colIndex, e);
	}

	protected override void OnDraw(Graphics g, Rectangle clientRectangle, int rowIndex, int colIndex, GridStyleInfo style)
	{
		GridMargins gridMargins = style.ReadOnlyTextMargins.ToMargins();
		if (base.Grid.IsRightToLeft())
		{
			gridMargins = gridMargins.SwapRightToLeft();
		}
		Rectangle r = GridMargins.RemoveMargins(clientRectangle, gridMargins);
		Rectangle rect = clientRectangle;
		bool markHeaderState = GetMarkHeaderState(rowIndex, colIndex, style);
		GridProperties properties = base.Grid.Model.Properties;
		if (style.CellAppearance == GridCellAppearance.Flat && properties.Buttons3D)
		{
			Color controlDarkDark = SystemColors.ControlDarkDark;
			if (!base.Grid.PrintingMode)
			{
				ThemedHeaderDrawing.HeaderState headerState = ThemedHeaderDrawing.HeaderState.Normal;
				GridRangeInfo range = GridRangeInfo.Cell(rowIndex, colIndex);
				Point pt = base.Grid.GetWindow().PointToClient(Control.MousePosition);
				Rectangle rectangle = clientRectangle;
				rectangle.Inflate(1, 1);
				if (rectangle.Contains(pt) && base.Grid.GetWindow().ClientRectangle.Contains(pt))
				{
					if (hoverRange.Contains(range))
					{
						headerState = ThemedHeaderDrawing.HeaderState.Hot;
					}
					if (markHeaderState || (inMouseDownRange && mouseDownRange.Contains(range)))
					{
						headerState = ThemedHeaderDrawing.HeaderState.Pressed;
					}
				}
				if ((style.Themed && XPThemes.IsThemedOS && XPThemes.IsThemeActive && base.Grid.ThemesEnabled) || (style.Themed && base.Grid.ThemesEnabled && base.Grid.Model.Options.GridVisualStyles != GridVisualStyles.SystemTheme))
				{
					base.Grid.Model.Options.GridVisualStylesDrawing.DrawHeaderStyle(g, rect, headerState);
					if (headerState != ThemedHeaderDrawing.HeaderState.Normal)
					{
						base.Grid.NotifyCellHighlighted(rowIndex, colIndex, style);
					}
				}
				else
				{
					Color controlLightLight = SystemColors.ControlLightLight;
					if (!markHeaderState)
					{
						GridUtil.Draw3dFrame(g, rect.Left, rect.Top, rect.Right - 1, rect.Bottom - 1, 1, controlLightLight, controlDarkDark);
					}
					else
					{
						Brush brush = new SolidBrush(controlDarkDark);
						g.FillRectangle(brush, Rectangle.FromLTRB(rect.Left, rect.Bottom - 1, rect.Right - 1, rect.Bottom));
						g.FillRectangle(brush, Rectangle.FromLTRB(rect.Right - 1, rect.Top, rect.Right, rect.Bottom));
						brush.Dispose();
						base.Grid.NotifyCellHighlighted(rowIndex, colIndex, style);
					}
				}
			}
			else
			{
				int num = base.Grid.InternalGetHeaderRows();
				int num2 = base.Grid.InternalGetHeaderCols();
				GridBorder border = new GridBorder(GridBorderStyle.Solid, Color.Black);
				if (colIndex <= num2 || rowIndex <= num)
				{
					if (style.ReadOnlyBorders.Bottom.Style == GridBorderStyle.None && properties.DisplayHorzLines)
					{
						GridBorderPaint.DrawRectangle(g, border, clientRectangle, Color.White, GridBorderSide.Bottom);
					}
					if (style.ReadOnlyBorders.Right.Style == GridBorderStyle.None && properties.DisplayVertLines)
					{
						GridBorderPaint.DrawRectangle(g, border, clientRectangle, Color.White, (!base.Grid.IsRightToLeft()) ? GridBorderSide.Left : GridBorderSide.Right);
					}
				}
			}
		}
		if (!r.IsEmpty)
		{
			if (markHeaderState)
			{
				GridUtil.OffsetLeft(ref r, 1);
				GridUtil.OffsetTop(ref r, 1);
			}
			OnDrawDisplayText(g, r, rowIndex, colIndex, style);
		}
	}

	public override void OnPrepareViewStyleInfo(GridPrepareViewStyleInfoEventArgs e)
	{
		Color clrBottom = Color.Empty;
		Color clrRight = Color.Empty;
		Color clrInteriorFirst = Color.Empty;
		Color clrInteriorLast = Color.Empty;
		if (base.Grid.Model.Options.GridVisualStylesDrawing.GetHeaderBorderColors(out clrBottom, out clrRight, out clrInteriorFirst, out clrInteriorLast))
		{
			if (e.Style.CellAppearance != GridCellAppearance.Flat)
			{
				e.Style.Interior = new BrushInfo(GradientStyle.Vertical, clrInteriorFirst, clrInteriorLast);
			}
			e.Style.Borders.Bottom = new GridBorder(GridBorderStyle.Solid, clrBottom, GridBorderWeight.ExtraThin);
			e.Style.Borders.Right = new GridBorder(GridBorderStyle.Solid, clrRight, GridBorderWeight.ExtraThin);
		}
		if (base.Grid.PrintingMode)
		{
			int num = base.Grid.InternalGetHeaderRows();
			int num2 = base.Grid.InternalGetHeaderCols();
			if (!base.Grid.Model.Properties.BlackWhite)
			{
				BrushInfo interior = e.Style.Interior;
				if (interior.Equals(defaultInterior1) || interior.Equals(defaultInterior2))
				{
					e.Style.BackColor = SystemColors.Control;
				}
			}
			if (e.ColIndex <= num2 || e.RowIndex <= num)
			{
				GridBorder gridBorder = new GridBorder(GridBorderStyle.Solid, Color.Black);
				e.Style.Borders.Right = gridBorder;
				e.Style.Borders.Bottom = gridBorder;
			}
		}
		base.OnPrepareViewStyleInfo(e);
	}

	protected override void OnDrawCellBackground(GridDrawCellBackgroundEventArgs e)
	{
		if (!base.Grid.PrintingMode || !base.Grid.Model.Properties.BlackWhite)
		{
			base.OnDrawCellBackground(e);
		}
	}

	protected virtual void OnDrawDisplayText(Graphics g, Rectangle textRectangle, int rowIndex, int colIndex, GridStyleInfo style)
	{
		string text = string.Empty;
		int headerCount = base.Grid.Model.Cols.HeaderCount;
		int headerCount2 = base.Grid.Model.Rows.HeaderCount;
		try
		{
			text = base.Model.GetFormattedOrActiveTextAt(rowIndex, colIndex, style);
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
		}
		if (GridUtil.IsEmpty(text))
		{
			string text2 = string.Empty;
			if (colIndex > headerCount && rowIndex == 0 && base.Grid.Model.Options.NumberedColHeaders)
			{
				text2 = GridRangeInfo.GetAlphaLabel(colIndex - headerCount);
			}
			else if (rowIndex > headerCount2 && colIndex == 0 && base.Grid.Model.Options.NumberedRowHeaders)
			{
				text2 = GridRangeInfo.GetNumericLabel(rowIndex - headerCount2);
			}
			text = text2;
		}
		if (text.Length <= 0)
		{
			return;
		}
		GridDrawCellDisplayTextEventArgs e = new GridDrawCellDisplayTextEventArgs(g, text, textRectangle, style);
		base.Grid.RaiseDrawCellDisplayText(e);
		if (e.Cancel)
		{
			return;
		}
		textRectangle = e.TextRectangle;
		text = e.DisplayText;
		Font gdipFont = style.GdipFont;
		Color color = ((base.Grid.PrintingMode && base.Grid.Model.Properties.BlackWhite) ? Color.Black : style.TextColor);
		Brush brush = new SolidBrush(color);
		StringFormat stringFormat = new StringFormat();
		stringFormat.LineAlignment = GridUtil.ConvertToStringAlignment(style.VerticalAlignment);
		stringFormat.Alignment = GridUtil.ConvertToStringAlignment(style.HorizontalAlignment);
		stringFormat.SetTabStops(0f, new float[1] { 50f });
		if ((style.RightToLeft == RightToLeft.Inherit && base.Grid.IsRightToLeft()) || style.RightToLeft == RightToLeft.Yes)
		{
			stringFormat.FormatFlags |= StringFormatFlags.DirectionRightToLeft;
		}
		stringFormat.HotkeyPrefix = style.HotkeyPrefix;
		stringFormat.Trimming = style.Trimming;
		if (!style.WrapText)
		{
			stringFormat.FormatFlags = StringFormatFlags.NoWrap;
		}
		int orientation = style.ReadOnlyFont.Orientation;
		if (orientation != 0)
		{
			float angle = orientation;
			RotatePaint.DrawRotatedString(g, text, gdipFont, brush, textRectangle, stringFormat, angle);
		}
		else if (!e.UseTextRenderer)
		{
			g.DrawString(text, gdipFont, brush, textRectangle, stringFormat);
		}
		else if (TextRenderer.MeasureText(g, text, gdipFont).Width < textRectangle.Width)
		{
			TextRenderer.DrawText(g, text, gdipFont, textRectangle, color);
		}
		else
		{
			string text3 = text;
			do
			{
				text3 = MeasureTextRenderer(g, text3, textRectangle, gdipFont);
			}
			while (!recurssioncheck);
			TextRenderer.DrawText(g, text3, gdipFont, textRectangle, color);
		}
		brush.Dispose();
		stringFormat.Dispose();
	}

	private string MeasureTextRenderer(Graphics g, string displayText, Rectangle textRectangle, Font font)
	{
		int num = 0;
		string text = displayText;
		if (displayText.Contains("\r\n"))
		{
			string[] array = displayText.Split(new string[1] { "\r\n" }, StringSplitOptions.None);
			text = array[array.Length - 1];
			for (int i = 0; i < array.Length - 1; i++)
			{
				num += array[i].Length + 2;
			}
		}
		recurssioncheck = true;
		if (text != string.Empty)
		{
			for (int j = 0; j <= text.Length; j++)
			{
				if (TextRenderer.MeasureText(g, text.Substring(0, j), font).Width > textRectangle.Width)
				{
					text = ((j <= 1) ? text.Insert(1, "\r\n") : text.Insert(j - 1, "\r\n"));
					recurssioncheck = false;
					break;
				}
			}
			return displayText.Remove(num) + text;
		}
		return displayText;
	}

	protected override void OnOutlineCurrentCell(Graphics g, Rectangle r)
	{
		GridShowCurrentCellBorder showCurrentCellBorderBehavior = base.Grid.Model.Options.ShowCurrentCellBorderBehavior;
		if (showCurrentCellBorderBehavior != GridShowCurrentCellBorder.HideAlways)
		{
			bool gridFocused = base.Grid.HasControlFocus && !base.Grid.CurrentCell.StaticDrawing;
			GridDrawCurrentCellBorderEventArgs e = new GridDrawCurrentCellBorderEventArgs(currentRowIndex, currentColIndex, g, r, gridFocused, base.StyleInfo, showCurrentCellBorderBehavior);
			base.Grid.RaiseDrawCurrentCellBorder(e);
			if (!e.Cancel)
			{
				ControlPaint.DrawFocusRectangle(g, r);
			}
		}
	}
}
