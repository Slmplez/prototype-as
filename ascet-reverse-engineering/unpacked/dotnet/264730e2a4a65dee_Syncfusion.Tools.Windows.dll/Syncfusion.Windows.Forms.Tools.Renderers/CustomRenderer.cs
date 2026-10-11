using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools.Renderers;

internal abstract class CustomRenderer : StyleRenderer
{
	private int m_CaptionHeight = SystemInformation.ToolWindowCaptionHeight;

	private bool m_PrevFloating;

	private int m_HighlightButtonIndex = -1;

	protected Rectangle m_prevCaptionRect = Rectangle.Empty;

	protected bool m_bNeedCreateBrushes;

	private int DEF_CAPTION_OFFSET = 1;

	internal int CaptionHeight
	{
		get
		{
			return m_CaptionHeight;
		}
		set
		{
			if (m_CaptionHeight != value)
			{
				m_CaptionHeight = value;
			}
		}
	}

	internal bool PrevFloating
	{
		get
		{
			return m_PrevFloating;
		}
		set
		{
			if (m_PrevFloating != value)
			{
				m_PrevFloating = value;
			}
		}
	}

	public override bool RefreshColors()
	{
		if (base.RefreshColors())
		{
			RefreshBrushes();
			return true;
		}
		return false;
	}

	protected override Image GetImageFromList(int index, ImageList list)
	{
		if (index >= 0 && list != null && index < list.Images.Count)
		{
			return list.Images[index];
		}
		return null;
	}

	protected abstract void CreateGraphicObjects(bool recreate);

	protected abstract void CreateCaptionBrushes(bool recreate);

	protected virtual void RefreshBrushes(bool recreate)
	{
		DisposeBrushes();
		CreateGraphicObjects(recreate);
	}

	protected virtual void RefreshBrushes()
	{
		RefreshBrushes(recreate: true);
	}

	protected abstract void DisposeBrushes();

	protected virtual void RefreshCaptionBrushes()
	{
		DisposeCaptionBrushes();
		CreateCaptionBrushes(recreate: true);
	}

	protected abstract void DisposeCaptionBrushes();

	public override void PaintDockedControl(Graphics g, Rectangle rectangle, PaintDockControlArgs args)
	{
		RefreshPaintInfo(rectangle, args);
		CreateGraphicObjects(recreate: false);
		if (args.PaintBorders)
		{
			PaintBorders(g, args);
		}
		if (args.Caption != null && args.Caption.Enabled && Layout.CaptionBounds.Width != 0 && Layout.CaptionBounds.Height != 0)
		{
			if (m_bNeedCreateBrushes)
			{
				CreateCaptionBrushes(recreate: true);
			}
			PaintCaption(g, args);
		}
	}

	public override void PaintAutoHidePanels(Graphics g, Rectangle rectangle, AutoHideSide side)
	{
	}

	public override void PaintSplitter(Graphics g, Rectangle rectangle, Orientation orientation)
	{
		Brush splitterBrush = GetSplitterBrush();
		RendererPrimitives.PaintBackground(g, rectangle, splitterBrush);
	}

	protected virtual StringAlignment GetTextAlignment(DockLabelAlignmentStyle alignment)
	{
		StringAlignment result = StringAlignment.Near;
		switch (alignment)
		{
		case DockLabelAlignmentStyle.Default:
		case DockLabelAlignmentStyle.Left:
			result = StringAlignment.Near;
			break;
		case DockLabelAlignmentStyle.Right:
			result = StringAlignment.Far;
			break;
		case DockLabelAlignmentStyle.Center:
			result = StringAlignment.Center;
			break;
		}
		return result;
	}

	protected abstract Brush GetCaptionBrush(CaptionState cpState);

	protected abstract Brush GetTextBrush(CaptionState cpState);

	protected abstract Brush GetBorderBrush(bool innerBorder);

	protected abstract Brush GetSplitterBrush();

	protected abstract Brush GetButtonBrush(CaptionState cpState, CaptionButtonState btnState);

	protected abstract Pen GetButtonPen(CaptionState cpState, CaptionButtonState btnState);

	protected abstract Pen GetButtonImagePen(CaptionState cpState, CaptionButtonState btnState);

	protected virtual void PaintCaption(Graphics g, PaintDockControlArgs args)
	{
		if (m_CaptionHeight != Layout.CaptionWidth || m_PrevFloating != Layout.Floating)
		{
			m_PrevFloating = Layout.Floating;
			m_CaptionHeight = Layout.CaptionWidth;
			RefreshCaptionBrushes();
		}
		RendererPrimitives.PaintBackground(brush: (args.ProvideGraphicsItemsArgs == null || args.ProvideGraphicsItemsArgs.CaptionBackground == null) ? GetCaptionBrush(args.Caption.CaptionState) : args.ProvideGraphicsItemsArgs.CaptionBackground, g: g, rectangle: Layout.CaptionBounds);
		PaintButtons(g, args);
		DrawText(g, args);
		if (Layout.ImageEnabled)
		{
			g.DrawImage(GetImageFromList(args.CaptionImageIndex, args.ImageList), Layout.ImageBounds);
		}
	}

	protected virtual void PaintBorders(Graphics g, PaintDockControlArgs args)
	{
		Brush brush;
		Brush brush2;
		if (args.ProvideGraphicsItemsArgs != null && args.ProvideGraphicsItemsArgs.CaptionForeground != Color.Empty)
		{
			brush = new SolidBrush(args.ProvideGraphicsItemsArgs.CaptionForeground);
			brush2 = new SolidBrush(args.ProvideGraphicsItemsArgs.CaptionForeground);
		}
		else
		{
			brush = GetBorderBrush(innerBorder: true);
			brush2 = GetBorderBrush(innerBorder: false);
		}
		RendererPrimitives.PaintBorders(g, Layout.ControlBounds, brush2, Layout.OuterBorderWidth);
		Rectangle controlBounds = Layout.ControlBounds;
		controlBounds.Inflate(-Layout.OuterBorderWidth, -Layout.OuterBorderWidth);
		if (Layout.Floating)
		{
			RendererPrimitives.PaintBorders(g, controlBounds, brush, Layout.BorderWidth - Layout.OuterBorderWidth);
		}
	}

	protected virtual void PaintButtons(Graphics g, PaintDockControlArgs args)
	{
		if (!Layout.CaptionEnabled)
		{
			return;
		}
		Rectangle empty = Rectangle.Empty;
		for (int i = 0; i < args.Table.Buttons.Count; i++)
		{
			empty = Layout.GetButtonBounds(i);
			if (empty == Rectangle.Empty)
			{
				continue;
			}
			CaptionButtonState btnState = CaptionButtonState.Normal;
			if (!args.DesignMode)
			{
				if (Layout.ActiveButtonIndex == i)
				{
					btnState = CaptionButtonState.Active;
				}
				else if (Layout.PushedButtonIndex == i)
				{
					btnState = CaptionButtonState.Pushed;
				}
				m_HighlightButtonIndex = Layout.ActiveButtonIndex;
			}
			PaintButtonBackground(g, args.Caption.CaptionState, empty, btnState);
			empty.Inflate(-1, -1);
			PaintButtonImage(g, args.Caption.CaptionState, Layout.Table.Buttons[i], btnState, Layout.Table.Options[i], empty, args.ImageList);
		}
	}

	protected virtual void PaintButtonBackground(Graphics g, CaptionState cpState, Rectangle rectangle, CaptionButtonState btnState)
	{
		if (btnState != CaptionButtonState.Normal)
		{
			Brush buttonBrush = GetButtonBrush(cpState, btnState);
			Pen buttonPen = GetButtonPen(cpState, btnState);
			RendererPrimitives.PaintButtonBackground(g, rectangle, buttonPen, buttonBrush);
		}
	}

	protected virtual void PaintButtonImage(Graphics g, CaptionState cpState, CaptionButton button, CaptionButtonState btnState, CaptionButtonOptions btnOptions, Rectangle rect, ImageList imageList)
	{
		Image imageFromList = GetImageFromList(button.ImageIndex, imageList);
		if (imageFromList != null)
		{
			if (imageFromList is Bitmap bitmap && button.TransparentImageColor != Color.Transparent)
			{
				bitmap.MakeTransparent(button.TransparentImageColor);
			}
			RendererPrimitives.PaintCustomButtonImage(g, imageFromList, rect);
			return;
		}
		Pen buttonImagePen = GetButtonImagePen(cpState, btnState);
		switch (button.Type)
		{
		case CaptionButtonType.Close:
			RendererPrimitives.PaintCloseButtonImage(g, buttonImagePen, rect);
			break;
		case CaptionButtonType.Pin:
			if (btnOptions.ModifiedView)
			{
				RendererPrimitives.PaintPinButtonImageHorizontal(g, buttonImagePen, rect);
			}
			else
			{
				RendererPrimitives.PaintPinButtonImageVertical(g, buttonImagePen, rect);
			}
			break;
		case CaptionButtonType.Menu:
			RendererPrimitives.PaintMenuButtonImage(g, buttonImagePen, rect);
			break;
		case CaptionButtonType.Maximize:
		{
			bool flag = Layout.Table.Buttons.ContainsButtonType(CaptionButtonType.Restore);
			if (btnOptions.ModifiedView && !flag)
			{
				RendererPrimitives.PaintRestoreButtonImage(g, buttonImagePen, rect);
			}
			else
			{
				RendererPrimitives.PaintMaximizeButtonImage(g, buttonImagePen, rect);
			}
			break;
		}
		case CaptionButtonType.Restore:
			RendererPrimitives.PaintRestoreButtonImage(g, buttonImagePen, rect);
			break;
		}
	}

	protected virtual void DrawText(Graphics g, PaintDockControlArgs args)
	{
		Layout.TextRectHeight = args.Caption.Font.Height + DEF_CAPTION_OFFSET;
		if (Layout.TextBounds != Rectangle.Empty)
		{
			StringFormat stringFormat = new StringFormat();
			stringFormat.Trimming = StringTrimming.EllipsisCharacter;
			stringFormat.Alignment = GetTextAlignment(args.Caption.TextAlignment);
			if (base.IsMirrored)
			{
				stringFormat.FormatFlags |= StringFormatFlags.DirectionRightToLeft;
			}
			Font font = ((args.ProvideGraphicsItemsArgs == null || args.ProvideGraphicsItemsArgs.CaptionFont == null) ? args.Caption.Font : args.ProvideGraphicsItemsArgs.CaptionFont);
			Brush brush = GetTextBrush(args.Caption.CaptionState);
			if (args.ProvideGraphicsItemsArgs != null && args.ProvideGraphicsItemsArgs.CaptionForeground != Color.Empty)
			{
				brush = new SolidBrush(args.ProvideGraphicsItemsArgs.CaptionForeground);
			}
			RendererPrimitives.DrawText(g, args.Caption.Text, font, brush, Layout.TextBounds, stringFormat);
		}
	}

	public override int GetHighlightedButtonIndex()
	{
		return m_HighlightButtonIndex;
	}
}
