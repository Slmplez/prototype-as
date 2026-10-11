using System;
using System.Drawing;
using System.Drawing.Imaging;
using System.Globalization;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Grid;

public class GridCheckBoxCellRenderer : GridCellRendererBase
{
	[DocumentationExclude]
	internal Size checkBoxSize = new Size(13, 13);

	private Rectangle checkerBounds = Rectangle.Empty;

	private GridCellContextValue checkerRectangle = new GridCellContextValue(null);

	private GridCellContextValue cellScope = new GridCellContextValue(false);

	private GridCellContextValue latestHitTestContext = new GridCellContextValue(0);

	[ThreadStatic]
	private static Bitmap checkImage;

	[DocumentationExclude]
	public Size CheckBoxSize
	{
		get
		{
			return checkBoxSize;
		}
		set
		{
			checkBoxSize = value;
		}
	}

	public GridCheckBoxCellRenderer(GridControlBase grid, GridCellModelBase cellModel)
		: base(grid, cellModel)
	{
		grid.ViewLayout.LayoutChanged += GridViewLayoutChanged;
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			base.Grid.ViewLayout.LayoutChanged -= GridViewLayoutChanged;
		}
		base.Dispose(disposing);
	}

	private void GridViewLayoutChanged(object sender, EventArgs e)
	{
		checkerRectangle.ResetValue();
	}

	protected virtual Rectangle DetermineCheckBoxBounds(Graphics g, Rectangle clientBounds, string text, Font font, ContentAlignment align, GridMargins margins, GridTextAlign textAlign)
	{
		int left = clientBounds.Left;
		int top = clientBounds.Top;
		int width = clientBounds.Width;
		int height = clientBounds.Height;
		Size size = checkBoxSize;
		Size size2 = WinFormsUtils.MeasureSampleWString(g, font);
		if (text.Length > 0)
		{
			Size size3 = g.MeasureString(text, font).ToSize();
			size = GridUtil.Max(size3, size2);
			size.Width += checkBoxSize.Width;
		}
		size = GridMargins.AddMargins(size, margins);
		size.Height = Math.Max(size.Height, checkBoxSize.Height);
		int num = top + Math.Max(0, Math.Min(0, height - size.Height));
		if ((align & (ContentAlignment)112) != 0)
		{
			num = top + Math.Max(Math.Abs(height - size.Height) / 2, 0);
		}
		else if ((align & (ContentAlignment)1792) != 0)
		{
			num = top + Math.Max(height - size.Height, 0);
		}
		num += Math.Max(margins.Top, 0);
		int bottom = Math.Min(top + height, num + checkBoxSize.Height);
		if (textAlign == GridTextAlign.Right != base.Grid.IsRightToLeft())
		{
			int num2 = left + width - Math.Max(0, Math.Min(0, width - size.Width));
			if ((align & (ContentAlignment)546) != 0)
			{
				num2 = left + width - Math.Max((width - size.Width) / 2, 0);
			}
			else if (!base.Grid.IsRightToLeft() && (align & (ContentAlignment)1092) == 0)
			{
				num2 = left + width - Math.Max(width - size.Width, 0);
			}
			else if (base.Grid.IsRightToLeft() && (align & (ContentAlignment)1092) != 0)
			{
				num2 = left + width - Math.Max(width - size.Width, 0);
			}
			num2 -= Math.Max(margins.Left, 0);
			int left2 = Math.Max(left, num2 - checkBoxSize.Width);
			return Rectangle.FromLTRB(left2, num, num2, bottom);
		}
		int num3 = left + Math.Max(0, Math.Min(0, width - size.Width));
		if ((align & (ContentAlignment)546) != 0)
		{
			num3 = left + Math.Max((width - size.Width) / 2, 0);
		}
		else if (base.Grid.IsRightToLeft() && (align & (ContentAlignment)1092) == 0)
		{
			num3 = left + Math.Max(width - size.Width, 0);
		}
		else if (!base.Grid.IsRightToLeft() && (align & (ContentAlignment)1092) != 0)
		{
			num3 = left + Math.Max(width - size.Width, 0);
		}
		num3 += Math.Max(margins.Left, 0);
		int right = Math.Min(left + width, num3 + checkBoxSize.Width);
		return Rectangle.FromLTRB(num3, num, right, bottom);
	}

	protected virtual void DrawCheckBox(Graphics g, Rectangle clientBounds, GridStyleInfo style, ButtonState state, ContentAlignment align, string text, Font font)
	{
		Rectangle rect = DetermineCheckBoxBounds(g, clientBounds, text, font, align, style.ReadOnlyTextMargins.ToMargins(), style.TextAlign);
		if ((!base.Grid.PrintingMode && style.Themed && XPThemes.IsThemedOS && XPThemes.IsThemeActive && base.Grid.ThemesEnabled) || (style.Themed && base.Grid.ThemesEnabled && base.Grid.Model.Options.GridVisualStyles != GridVisualStyles.SystemTheme))
		{
			bool flag = false;
			if ((state & ButtonState.Inactive) > ButtonState.Normal && (state & ButtonState.Checked) > ButtonState.Normal)
			{
				flag = true;
			}
			if (flag && style.Enabled)
			{
				state &= ~ButtonState.Inactive;
				state &= ~ButtonState.Checked;
			}
			bool flag2 = false;
			GridStyleInfoIdentity gridStyleInfoIdentity = style.Identity as GridStyleInfoIdentity;
			if ((int)latestHitTestContext.GetValue(gridStyleInfoIdentity.RowIndex, gridStyleInfoIdentity.ColIndex) == 7)
			{
				state |= ButtonState.Flat;
				flag2 = true;
			}
			else
			{
				state &= ~ButtonState.Flat;
			}
			base.Grid.Model.Options.GridVisualStylesDrawing.DrawCheckBoxStyle(g, rect, state, flag);
			if (flag2)
			{
				base.Grid.NotifyCellHighlighted(style.CellIdentity.RowIndex, style.CellIdentity.ColIndex, style);
			}
		}
		else
		{
			DrawCheckBox(g, rect.X, rect.Y, rect.Width, rect.Height, state);
		}
	}

	protected ButtonState GetState(int rowIndex, int colIndex, GridStyleInfo style)
	{
		ButtonState buttonState = ButtonState.Normal;
		CultureInfo culture = style.GetCulture(useCurrentCultureIfNull: true);
		if (!style.Enabled)
		{
			buttonState |= ButtonState.Inactive;
		}
		if (IsCellScope(rowIndex, colIndex))
		{
			buttonState |= ButtonState.Pushed;
		}
		string text = string.Empty;
		string text2 = string.Empty;
		GridCheckBoxCellInfo readOnlyCheckBoxOptions = style.ReadOnlyCheckBoxOptions;
		if (readOnlyCheckBoxOptions != null && readOnlyCheckBoxOptions.CheckedValue != null)
		{
			text = readOnlyCheckBoxOptions.CheckedValue;
		}
		if (GridUtil.IsEmpty(text))
		{
			text = "1";
		}
		if (readOnlyCheckBoxOptions != null && readOnlyCheckBoxOptions.UncheckedValue != null)
		{
			text2 = readOnlyCheckBoxOptions.UncheckedValue;
		}
		if (GridUtil.IsEmpty(text2))
		{
			text2 = "0";
		}
		bool triState = style.TriState;
		string text3 = style.Text;
		if (text3.ToLower(culture) == text.ToLower(culture))
		{
			buttonState |= ButtonState.Checked;
		}
		else if (triState && !(text3.ToLower(culture) == text2.ToLower(culture)))
		{
			buttonState |= ButtonState.Checked | ButtonState.Inactive;
		}
		if (readOnlyCheckBoxOptions.FlatLook || base.Grid.PrintingMode)
		{
			buttonState |= ButtonState.Flat;
		}
		return buttonState;
	}

	protected override void OnDraw(Graphics g, Rectangle clientRectangle, int rowIndex, int colIndex, GridStyleInfo style)
	{
		string description = style.Description;
		Font gdipFont = style.GdipFont;
		ButtonState state = GetState(rowIndex, colIndex, style);
		ContentAlignment align = GridUtil.ConvertToContentAlignment(style.HorizontalAlignment) & GridUtil.ConvertToContentAlignment(style.VerticalAlignment);
		bool flag = style.TextAlign == GridTextAlign.Right != base.Grid.IsRightToLeft();
		DrawCheckBox(g, clientRectangle, style, state, align, description, gdipFont);
		if (description.Length <= 0)
		{
			return;
		}
		Rectangle r = clientRectangle;
		GridMargins gridMargins = style.ReadOnlyTextMargins.ToMargins();
		if (base.Grid.IsRightToLeft())
		{
			gridMargins = gridMargins.SwapRightToLeft();
		}
		if (flag)
		{
			r.Width -= checkBoxSize.Width + gridMargins.Left;
		}
		else
		{
			GridUtil.OffsetLeft(ref r, checkBoxSize.Width + gridMargins.Left);
		}
		r = GridMargins.RemoveMargins(r, gridMargins);
		if (r.Width > 0)
		{
			GridDrawCellDisplayTextEventArgs e = new GridDrawCellDisplayTextEventArgs(g, description, r, style);
			base.Grid.RaiseDrawCellDisplayText(e);
			if (!e.Cancel)
			{
				description = e.DisplayText;
				r = e.TextRectangle;
				Color textColor = ((base.Grid.PrintingMode && base.Grid.Model.Properties.BlackWhite) ? Color.Black : style.TextColor);
				GridStaticCellRenderer.DrawText(g, description, gdipFont, r, style, textColor, base.Grid.IsRightToLeft());
			}
		}
	}

	public bool IsCellScope(int rowIndex, int colIndex)
	{
		return (bool)cellScope.GetValue(rowIndex, colIndex);
	}

	public void SetCellScope(int rowIndex, int colIndex, bool value)
	{
		if (cellScope.SetValue(rowIndex, colIndex, value))
		{
			Rectangle cachedCheckerBounds = GetCachedCheckerBounds(rowIndex, colIndex);
			base.Grid.Invalidate(cachedCheckerBounds);
		}
	}

	protected Rectangle GetCachedCheckerBounds(int rowIndex, int colIndex)
	{
		if (checkerRectangle.GetValue(rowIndex, colIndex) == null)
		{
			GridStyleInfo gridStyleInfo = base.Grid.Model[rowIndex, colIndex];
			if (gridStyleInfo.ReadOnly)
			{
				checkerRectangle.SetValue(rowIndex, colIndex, Rectangle.Empty);
				return Rectangle.Empty;
			}
			GridCellLayout gridCellLayout = PerformLayout(rowIndex, colIndex, gridStyleInfo);
			ContentAlignment align = GridUtil.ConvertToContentAlignment(gridStyleInfo.HorizontalAlignment) & GridUtil.ConvertToContentAlignment(gridStyleInfo.VerticalAlignment);
			Graphics graphics = base.Grid.CreateGridGraphics();
			Font gdipFont = gridStyleInfo.GdipFont;
			checkerBounds = DetermineCheckBoxBounds(graphics, gridCellLayout.ClientRectangle, gridStyleInfo.Description, gdipFont, align, gridStyleInfo.ReadOnlyTextMargins.ToMargins(), gridStyleInfo.TextAlign);
			graphics.Dispose();
			checkerRectangle.SetValue(rowIndex, colIndex, checkerBounds);
			return checkerBounds;
		}
		return (Rectangle)checkerRectangle.GetValue(rowIndex, colIndex);
	}

	protected override int OnHitTest(int rowIndex, int colIndex, MouseEventArgs e, IMouseController controller)
	{
		Point pt = new Point(e.X, e.Y);
		int num = 0;
		checkerBounds = GetCachedCheckerBounds(rowIndex, colIndex);
		if (checkerBounds.Contains(pt))
		{
			num = 7;
		}
		SetLatestHitTestContext(num, rowIndex, colIndex, force: false);
		return num;
	}

	internal void SetLatestHitTestContext(int context, int rowIndex, int colIndex, bool force)
	{
		if (force || (int)latestHitTestContext.GetValue(rowIndex, colIndex) != context)
		{
			latestHitTestContext.SetValue(rowIndex, colIndex, context);
			base.Grid.Model.CoveredRanges.Find(rowIndex, colIndex, out var range);
			base.Grid.InvalidateRange(range);
		}
	}

	protected override void OnMouseHoverEnter(int rowIndex, int colIndex)
	{
		base.OnMouseHoverEnter(rowIndex, colIndex);
		SetLatestHitTestContext(3, rowIndex, colIndex, force: true);
	}

	protected override void OnMouseHoverLeave(int rowIndex, int colIndex, EventArgs e)
	{
		base.OnMouseHoverLeave(rowIndex, colIndex, e);
		SetLatestHitTestContext(0, rowIndex, colIndex, force: true);
	}

	protected override void OnMouseDown(int rowIndex, int colIndex, MouseEventArgs e)
	{
		if ((int)latestHitTestContext.GetValue(rowIndex, colIndex) == 7)
		{
			SetCellScope(rowIndex, colIndex, value: true);
		}
		else
		{
			base.OnMouseDown(rowIndex, colIndex, e);
		}
	}

	protected override void OnMouseUp(int rowIndex, int colIndex, MouseEventArgs e)
	{
		Rectangle cachedCheckerBounds = GetCachedCheckerBounds(rowIndex, colIndex);
		Point pt = new Point(e.X, e.Y);
		if (cachedCheckerBounds.Contains(pt))
		{
			cellScope.SetValue(rowIndex, colIndex, false);
			if (base.Grid.RaiseCheckBoxClick(rowIndex, colIndex, e))
			{
				base.Grid.CurrentCell.MoveTo(rowIndex, colIndex, GridSetCurrentCellOptions.None);
				if (base.Grid.CurrentCell.HasCurrentCellAt(rowIndex, colIndex))
				{
					OnClickedCheckBox();
					return;
				}
			}
		}
		else
		{
			base.OnMouseUp(rowIndex, colIndex, e);
		}
		SetCellScope(rowIndex, colIndex, value: false);
	}

	protected override void OnMouseMove(int rowIndex, int colIndex, MouseEventArgs e)
	{
		SetCellScope(rowIndex, colIndex, GetCachedCheckerBounds(rowIndex, colIndex).Contains(new Point(e.X, e.Y)));
	}

	protected override void OnCancelMode(int rowIndex, int colIndex)
	{
		SetCellScope(rowIndex, colIndex, value: false);
	}

	protected override void OnKeyPress(KeyPressEventArgs e)
	{
		base.OnKeyPress(e);
		if (!e.Handled && e.KeyChar == ' ')
		{
			e.Handled = true;
			base.Grid.InvalidateRange(GridRangeInfo.Cell(base.RowIndex, base.ColIndex));
			OnClickedCheckBox();
		}
	}

	protected virtual void OnClickedCheckBox()
	{
		GridStyleInfo gridStyleInfo = base.Grid.Model[base.RowIndex, base.ColIndex];
		if (!gridStyleInfo.ReadOnly && NotifyCurrentCellChanging())
		{
			bool triState = gridStyleInfo.TriState;
			CultureInfo culture = gridStyleInfo.GetCulture(useCurrentCultureIfNull: true);
			string text = string.Empty;
			string text2 = string.Empty;
			GridCheckBoxCellInfo readOnlyCheckBoxOptions = gridStyleInfo.ReadOnlyCheckBoxOptions;
			if (readOnlyCheckBoxOptions != null && readOnlyCheckBoxOptions.CheckedValue != null)
			{
				text = readOnlyCheckBoxOptions.CheckedValue;
			}
			if (GridUtil.IsEmpty(text))
			{
				text = "1";
			}
			if (readOnlyCheckBoxOptions != null && readOnlyCheckBoxOptions.UncheckedValue != null)
			{
				text2 = readOnlyCheckBoxOptions.UncheckedValue;
			}
			if (GridUtil.IsEmpty(text2))
			{
				text2 = "0";
			}
			string text3 = ((readOnlyCheckBoxOptions == null || readOnlyCheckBoxOptions.IndetermValue == null) ? string.Empty : readOnlyCheckBoxOptions.IndetermValue);
			string text4 = gridStyleInfo.Text;
			text4 = ((text4.ToLower(culture) == text.ToLower(culture)) ? text2 : ((!triState || !(text4.ToLower(culture) == text2.ToLower(culture))) ? text : text3));
			base.Grid.Model[base.RowIndex, base.ColIndex].Text = text4;
			NotifyCurrentCellChanged();
		}
	}

	protected override bool OnSaveChanges()
	{
		return true;
	}

	public static void DrawCheckBox(Graphics graphics, Rectangle rectangle, ButtonState state)
	{
		DrawCheckBox(graphics, rectangle.X, rectangle.Y, rectangle.Width, rectangle.Height, state);
	}

	public static void DrawCheckBox(Graphics graphics, int x, int y, int width, int height, ButtonState state)
	{
		if ((state & ButtonState.Flat) == ButtonState.Flat)
		{
			DrawFlatCheckBox(graphics, new Rectangle(x, y, width, height), state);
		}
		else
		{
			DrawFrameControl(graphics, x, y, width, height, 4, (int)state);
		}
	}

	private static void DrawFlatCheckBox(Graphics graphics, Rectangle rectangle, ButtonState state)
	{
		Brush background = (((state & ButtonState.Inactive) == ButtonState.Inactive) ? SystemBrushes.Control : SystemBrushes.Window);
		Color foreground = (((state & ButtonState.Inactive) == ButtonState.Inactive) ? SystemColors.ControlDark : SystemColors.ControlText);
		DrawFlatCheckBox(graphics, rectangle, foreground, background, state);
	}

	private static void DrawFlatCheckBox(Graphics graphics, Rectangle rectangle, Color foreground, Brush background, ButtonState state)
	{
		Rectangle rect = new Rectangle(rectangle.X + 1, rectangle.Y + 1, rectangle.Width - 2, rectangle.Height - 2);
		graphics.FillRectangle(background, rect);
		if ((state & ButtonState.Checked) == ButtonState.Checked)
		{
			if (checkImage == null || checkImage.Width != rectangle.Width || checkImage.Height != rectangle.Height)
			{
				if (checkImage != null)
				{
					checkImage.Dispose();
					checkImage = null;
				}
				NativeMethods.RECT rect2 = NativeMethods.RECT.FromXYWH(0, 0, rectangle.Width, rectangle.Height);
				Bitmap bitmap = new Bitmap(rectangle.Width, rectangle.Height);
				using (Graphics graphics2 = Graphics.FromImage(bitmap))
				{
					graphics2.Clear(Color.Transparent);
					IntPtr hdc = graphics2.GetHdc();
					try
					{
						NativeMethods.DrawFrameControl(hdc, ref rect2, 2, 1);
					}
					finally
					{
						graphics2.ReleaseHdcInternal(hdc);
					}
				}
				bitmap.MakeTransparent();
				checkImage = bitmap;
			}
			rectangle.X++;
			DrawImageColorized(graphics, checkImage, rectangle, foreground);
			rectangle.X--;
		}
		graphics.DrawRectangle(SystemPens.ControlDark, rect.X, rect.Y, rect.Width - 1, rect.Height - 1);
	}

	internal static void DrawImageColorized(Graphics graphics, Image image, Rectangle destination, Color replaceBlack)
	{
		DrawImageColorized(graphics, image, destination, RemapBlackAndWhitePreserveTransparentMatrix(replaceBlack, Color.White));
	}

	private static ColorMatrix RemapBlackAndWhitePreserveTransparentMatrix(Color replaceBlack, Color replaceWhite)
	{
		float num = (float)(int)replaceBlack.R / 255f;
		float num2 = (float)(int)replaceBlack.G / 255f;
		float num3 = (float)(int)replaceBlack.B / 255f;
		_ = (float)(int)replaceBlack.A / 255f;
		float matrix = (float)(int)replaceWhite.R / 255f;
		float matrix2 = (float)(int)replaceWhite.G / 255f;
		float matrix3 = (float)(int)replaceWhite.B / 255f;
		_ = (float)(int)replaceWhite.A / 255f;
		ColorMatrix colorMatrix = new ColorMatrix();
		colorMatrix.Matrix00 = 0f - num;
		colorMatrix.Matrix01 = 0f - num2;
		colorMatrix.Matrix02 = 0f - num3;
		colorMatrix.Matrix10 = matrix;
		colorMatrix.Matrix11 = matrix2;
		colorMatrix.Matrix12 = matrix3;
		colorMatrix.Matrix33 = 1f;
		colorMatrix.Matrix40 = num;
		colorMatrix.Matrix41 = num2;
		colorMatrix.Matrix42 = num3;
		colorMatrix.Matrix44 = 1f;
		return colorMatrix;
	}

	private static ColorMatrix RemapBlackAndWhiteAndTransparentMatrix(Color replaceBlack, Color replaceWhite)
	{
		float num = (float)(int)replaceBlack.R / 255f;
		float num2 = (float)(int)replaceBlack.G / 255f;
		float num3 = (float)(int)replaceBlack.B / 255f;
		float num4 = (float)(int)replaceBlack.A / 255f;
		float matrix = (float)(int)replaceWhite.R / 255f;
		float matrix2 = (float)(int)replaceWhite.G / 255f;
		float matrix3 = (float)(int)replaceWhite.B / 255f;
		float matrix4 = (float)(int)replaceWhite.A / 255f;
		ColorMatrix colorMatrix = new ColorMatrix();
		colorMatrix.Matrix00 = 0f - num;
		colorMatrix.Matrix01 = 0f - num2;
		colorMatrix.Matrix02 = 0f - num3;
		colorMatrix.Matrix03 = 0f - num4;
		colorMatrix.Matrix10 = matrix;
		colorMatrix.Matrix11 = matrix2;
		colorMatrix.Matrix12 = matrix3;
		colorMatrix.Matrix13 = matrix4;
		colorMatrix.Matrix40 = num;
		colorMatrix.Matrix41 = num2;
		colorMatrix.Matrix42 = num3;
		colorMatrix.Matrix43 = num4;
		colorMatrix.Matrix44 = 1f;
		return colorMatrix;
	}

	private static void DrawImageColorized(Graphics graphics, Image image, Rectangle destination, ColorMatrix matrix)
	{
		ImageAttributes imageAttributes = new ImageAttributes();
		imageAttributes.SetColorMatrix(matrix);
		graphics.DrawImage(image, destination, 0, 0, image.Width, image.Height, GraphicsUnit.Pixel, imageAttributes);
		imageAttributes.Dispose();
	}

	internal static void DrawImageColorized(Graphics graphics, Image image, Rectangle destination, Color replaceBlack, Color replaceWhite)
	{
		DrawImageColorized(graphics, image, destination, RemapBlackAndWhiteAndTransparentMatrix(replaceBlack, replaceWhite));
	}

	private static void DrawFrameControl(Graphics graphics, int x, int y, int width, int height, int kind, int state)
	{
		NativeMethods.RECT rect = NativeMethods.RECT.FromXYWH(0, 0, width, height);
		Bitmap bitmap = new Bitmap(width, height);
		Graphics graphics2 = Graphics.FromImage(bitmap);
		graphics2.Clear(Color.Transparent);
		IntPtr hdc = graphics2.GetHdc();
		NativeMethods.DrawFrameControl(hdc, ref rect, kind, state);
		try
		{
			graphics2.ReleaseHdc(hdc);
		}
		finally
		{
			graphics2.Dispose();
		}
		graphics.DrawImage(bitmap, x, y);
		bitmap.Dispose();
	}
}
