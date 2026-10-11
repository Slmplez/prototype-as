using System;
using System.Drawing;
using System.Drawing.Text;
using System.Windows.Forms;
using Syncfusion.Runtime.InteropServices;
using Syncfusion.Windows.Forms.Grid;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

internal class MenuTextCellRenderer : GridStaticCellRenderer
{
	public MenuTextCellRenderer(GridControlBase grid, GridCellModelBase model)
		: base(grid, model)
	{
	}

	public override void Draw(Graphics g, Rectangle cellRectangle, int rowIndex, int colIndex, GridStyleInfo style)
	{
		bool Selected = false;
		MenuGridControlBase menuGridControlBase = base.Grid as MenuGridControlBase;
		if (menuGridControlBase != null)
		{
			Selected = menuGridControlBase.HighlightRange.Top == rowIndex;
		}
		BarItem barItem = menuGridControlBase.parentItem.Items[rowIndex - 1];
		if (!barItem.ReiseBeforePopupItemPaint(g, cellRectangle, ref Selected, DrawElement.Text, style))
		{
			base.Draw(g, cellRectangle, rowIndex, colIndex, style);
		}
		barItem.ReiseAfterPopupItemPaint(g, cellRectangle, Selected, DrawElement.Text, style);
	}

	protected override void OnDraw(Graphics g, Rectangle clientRectangle, int rowIndex, int colIndex, GridStyleInfo style)
	{
		string empty = string.Empty;
		if (clientRectangle.IsEmpty)
		{
			return;
		}
		Rectangle textRectangle = RemoveMargins(clientRectangle, style);
		if (textRectangle.IsEmpty)
		{
			return;
		}
		try
		{
			empty = ((!ShouldDrawEditing(rowIndex, colIndex)) ? base.Model.GetFormattedOrActiveTextAt(rowIndex, colIndex, style) : ControlText);
		}
		catch (Exception ex)
		{
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw ex;
			}
			empty = style.Text;
		}
		if (style.HasError)
		{
			empty = style.Error;
		}
		if (empty.Length <= 0)
		{
			return;
		}
		GridDrawCellDisplayTextEventArgs e = new GridDrawCellDisplayTextEventArgs(g, empty, textRectangle, style);
		base.Grid.RaiseDrawCellDisplayText(e);
		if (e.Cancel)
		{
			return;
		}
		textRectangle = e.TextRectangle;
		empty = e.DisplayText;
		Font gdipFont = style.GdipFont;
		Color color = ((base.Grid.PrintingMode && base.Grid.Model.Properties.BlackWhite) ? Color.Black : style.TextColor);
		bool flag = (style.RightToLeft == RightToLeft.Inherit && base.Grid.IsRightToLeft()) || style.RightToLeft == RightToLeft.Yes;
		int num = 2404;
		num &= -2049;
		if (style.HotkeyPrefix == HotkeyPrefix.Hide)
		{
			num |= 0x100000;
		}
		IntPtr hdc = g.GetHdc();
		IntPtr hObject = gdipFont.ToHfont();
		try
		{
			IntPtr hObject2 = Syncfusion.Runtime.InteropServices.NativeMethods.SelectObject(hdc, hObject);
			Syncfusion.Runtime.InteropServices.NativeMethods.SetTextColor(hdc, Color.FromArgb(0, color.B, color.G, color.R).ToArgb() & 0xFFFFFF);
			Syncfusion.Runtime.InteropServices.NativeMethods.SetBkMode(hdc, 1);
			Syncfusion.Runtime.InteropServices.NativeMethods.RECT lpRect = new Syncfusion.Runtime.InteropServices.NativeMethods.RECT(textRectangle);
			if (flag)
			{
				num |= 0x20000;
			}
			Syncfusion.Runtime.InteropServices.NativeMethods.DrawText(nFormat: style.HorizontalAlignment switch
			{
				GridHorizontalAlignment.Left => num | (flag ? 2 : 0), 
				GridHorizontalAlignment.Right => num | ((!flag) ? 2 : 0), 
				_ => num | 1, 
			}, hDC: hdc, lpszString: empty, nCount: empty.Length, lpRect: ref lpRect);
			hObject2 = Syncfusion.Runtime.InteropServices.NativeMethods.SelectObject(hdc, hObject2);
		}
		finally
		{
			Syncfusion.Runtime.InteropServices.NativeMethods.DeleteObject(hObject);
			g.ReleaseHdc(hdc);
		}
	}

	protected override void DrawBackground(Graphics g, Rectangle rect, GridStyleInfo style, bool fillBackground)
	{
		if (base.Grid is MenuGridControlBase { ThemesEnabled: not false, IsVistaOS: not false })
		{
			rect.Inflate(0, -2);
		}
		base.DrawBackground(g, rect, style, fillBackground);
	}
}
