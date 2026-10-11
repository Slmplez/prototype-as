using System;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Diagnostics;

namespace Syncfusion.Windows.Forms.Grid;

public class GridCellUpDownButton : GridCellButton
{
	private ScrollButton buttonType;

	[ThreadStatic]
	private static Timer repeatScrollEventTimer = null;

	private static object startstopSemaphor = true;

	private static object elapsedSemaphor = true;

	internal int ignoreClickButtonTick = int.MinValue;

	private bool savedDisableTextBox;

	public ScrollButton ButtonType => buttonType;

	public GridCellUpDownButton(GridCellRendererBase control, ScrollButton button)
		: base(control)
	{
		buttonType = button;
		base.FireClickOnMouseUp = false;
	}

	protected override void Dispose(bool disposing)
	{
		base.Dispose(disposing);
	}

	public override void MouseDown(MouseEventArgs e, GridCellHitTestInfo ht)
	{
		if (e.Button == MouseButtons.Left && Control.MouseButtons == e.Button)
		{
			base.Grid.CurrentCell.MoveTo(ht.RowIndex, ht.ColIndex, GridSetCurrentCellOptions.None);
			if (base.Grid.CurrentCell.HasCurrentCellAt(ht.RowIndex, ht.ColIndex))
			{
				base.MouseDown(e, ht);
				OnClicked(new GridCellEventArgs(ht.RowIndex, ht.ColIndex));
				ignoreClickButtonTick = Environment.TickCount + SystemInformation.DoubleClickTime + 300;
				StartAutoScrollTimer();
				return;
			}
		}
		SetMouseDown(ht, value: true);
	}

	public override void MouseMove(MouseEventArgs e, GridCellHitTestInfo ht)
	{
		lock (startstopSemaphor)
		{
			if (ht.CellButtonBounds.Contains(new Point(e.X, e.Y)))
			{
				SetMouseDown(ht, value: true);
				if (repeatScrollEventTimer == null)
				{
					StartAutoScrollTimer();
				}
			}
			else
			{
				StopAutoScrollTimer();
				SetMouseDown(ht, value: false);
			}
		}
	}

	public override void MouseUp(MouseEventArgs e, GridCellHitTestInfo ht)
	{
		StopAutoScrollTimer();
		base.MouseUp(e, ht);
	}

	public override void CancelMode(GridCellHitTestInfo ht)
	{
		StopAutoScrollTimer();
		base.CancelMode(ht);
	}

	public override void DrawButton(Graphics g, Rectangle rect, ButtonState buttonState, GridStyleInfo style)
	{
		if (base.Grid.PrintingMode)
		{
			return;
		}
		_ = style.CellIdentity.RowIndex;
		_ = style.CellIdentity.ColIndex;
		rect.Inflate(-1, 0);
		if ((!base.Grid.PrintingMode && style.Themed && XPThemes.IsThemedOS && XPThemes.IsThemeActive && base.Grid.ThemesEnabled) || (style.Themed && base.Grid.ThemesEnabled && base.Grid.Model.Options.GridVisualStyles != GridVisualStyles.SystemTheme))
		{
			ButtonID btnId = ButtonID.Up;
			if (buttonType == ScrollButton.Down)
			{
				btnId = ButtonID.Down;
			}
			Color empty = Color.Empty;
			empty = ((!(style.BackColor == SystemColors.Window)) ? style.BackColor : base.Grid.BackColor);
			base.Grid.Model.Options.GridVisualStylesDrawing.DrawSpinButtonStyle(g, rect, btnId, buttonState, empty);
		}
		else
		{
			ControlPaint.DrawScrollButton(g, rect, buttonType, buttonState);
		}
	}

	internal void StartAutoScrollTimer()
	{
		lock (startstopSemaphor)
		{
			repeatScrollEventTimer = new Timer();
			repeatScrollEventTimer.Tick += OnTimerElapsed;
			repeatScrollEventTimer.Interval = 100;
			repeatScrollEventTimer.Enabled = true;
		}
	}

	internal void StopAutoScrollTimer()
	{
		lock (startstopSemaphor)
		{
			if (repeatScrollEventTimer != null)
			{
				_ = repeatScrollEventTimer;
				repeatScrollEventTimer.Tick -= OnTimerElapsed;
				repeatScrollEventTimer.Dispose();
				repeatScrollEventTimer = null;
				if (base.Owner is GridTextBoxCellRenderer gridTextBoxCellRenderer)
				{
					gridTextBoxCellRenderer.DisableTextBox = savedDisableTextBox;
				}
			}
		}
	}

	private void OnTimerElapsed(object source, EventArgs e)
	{
		try
		{
			if (repeatScrollEventTimer == null || !repeatScrollEventTimer.Enabled || base.MouseDownInfo == null || Control.MouseButtons == MouseButtons.None)
			{
				return;
			}
			if (repeatScrollEventTimer.Interval > 50)
			{
				repeatScrollEventTimer.Interval = Math.Max(50, repeatScrollEventTimer.Interval - 5);
			}
			Point pt = base.Grid.PointToClient(Control.MousePosition);
			if (!base.MouseDownInfo.CellButtonBounds.Contains(pt))
			{
				StopAutoScrollTimer();
				SetMouseDown(base.MouseDownInfo, value: false);
			}
			else if (Environment.TickCount > ignoreClickButtonTick)
			{
				if (base.Owner is GridTextBoxCellRenderer gridTextBoxCellRenderer)
				{
					_ = gridTextBoxCellRenderer.DisableTextBox;
					gridTextBoxCellRenderer.DisableTextBox = true;
				}
				SetMouseDown(base.MouseDownInfo, value: true);
				OnClicked(new GridCellEventArgs(base.MouseDownInfo.RowIndex, base.MouseDownInfo.ColIndex));
			}
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			StopAutoScrollTimer();
			CancelMode(base.MouseDownInfo);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
		}
	}
}
