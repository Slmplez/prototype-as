using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools.Renderers;

internal class RendererOffice2003 : CustomRenderer
{
	private Brush m_ActiveCaptionBrush;

	private Brush m_CaptionBrush;

	private Brush m_OuterBorderBrush;

	private Brush m_InnerBorderBrush;

	private Pen m_ButtonBorderPen;

	private Pen m_ButtonImagePen;

	private Pen m_PushedButtonImagePen;

	private Brush m_ActiveButtonBrush;

	private Brush m_PushedButtonBrush;

	private Brush m_TextBrush;

	private Brush m_SplitterBrush;

	private Bitmap m_GripperBitmap;

	private bool m_GraphicObjectsCreated;

	protected new LayoutOffice2003 Layout
	{
		get
		{
			return base.Layout as LayoutOffice2003;
		}
		set
		{
			base.Layout = value;
		}
	}

	protected new ColorTableOffice2003 ColorTable
	{
		get
		{
			return base.ColorTable as ColorTableOffice2003;
		}
		set
		{
			base.ColorTable = value;
		}
	}

	public RendererOffice2003()
	{
		ColorTable = new ColorTableOffice2003();
		Layout = new LayoutOffice2003();
		CreateGraphicObjects(recreate: false);
	}

	public override void PaintSplitter(Graphics g, Rectangle rectangle, Orientation orientation)
	{
		base.PaintSplitter(g, rectangle, orientation);
		int num = 6;
		int num2 = num * 4 - 1;
		Point empty = Point.Empty;
		if (orientation == Orientation.Horizontal)
		{
			empty.X = rectangle.Width / 2 - num2 / 2;
			empty.Y = (rectangle.Height - 3) / 2 + 1;
		}
		else
		{
			empty.X = (rectangle.Width - 3) / 2 + 1;
			empty.Y = rectangle.Height / 2 - num2 / 2;
		}
		RendererPrimitives.PaintGripper(g, orientation, empty, m_GripperBitmap, num);
	}

	protected override Brush GetCaptionBrush(CaptionState cpState)
	{
		if (cpState == CaptionState.Normal)
		{
			return m_CaptionBrush;
		}
		return m_ActiveCaptionBrush;
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

	protected override Brush GetSplitterBrush()
	{
		return m_SplitterBrush;
	}

	protected override Brush GetButtonBrush(CaptionState cpState, CaptionButtonState btnState)
	{
		if (btnState == CaptionButtonState.Active)
		{
			return m_ActiveButtonBrush;
		}
		return m_PushedButtonBrush;
	}

	protected override Pen GetButtonPen(CaptionState cpState, CaptionButtonState btnState)
	{
		return m_ButtonBorderPen;
	}

	protected override Pen GetButtonImagePen(CaptionState cpState, CaptionButtonState btnState)
	{
		if (btnState == CaptionButtonState.Pushed)
		{
			return m_PushedButtonImagePen;
		}
		return m_ButtonImagePen;
	}

	protected override void PaintCaption(Graphics g, PaintDockControlArgs args)
	{
		base.PaintCaption(g, args);
		PaintGripper(g);
	}

	protected void PaintGripper(Graphics g)
	{
		if (Layout.GripperRectangle != Rectangle.Empty)
		{
			RendererPrimitives.PaintGripper(g, Orientation.Vertical, Layout.GripperRectangle.Location, m_GripperBitmap, CaptionWidth / 6);
		}
	}

	protected override void CreateGraphicObjects(bool recreate)
	{
		m_GraphicObjectsCreated = !m_GraphicObjectsCreated || recreate;
		if (m_GraphicObjectsCreated)
		{
			m_OuterBorderBrush = new SolidBrush(ColorTable.OuterBorderColor);
			m_InnerBorderBrush = new SolidBrush(ColorTable.InnerBorderColor);
			CreateGripperBitmap();
			m_ButtonBorderPen = new Pen(ColorTable.ButtonBorderColor);
			m_ButtonImagePen = new Pen(ColorTable.ButtonImageColor);
			m_PushedButtonImagePen = new Pen(ColorTable.PushedButtonImageColor);
			Rectangle rectangle = ((Layout.Table.Buttons.Count > 0) ? Layout.GetButtonBounds(0) : Rectangle.Empty);
			if (rectangle != Rectangle.Empty)
			{
				m_ActiveButtonBrush = new LinearGradientBrush(rectangle, ColorTable.ActiveButtonTopColor, ColorTable.ActiveButtonBottomColor, LinearGradientMode.Vertical);
				m_PushedButtonBrush = new LinearGradientBrush(rectangle, ColorTable.PushedButtonTopColor, ColorTable.PushedButtonBottomColor, LinearGradientMode.Vertical);
			}
			m_TextBrush = new SolidBrush(ColorTable.TextColor);
			m_SplitterBrush = new SolidBrush(ColorTable.CaptionTopColor);
			m_GraphicObjectsCreated = true;
			CreateCaptionBrushes(recreate);
		}
	}

	protected void CreateGripperBitmap()
	{
		m_GripperBitmap = new Bitmap(4, 4);
		m_GripperBitmap.MakeTransparent();
		m_GripperBitmap.SetPixel(0, 0, ColorTable.GripperForegroundColor);
		m_GripperBitmap.SetPixel(0, 1, ColorTable.GripperForegroundColor);
		m_GripperBitmap.SetPixel(1, 0, ColorTable.GripperForegroundColor);
		m_GripperBitmap.SetPixel(1, 1, ColorTable.GripperForegroundColor);
		m_GripperBitmap.SetPixel(1, 2, ColorTable.GripperBackgroundColor);
		m_GripperBitmap.SetPixel(2, 1, ColorTable.GripperBackgroundColor);
		m_GripperBitmap.SetPixel(2, 2, ColorTable.GripperBackgroundColor);
	}

	protected override void DisposeBrushes()
	{
		if (m_ActiveButtonBrush != null)
		{
			m_ActiveButtonBrush.Dispose();
		}
		if (m_InnerBorderBrush != null)
		{
			m_InnerBorderBrush.Dispose();
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
		if (m_GripperBitmap != null)
		{
			m_GripperBitmap.Dispose();
		}
		m_ActiveButtonBrush = null;
		m_OuterBorderBrush = null;
		m_PushedButtonBrush = null;
		m_SplitterBrush = null;
		m_TextBrush = null;
		m_ButtonImagePen = null;
		m_SplitterBrush = null;
		DisposeCaptionBrushes();
		m_GraphicObjectsCreated = false;
	}

	protected override void CreateCaptionBrushes(bool recreate)
	{
		if (Layout.CaptionBounds.Width != 0 && Layout.CaptionBounds.Height != 0 && (m_prevCaptionRect.Location != Layout.CaptionBounds.Location || m_prevCaptionRect.Height != Layout.CaptionBounds.Height || recreate))
		{
			m_CaptionBrush = new LinearGradientBrush(Layout.CaptionBounds, ColorTable.CaptionTopColor, ColorTable.CaptionBottomColor, LinearGradientMode.Vertical);
			m_ActiveCaptionBrush = new LinearGradientBrush(Layout.CaptionBounds, ColorTable.ActiveCaptionTopColor, ColorTable.ActiveCaptionBottomColor, LinearGradientMode.Vertical);
			m_prevCaptionRect = Layout.CaptionBounds;
		}
	}

	protected override void DisposeCaptionBrushes()
	{
		if (m_ActiveCaptionBrush != null)
		{
			m_ActiveCaptionBrush.Dispose();
		}
		if (m_CaptionBrush != null)
		{
			m_CaptionBrush.Dispose();
		}
	}
}
