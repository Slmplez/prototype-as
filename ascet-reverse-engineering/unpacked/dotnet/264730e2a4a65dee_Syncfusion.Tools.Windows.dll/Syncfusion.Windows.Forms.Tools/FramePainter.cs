using System.Drawing;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
public class FramePainter
{
	private IFrameBorderPainter m_Painter;

	private Brush m_Brush;

	private PainterType m_PainterType;

	private Color m_Color = Color.Silver;

	private float m_Opacity = 1f;

	public IFrameBorderPainter Painter
	{
		get
		{
			return m_Painter;
		}
		set
		{
			m_Painter = value;
			FrameBorderPainterFactory.GetPainter(this);
		}
	}

	public Brush Brush
	{
		get
		{
			return m_Brush;
		}
		set
		{
			m_Brush = value;
			FrameBorderPainterFactory.GetPainter(this);
		}
	}

	public PainterType PainterType
	{
		get
		{
			return m_PainterType;
		}
		set
		{
			m_PainterType = value;
			m_Painter = FrameBorderPainterFactory.GetPainter(this);
		}
	}

	public Color Color
	{
		get
		{
			return m_Color;
		}
		set
		{
			m_Color = value;
			FrameBorderPainterFactory.GetPainter(this);
		}
	}

	public float Opacity
	{
		get
		{
			return m_Opacity;
		}
		set
		{
			m_Opacity = value;
			FrameBorderPainterFactory.GetPainter(this);
		}
	}

	public FramePainter()
	{
		m_Painter = FrameBorderPainterFactory.GetPainter(this);
	}
}
