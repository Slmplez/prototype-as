using System;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.ComponentModel;
using Syncfusion.Diagnostics;

namespace Syncfusion.Windows.Forms.Grid;

public class GridCellButton : NonFinalizeDisposable
{
	private GridCellRendererBase owner;

	private Rectangle bounds;

	private string text = string.Empty;

	private GridCellHitTestInfo mouseDownHitTestInfo;

	private bool fireClickOnMouseUp = true;

	private GridCellContextValue hovering = new GridCellContextValue(false);

	private GridCellContextValue mouseDown = new GridCellContextValue(false);

	private GridCellContextValue pushed = new GridCellContextValue(false);

	public virtual Rectangle Bounds
	{
		get
		{
			return bounds;
		}
		set
		{
			bounds = value;
		}
	}

	public virtual string Text
	{
		get
		{
			return text;
		}
		set
		{
			text = value;
		}
	}

	protected GridCellHitTestInfo MouseDownInfo => mouseDownHitTestInfo;

	protected GridControlBase Grid => owner.Grid;

	public GridCellRendererBase Owner => owner;

	public bool FireClickOnMouseUp
	{
		get
		{
			return fireClickOnMouseUp;
		}
		set
		{
			fireClickOnMouseUp = value;
		}
	}

	public event GridCellEventHandler Clicked;

	public event GridCellEventHandler HoveringChanged;

	public event GridCellEventHandler MouseDownChanged;

	public event GridCellEventHandler PushedChanged;

	public GridCellButton(GridCellRendererBase owner)
	{
		this.owner = owner;
	}

	protected override void Dispose(bool disposing)
	{
		base.Dispose(disposing);
	}

	public virtual void Draw(Graphics g, int rowIndex, int colIndex, bool bActive, GridStyleInfo style)
	{
		ButtonState buttonState = ButtonState.Normal;
		Point pt = Grid.GetWindow().PointToClient(Control.MousePosition);
		bool flag = IsHovering(rowIndex, colIndex);
		if (flag && !bounds.Contains(pt))
		{
			hovering.ResetValue();
			flag = false;
		}
		bool flag2 = IsMouseDown(rowIndex, colIndex);
		if (flag2 && !bounds.Contains(pt))
		{
			mouseDown.ResetValue();
			flag2 = false;
		}
		flag2 |= IsPushed(rowIndex, colIndex) && Grid.CurrentCell.HasCurrentCellAt(rowIndex, colIndex);
		Rectangle rect = Bounds;
		Rectangle rectangle = Rectangle.FromLTRB(rect.Left + 1, rect.Top + 1, rect.Right - 2, rect.Bottom - 2);
		bool flag3 = !style.Enabled;
		if (flag3)
		{
			buttonState |= ButtonState.Flat | ButtonState.Inactive;
		}
		else if (!flag && !flag2)
		{
			buttonState |= ButtonState.Flat;
		}
		if (flag2)
		{
			buttonState |= ButtonState.Pushed;
			rectangle.Offset(1, 1);
		}
		owner.RaiseDrawCellButtonBackground(this, g, rect, buttonState, style);
		string text = Text;
		if (text != null && text.Length > 0)
		{
			bool flag4 = bActive;
			Font gdipFont = style.GdipFont;
			StringFormat stringFormat = new StringFormat();
			stringFormat.Alignment = GridUtil.ConvertToStringAlignment(style.HorizontalAlignment);
			stringFormat.LineAlignment = GridUtil.ConvertToStringAlignment(style.VerticalAlignment);
			stringFormat.HotkeyPrefix = style.HotkeyPrefix;
			stringFormat.Trimming = style.Trimming;
			if (!style.WrapText)
			{
				stringFormat.FormatFlags = StringFormatFlags.NoWrap;
			}
			Color color = ((Grid.PrintingMode && Grid.Model.Properties.BlackWhite) ? Color.Black : style.TextColor);
			if (flag3)
			{
				ControlPaint.DrawStringDisabled(g, Text, gdipFont, color, rectangle, stringFormat);
			}
			else
			{
				g.DrawString(Text, gdipFont, new SolidBrush(color), rectangle, stringFormat);
			}
			if (flag4)
			{
				Size size = g.MeasureString(Text, gdipFont, rectangle.Width).ToSize();
				Rectangle rectangle2 = GridUtil.CenterInRect(rectangle, size);
				ControlPaint.DrawFocusRectangle(g, rectangle2);
			}
			stringFormat.Dispose();
		}
		if (flag)
		{
			Grid.NotifyCellHighlighted(rowIndex, colIndex, style);
		}
	}

	public virtual void DrawButton(Graphics g, Rectangle rect, ButtonState buttonState, GridStyleInfo style)
	{
		if ((!Grid.PrintingMode && style.Themed && XPThemes.IsThemedOS && XPThemes.IsThemeActive && Grid.ThemesEnabled) || (style.Themed && Grid.ThemesEnabled && Grid.Model.Options.GridVisualStyles != GridVisualStyles.SystemTheme))
		{
			Grid.Model.Options.GridVisualStylesDrawing.DrawPushButtonStyle(g, rect, buttonState);
		}
		else
		{
			ControlPaint.DrawButton(g, rect, buttonState);
		}
	}

	public bool IsHovering(int rowIndex, int colIndex)
	{
		return (bool)hovering.GetValue(rowIndex, colIndex);
	}

	public void SetHovering(GridCellHitTestInfo ht, bool value)
	{
		if (hovering.SetValue(ht.RowIndex, ht.ColIndex, value))
		{
			Rectangle cellButtonBounds = ht.CellButtonBounds;
			if (!cellButtonBounds.IsEmpty)
			{
				Grid.InternalInvalidate(cellButtonBounds);
			}
			OnHoveringChanged(new GridCellEventArgs(ht.RowIndex, ht.ColIndex));
		}
	}

	public bool IsMouseDown(int rowIndex, int colIndex)
	{
		return (bool)mouseDown.GetValue(rowIndex, colIndex);
	}

	public void SetMouseDown(GridCellHitTestInfo ht, bool value)
	{
		if (mouseDown.SetValue(ht.RowIndex, ht.ColIndex, value))
		{
			if (Grid.IsVisibleCell(ht.RowIndex, ht.ColIndex))
			{
				Grid.InvalidateRange(GridRangeInfo.Cell(ht.RowIndex, ht.ColIndex), GridRangeOptions.MergeAllSpannedCells);
			}
			OnMouseDownChanged(new GridCellEventArgs(ht.RowIndex, ht.ColIndex));
		}
	}

	public bool IsPushed(int rowIndex, int colIndex)
	{
		return (bool)pushed.GetValue(rowIndex, colIndex);
	}

	public void SetPushed(int rowIndex, int colIndex, Rectangle bounds, bool value)
	{
		if (pushed.SetValue(rowIndex, colIndex, value))
		{
			Rectangle rectangle = bounds;
			if (!rectangle.IsEmpty)
			{
				Grid.InternalInvalidate(rectangle);
			}
			OnPushedChanged(new GridCellEventArgs(rowIndex, colIndex));
		}
	}

	public virtual int HitTest(int rowIndex, int colIndex, MouseEventArgs e, IMouseController controller)
	{
		Point pt = new Point(e.X, e.Y);
		if ((e.Button == MouseButtons.Left || e.Button == MouseButtons.None) && Bounds.Contains(pt))
		{
			return 7;
		}
		return 0;
	}

	public virtual void MouseHoverEnter(GridCellHitTestInfo ht)
	{
		SetHovering(ht, value: true);
	}

	public virtual void MouseHover(MouseEventArgs e, GridCellHitTestInfo ht)
	{
	}

	public virtual void MouseHoverLeave(EventArgs e, GridCellHitTestInfo ht)
	{
		SetHovering(ht, value: false);
	}

	public virtual void MouseDown(MouseEventArgs e, GridCellHitTestInfo ht)
	{
		SetMouseDown(ht, value: true);
		mouseDownHitTestInfo = ht;
	}

	public virtual void MouseMove(MouseEventArgs e, GridCellHitTestInfo ht)
	{
		SetMouseDown(ht, ht.CellButtonBounds.Contains(new Point(e.X, e.Y)));
	}

	public virtual void MouseUp(MouseEventArgs e, GridCellHitTestInfo ht)
	{
		if (Grid != null && !Grid.IsDisposed)
		{
			SetMouseDown(ht, value: false);
		}
		if (FireClickOnMouseUp && Bounds.Contains(new Point(e.X, e.Y)))
		{
			OnClicked(new GridCellEventArgs(ht.RowIndex, ht.ColIndex));
		}
		mouseDownHitTestInfo = null;
	}

	public virtual Cursor GetCursor(GridCellHitTestInfo ht)
	{
		return Cursors.Default;
	}

	public virtual void CancelMode(GridCellHitTestInfo ht)
	{
		SetMouseDown(ht, value: false);
		SetHovering(ht, value: false);
	}

	protected virtual void OnClicked(GridCellEventArgs e)
	{
		try
		{
			if (this.Clicked != null)
			{
				this.Clicked(this, e);
			}
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
		}
	}

	protected virtual void OnHoveringChanged(GridCellEventArgs e)
	{
		try
		{
			if (this.HoveringChanged != null)
			{
				this.HoveringChanged(this, e);
			}
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
		}
	}

	protected virtual void OnMouseDownChanged(GridCellEventArgs e)
	{
		try
		{
			if (this.MouseDownChanged != null)
			{
				this.MouseDownChanged(this, e);
			}
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
		}
	}

	protected virtual void OnPushedChanged(GridCellEventArgs e)
	{
		try
		{
			if (this.PushedChanged != null)
			{
				this.PushedChanged(this, e);
			}
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
		}
	}
}
