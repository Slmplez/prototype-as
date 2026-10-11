using System.Drawing;
using System.Drawing.Drawing2D;

namespace Syncfusion.Windows.Forms.Tools.Renderers;

internal abstract class RendererOffice2007Base : CustomRenderer
{
	private Office2007Theme m_prevTheme;

	protected Brush m_CaptionUpperBrush;

	protected Brush m_CaptionLowerBrush;

	protected Brush m_ActiveCaptionUpperBrush;

	protected Brush m_ActiveCaptionLowerBrush;

	protected Brush m_OuterBorderBrush;

	protected Brush m_InnerBorderBrush;

	protected Pen m_ButtonImagePen;

	protected Pen m_ActiveButtonImagePen;

	protected Brush m_ButtonBrush;

	protected Brush m_ActiveButtonBrush;

	protected Brush m_PushedButtonBrush;

	protected Brush m_TextBrush;

	protected Brush m_SplitterBrush;

	protected bool m_GraphicObjectsCreated;

	protected new virtual LayoutOffice2007Base Layout
	{
		get
		{
			return base.Layout as LayoutOffice2007Base;
		}
		set
		{
			base.Layout = value;
		}
	}

	protected new virtual ColorTableOffice2007Base ColorTable
	{
		get
		{
			return base.ColorTable as ColorTableOffice2007Base;
		}
		set
		{
			base.ColorTable = value;
		}
	}

	protected override void PaintCaption(Graphics g, PaintDockControlArgs args)
	{
		if (base.CaptionHeight != Layout.CaptionWidth || base.PrevFloating != Layout.Floating)
		{
			base.PrevFloating = Layout.Floating;
			base.CaptionHeight = Layout.CaptionWidth;
			RefreshCaptionBrushes();
		}
		Brush brush = null;
		Brush brush2 = null;
		try
		{
			if (args.ProvideGraphicsItemsArgs != null && args.ProvideGraphicsItemsArgs.CaptionBackground is SolidBrush)
			{
				Brush brush3 = new LinearGradientBrush(Layout.CaptionUpperBounds, (args.ProvideGraphicsItemsArgs.CaptionBackground as SolidBrush).Color, (args.ProvideGraphicsItemsArgs.CaptionBackground as SolidBrush).Color, LinearGradientMode.Vertical);
				(brush3 as LinearGradientBrush).WrapMode = WrapMode.TileFlipXY;
				brush = brush3;
				brush2 = brush3;
			}
			else if (args.ProvideGraphicsItemsArgs != null && args.ProvideGraphicsItemsArgs.CaptionBackground != null)
			{
				brush = args.ProvideGraphicsItemsArgs.CaptionBackground;
				brush2 = args.ProvideGraphicsItemsArgs.CaptionBackground;
			}
			else
			{
				brush = GetCaptionUpperBrush(args.Caption.CaptionState);
				brush2 = GetCaptionLowerBrush(args.Caption.CaptionState);
			}
			RendererPrimitives.PaintBackground(g, Layout.CaptionUpperBounds, brush);
			RendererPrimitives.PaintBackground(g, Layout.CaptionLowerBounds, brush2);
		}
		finally
		{
			brush2?.Dispose();
			brush?.Dispose();
		}
		PaintButtons(g, args);
		DrawText(g, args);
		if (Layout.ImageEnabled)
		{
			g.DrawImage(GetImageFromList(args.CaptionImageIndex, args.ImageList), Layout.ImageBounds);
		}
	}

	public override void RefreshOffice2007Theme(Office2007Theme newTheme)
	{
		base.RefreshOffice2007Theme(newTheme);
		if (newTheme != m_prevTheme || newTheme == Office2007Theme.Managed)
		{
			bool captionEnabled = Layout.CaptionEnabled;
			Layout.CaptionEnabled = true;
			ColorTable.Office2007Theme = newTheme;
			RefreshBrushes(recreate: true);
			Layout.CaptionEnabled = captionEnabled;
			m_prevTheme = newTheme;
		}
	}

	protected override Brush GetCaptionBrush(CaptionState cpState)
	{
		return GetCaptionUpperBrush(cpState);
	}

	protected virtual Brush GetCaptionUpperBrush(CaptionState cpState)
	{
		if (cpState == CaptionState.Normal)
		{
			Brush brush = new LinearGradientBrush(Layout.CaptionUpperBounds, ColorTable.CaptionUpperTopColor, ColorTable.CaptionUpperBottomColor, LinearGradientMode.Vertical);
			(brush as LinearGradientBrush).WrapMode = WrapMode.TileFlipXY;
			return brush;
		}
		Brush brush2 = new LinearGradientBrush(Layout.CaptionUpperBounds, ColorTable.ActiveCaptionUpperTopColor, ColorTable.ActiveCaptionUpperBottomColor, LinearGradientMode.Vertical);
		(brush2 as LinearGradientBrush).WrapMode = WrapMode.TileFlipXY;
		return brush2;
	}

	protected virtual Brush GetCaptionLowerBrush(CaptionState cpState)
	{
		if (cpState == CaptionState.Normal)
		{
			Brush brush = new LinearGradientBrush(Layout.CaptionLowerBounds, ColorTable.CaptionLowerTopColor, ColorTable.CaptionLowerBottomColor, LinearGradientMode.Vertical);
			(brush as LinearGradientBrush).WrapMode = WrapMode.TileFlipXY;
			return brush;
		}
		Brush brush2 = new LinearGradientBrush(Layout.CaptionLowerBounds, ColorTable.ActiveCaptionLowerTopColor, ColorTable.ActiveCaptionLowerBottomColor, LinearGradientMode.Vertical);
		(brush2 as LinearGradientBrush).WrapMode = WrapMode.TileFlipXY;
		return brush2;
	}

	protected override void CreateGraphicObjects(bool recreate)
	{
		m_GraphicObjectsCreated = !m_GraphicObjectsCreated || recreate;
		if (m_GraphicObjectsCreated)
		{
			m_OuterBorderBrush = new SolidBrush(ColorTable.OuterBorderColor);
			m_InnerBorderBrush = new SolidBrush(ColorTable.InnerBorderColor);
			m_ButtonImagePen = new Pen(ColorTable.ButtonImageColor);
			m_ActiveButtonImagePen = new Pen(ColorTable.ActiveButtonImageColor);
			Rectangle rectangle = ((Layout.Table.Buttons.Count > 0) ? Layout.GetButtonBounds(0) : Rectangle.Empty);
			if (rectangle != Rectangle.Empty)
			{
				m_ButtonBrush = new SolidBrush(ColorTable.ButtonColor);
				m_ActiveButtonBrush = new SolidBrush(ColorTable.ActiveButtonColor);
				m_PushedButtonBrush = new SolidBrush(ColorTable.PushedButtonColor);
			}
			m_TextBrush = new SolidBrush(ColorTable.TextColor);
			m_SplitterBrush = new SolidBrush(ColorTable.SplitterColor);
			m_GraphicObjectsCreated = true;
		}
	}

	protected override void CreateCaptionBrushes(bool recreate)
	{
		if ((Layout.CaptionBounds.Width != 0 || Layout.CaptionBounds.Height != 0) && (m_prevCaptionRect.Location != Layout.CaptionBounds.Location || m_prevCaptionRect.Height != Layout.CaptionBounds.Height || recreate))
		{
			m_CaptionUpperBrush = new LinearGradientBrush(Layout.CaptionUpperBounds, ColorTable.CaptionUpperTopColor, ColorTable.CaptionUpperBottomColor, LinearGradientMode.Vertical);
			(m_CaptionUpperBrush as LinearGradientBrush).WrapMode = WrapMode.TileFlipXY;
			m_CaptionLowerBrush = new LinearGradientBrush(Layout.CaptionLowerBounds, ColorTable.CaptionLowerTopColor, ColorTable.CaptionLowerBottomColor, LinearGradientMode.Vertical);
			(m_CaptionLowerBrush as LinearGradientBrush).WrapMode = WrapMode.TileFlipXY;
			m_ActiveCaptionUpperBrush = new LinearGradientBrush(Layout.CaptionUpperBounds, ColorTable.ActiveCaptionUpperTopColor, ColorTable.ActiveCaptionUpperBottomColor, LinearGradientMode.Vertical);
			(m_ActiveCaptionUpperBrush as LinearGradientBrush).WrapMode = WrapMode.TileFlipXY;
			m_ActiveCaptionLowerBrush = new LinearGradientBrush(Layout.CaptionLowerBounds, ColorTable.ActiveCaptionLowerTopColor, ColorTable.ActiveCaptionLowerBottomColor, LinearGradientMode.Vertical);
			(m_ActiveCaptionLowerBrush as LinearGradientBrush).WrapMode = WrapMode.TileFlipXY;
			m_prevCaptionRect = Layout.CaptionBounds;
		}
	}

	protected override void DisposeBrushes()
	{
		if (m_ActiveButtonBrush != null)
		{
			m_ActiveButtonBrush.Dispose();
		}
		if (m_ButtonBrush != null)
		{
			m_ButtonBrush.Dispose();
		}
		if (m_OuterBorderBrush != null)
		{
			m_OuterBorderBrush.Dispose();
		}
		if (m_PushedButtonBrush != null)
		{
			m_PushedButtonBrush.Dispose();
		}
		if (m_SplitterBrush != null)
		{
			m_SplitterBrush.Dispose();
		}
		if (m_TextBrush != null)
		{
			m_TextBrush.Dispose();
		}
		if (m_ButtonImagePen != null)
		{
			m_ButtonImagePen.Dispose();
		}
		if (m_ActiveButtonImagePen != null)
		{
			m_ActiveButtonImagePen.Dispose();
		}
		if (m_SplitterBrush != null)
		{
			m_SplitterBrush.Dispose();
		}
		m_ActiveButtonBrush = null;
		m_ButtonBrush = null;
		m_OuterBorderBrush = null;
		m_PushedButtonBrush = null;
		m_SplitterBrush = null;
		m_TextBrush = null;
		m_ButtonImagePen = null;
		m_ActiveButtonImagePen = null;
		m_SplitterBrush = null;
		DisposeCaptionBrushes();
		m_GraphicObjectsCreated = false;
	}

	protected override void DisposeCaptionBrushes()
	{
	}

	protected override Brush GetTextBrush(CaptionState cpState)
	{
		return m_TextBrush;
	}

	protected override Brush GetBorderBrush(bool innerBorder)
	{
		if (innerBorder)
		{
			return m_InnerBorderBrush;
		}
		return m_OuterBorderBrush;
	}

	protected override Pen GetButtonImagePen(CaptionState cpState, CaptionButtonState btnState)
	{
		if (btnState == CaptionButtonState.Active)
		{
			return m_ActiveButtonImagePen;
		}
		return m_ButtonImagePen;
	}

	protected override void PaintBorders(Graphics g, PaintDockControlArgs args)
	{
		base.PaintBorders(g, args);
		Brush brush = ((args.ProvideGraphicsItemsArgs == null || !(args.ProvideGraphicsItemsArgs.CaptionForeground != Color.Empty)) ? GetBorderBrush(innerBorder: false) : new SolidBrush(args.ProvideGraphicsItemsArgs.CaptionForeground));
		g.FillRectangle(brush, Layout.ControlBounds.Left, Layout.ControlBounds.Top, 3, 3);
		g.FillRectangle(brush, Layout.ControlBounds.Right - 3, Layout.ControlBounds.Top, 3, 3);
		Brush brush2 = null;
		brush2 = ((args.ProvideGraphicsItemsArgs == null || !(args.ProvideGraphicsItemsArgs.CaptionForeground != Color.Empty)) ? GetBorderBrush(innerBorder: false) : new SolidBrush(args.ProvideGraphicsItemsArgs.CaptionForeground));
		Rectangle controlBounds = Layout.ControlBounds;
		controlBounds.Inflate(-Layout.OuterBorderWidth, -Layout.OuterBorderWidth);
		RendererPrimitives.PaintBorders(g, controlBounds, brush2, 1);
	}

	protected override Brush GetSplitterBrush()
	{
		return m_SplitterBrush;
	}

	protected override Brush GetButtonBrush(CaptionState cpState, CaptionButtonState btnState)
	{
		if (cpState == CaptionState.Active)
		{
			if (btnState == CaptionButtonState.Active)
			{
				return m_ActiveButtonBrush;
			}
			return m_PushedButtonBrush;
		}
		return m_ButtonBrush;
	}
}
