using System;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Grid;

public class GridRadioButton : GridCellButton
{
	private int _index;

	private bool _enabled;

	[DocumentationExclude]
	public static int RADIOBUTTONWIDTH = 15;

	public bool Enabled
	{
		get
		{
			return _enabled;
		}
		set
		{
			_enabled = value;
		}
	}

	public GridRadioButton(GridCellRendererBase renderer, int index)
		: base(renderer)
	{
		_index = index;
		_enabled = true;
	}

	protected override void Dispose(bool disposing)
	{
		base.Dispose(disposing);
	}

	public override void DrawButton(Graphics g, Rectangle rect, ButtonState buttonState, GridStyleInfo style)
	{
		GridRadioButtonCellRenderer gridRadioButtonCellRenderer = (GridRadioButtonCellRenderer)base.Owner;
		if (gridRadioButtonCellRenderer != null && gridRadioButtonCellRenderer.selectedButtonIndex == _index)
		{
			buttonState |= ButtonState.Checked;
		}
		bool flag = false;
		if ((buttonState & ButtonState.Inactive) > ButtonState.Normal && (buttonState & ButtonState.Checked) > ButtonState.Normal)
		{
			flag = true;
		}
		if (flag && style.Enabled)
		{
			buttonState &= ~ButtonState.Inactive;
			buttonState &= ~ButtonState.Checked;
		}
		if ((buttonState & ButtonState.Flat) > ButtonState.Normal)
		{
			buttonState &= ~ButtonState.Flat;
			buttonState = buttonState;
		}
		if (!Enabled)
		{
			buttonState |= ButtonState.Inactive;
		}
		int rADIOBUTTONWIDTH = RADIOBUTTONWIDTH;
		int x = rect.X + Math.Max(0, rect.Width - rADIOBUTTONWIDTH);
		int y = rect.Y;
		int height = rect.Height;
		if (style.TextAlign == GridTextAlign.Right)
		{
			x = rect.X;
		}
		if ((!base.Grid.PrintingMode && style.Themed && XPThemes.IsThemedOS && XPThemes.IsThemeActive && base.Grid.ThemesEnabled) || (style.Themed && base.Grid.ThemesEnabled && base.Grid.Model.Options.GridVisualStyles != GridVisualStyles.SystemTheme))
		{
			rect = new Rectangle(x, y, rADIOBUTTONWIDTH, height);
			if (base.Grid.Model.Options.GridVisualStyles != GridVisualStyles.SystemTheme && base.Grid.Model.Options.GridVisualStyles != GridVisualStyles.Office2003)
			{
				rect.Y += Math.Max(0, rect.Height / 2 - 6);
			}
			base.Grid.Model.Options.GridVisualStylesDrawing.DrawRadioStyle(g, rect, buttonState);
		}
		else
		{
			ControlPaint.DrawRadioButton(g, x, y, rADIOBUTTONWIDTH, height, buttonState);
		}
	}
}
