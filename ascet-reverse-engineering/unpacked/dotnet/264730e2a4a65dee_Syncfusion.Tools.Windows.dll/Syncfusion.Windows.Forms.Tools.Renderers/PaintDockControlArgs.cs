using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools.Renderers;

public class PaintDockControlArgs
{
	private Caption m_Caption;

	private CaptionButtonOptionsTable m_Table;

	private bool m_PaintBorders;

	private bool m_Floating;

	private int m_CaptionImageIndex;

	private ProvideGraphicsItemsEventArgs m_pgargs;

	private ImageList m_ImageList;

	private bool m_DesignMode;

	public Caption Caption
	{
		get
		{
			return m_Caption;
		}
		set
		{
			m_Caption = value;
		}
	}

	public bool PaintBorders
	{
		get
		{
			return m_PaintBorders;
		}
		set
		{
			m_PaintBorders = value;
		}
	}

	public bool Floating
	{
		get
		{
			return m_Floating;
		}
		set
		{
			m_Floating = value;
		}
	}

	public int CaptionImageIndex
	{
		get
		{
			return m_CaptionImageIndex;
		}
		set
		{
			m_CaptionImageIndex = value;
		}
	}

	public ProvideGraphicsItemsEventArgs ProvideGraphicsItemsArgs
	{
		get
		{
			return m_pgargs;
		}
		set
		{
			m_pgargs = value;
		}
	}

	public CaptionButtonOptionsTable Table => m_Table;

	public ImageList ImageList => m_ImageList;

	public bool DesignMode
	{
		get
		{
			return m_DesignMode;
		}
		set
		{
			if (m_DesignMode != value)
			{
				m_DesignMode = value;
			}
		}
	}

	public PaintDockControlArgs()
	{
		m_Caption = new Caption();
		m_PaintBorders = true;
		m_Floating = false;
		m_CaptionImageIndex = -1;
		m_pgargs = null;
		m_Table = null;
		m_ImageList = null;
	}

	public PaintDockControlArgs(Caption caption, CaptionButtonOptionsTable table, bool bPaintBorders, bool bFloating, int captionImageIndex, ImageList imageList)
	{
		m_Caption = caption;
		m_Table = table;
		m_PaintBorders = bPaintBorders;
		m_Floating = bFloating;
		m_CaptionImageIndex = captionImageIndex;
		m_pgargs = null;
		m_ImageList = imageList;
	}

	public PaintDockControlArgs(Caption caption, CaptionButtonOptionsTable table, bool bPaintBorders, bool bFloating, int captionImageIndex, ProvideGraphicsItemsEventArgs pgargs, ImageList imageList)
	{
		m_Caption = caption;
		m_Table = table;
		m_PaintBorders = bPaintBorders;
		m_Floating = bFloating;
		m_CaptionImageIndex = captionImageIndex;
		m_pgargs = pgargs;
		m_ImageList = imageList;
	}
}
