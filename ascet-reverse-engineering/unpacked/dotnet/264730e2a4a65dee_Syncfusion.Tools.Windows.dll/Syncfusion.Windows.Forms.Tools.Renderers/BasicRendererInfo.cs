using System;
using System.Drawing;
using Syncfusion.Drawing;
using Syncfusion.Windows.Forms.Tools.Enums;

namespace Syncfusion.Windows.Forms.Tools.Renderers;

public class BasicRendererInfo : RendererInfo
{
	private Size m_szThumbnailSize = new Size(70, 4);

	private BrushInfo m_brushExpandFill;

	private BrushInfo m_brushHotExpandFill;

	private Color m_colorExpandLine;

	private Color m_colorHotExpandLine;

	private BrushInfo m_brushGripDark;

	private BrushInfo m_brushHotGripDark;

	private BrushInfo m_brushGripLight;

	private BrushInfo m_brushHotGripLight;

	private BrushInfo m_bgHotBrush;

	private CollapsedPanel m_panelToBeCollapsed = CollapsedPanel.None;

	private CollapsedPanel m_collapsedPanel = CollapsedPanel.None;

	public Size ThumbnailSize
	{
		get
		{
			if (m_bOrientationChanged)
			{
				Size szThumbnailSize = m_szThumbnailSize;
				m_szThumbnailSize.Width = szThumbnailSize.Height;
				m_szThumbnailSize.Height = szThumbnailSize.Width;
				m_bOrientationChanged = false;
			}
			return m_szThumbnailSize;
		}
		set
		{
			if (m_szThumbnailSize != value)
			{
				m_szThumbnailSize = value;
			}
		}
	}

	public BrushInfo ExpandFill
	{
		get
		{
			return m_brushExpandFill;
		}
		set
		{
			if (m_brushExpandFill != value)
			{
				m_brushExpandFill = value;
			}
		}
	}

	public BrushInfo HotExpandFill
	{
		get
		{
			return m_brushHotExpandFill;
		}
		set
		{
			if (m_brushHotExpandFill != value)
			{
				m_brushHotExpandFill = value;
			}
		}
	}

	public Color ExpandLine
	{
		get
		{
			return m_colorExpandLine;
		}
		set
		{
			if (m_colorExpandLine != value)
			{
				m_colorExpandLine = value;
			}
		}
	}

	public Color HotExpandLine
	{
		get
		{
			return m_colorHotExpandLine;
		}
		set
		{
			if (m_colorHotExpandLine != value)
			{
				m_colorHotExpandLine = value;
			}
		}
	}

	public BrushInfo GripDark
	{
		get
		{
			return m_brushGripDark;
		}
		set
		{
			if (m_brushGripDark != value)
			{
				m_brushGripDark = value;
			}
		}
	}

	public BrushInfo HotGripDark
	{
		get
		{
			return m_brushHotGripDark;
		}
		set
		{
			if (m_brushHotGripDark != value)
			{
				m_brushHotGripDark = value;
			}
		}
	}

	public BrushInfo GripLight
	{
		get
		{
			return m_brushGripLight;
		}
		set
		{
			if (m_brushGripLight != value)
			{
				m_brushGripLight = value;
			}
		}
	}

	public BrushInfo HotGripLight
	{
		get
		{
			return m_brushHotGripLight;
		}
		set
		{
			if (m_brushHotGripLight != value)
			{
				m_brushHotGripLight = value;
			}
		}
	}

	public BrushInfo HotBackgroundColor
	{
		get
		{
			return m_bgHotBrush;
		}
		set
		{
			if (m_bgHotBrush != value)
			{
				m_bgHotBrush = value;
			}
		}
	}

	public CollapsedPanel CollapsedPanel
	{
		get
		{
			return m_collapsedPanel;
		}
		set
		{
			if (value != m_collapsedPanel)
			{
				m_collapsedPanel = value;
			}
		}
	}

	public CollapsedPanel PanelToCollapse
	{
		get
		{
			return m_panelToBeCollapsed;
		}
		set
		{
			if (value != m_panelToBeCollapsed)
			{
				m_panelToBeCollapsed = value;
			}
		}
	}

	public void ConvertSpliContainerToRendererInfo(SplitContainerAdv instance, bool isOrientation)
	{
		if (instance != null)
		{
			base.DrawState = instance.DrawState;
			base.Orientation = instance.Orientation;
			ExpandFill = instance.ExpandFill;
			HotExpandFill = instance.HotExpandFill;
			ExpandLine = instance.ExpandLine;
			HotExpandLine = instance.HotExpandLine;
			GripDark = instance.GripDark;
			HotGripDark = instance.HotGripDark;
			GripLight = instance.GripLight;
			HotGripLight = instance.HotGripLight;
			CollapsedPanel = instance.CollapsedPanel;
			PanelToCollapse = instance.PanelToBeCollapsed;
			if (isOrientation)
			{
				base.BackgroundColor = new BrushInfo((GradientStyle)Enum.Parse(typeof(GradientStyle), instance.Orientation.ToString()), instance.BackgroundColor.ForeColor, instance.BackgroundColor.BackColor);
				HotBackgroundColor = new BrushInfo((GradientStyle)Enum.Parse(typeof(GradientStyle), instance.Orientation.ToString()), instance.HotBackgroundColor.ForeColor, instance.HotBackgroundColor.BackColor);
			}
			else
			{
				base.BackgroundColor = instance.BackgroundColor;
				HotBackgroundColor = instance.HotBackgroundColor;
			}
		}
	}

	public void SetSplitContainerByInfo(SplitContainerAdv container, BasicRenderer br, bool isOrientation, bool initMode)
	{
		if (container == null)
		{
			return;
		}
		if (initMode)
		{
			SetSplitContainerByInfoWhenInitialization(container, br, isOrientation);
			return;
		}
		if (isOrientation)
		{
			container.BackgroundColor = new BrushInfo((GradientStyle)Enum.Parse(typeof(GradientStyle), container.Orientation.ToString()), m_bgBrush.ForeColor, m_bgBrush.BackColor);
			container.HotBackgroundColor = new BrushInfo((GradientStyle)Enum.Parse(typeof(GradientStyle), container.Orientation.ToString()), m_bgHotBrush.ForeColor, m_bgHotBrush.BackColor);
		}
		else
		{
			container.BackgroundColor = m_bgBrush;
			container.HotBackgroundColor = m_bgHotBrush;
		}
		container.ExpandFill = m_brushExpandFill;
		container.ExpandLine = m_colorExpandLine;
		container.GripDark = m_brushGripDark;
		container.GripLight = m_brushGripLight;
		container.HotExpandFill = m_brushHotExpandFill;
		container.HotExpandLine = m_colorHotExpandLine;
		container.HotGripDark = m_brushHotGripDark;
		container.HotGripLight = m_brushHotGripLight;
	}

	private void SetSplitContainerByInfoWhenInitialization(SplitContainerAdv container, BasicRenderer br, bool isOrientation)
	{
		if (container != null)
		{
			if (BrushInfo.Empty.Equals(container.BackgroundColor))
			{
				container.BackgroundColor = br.DefaultBackgroundColor;
			}
			if (BrushInfo.Empty.Equals(container.HotBackgroundColor))
			{
				container.HotBackgroundColor = br.DefaultHotBackgroundColor;
			}
			if (BrushInfo.Empty.Equals(container.ExpandFill))
			{
				container.ExpandFill = br.DefaultExpandFill;
			}
			if (Color.Empty.Equals(container.ExpandLine))
			{
				container.ExpandLine = br.DefaultExpandLine;
			}
			if (BrushInfo.Empty.Equals(container.GripDark))
			{
				container.GripDark = br.DefaultGripDark;
			}
			if (BrushInfo.Empty.Equals(container.GripLight))
			{
				container.GripLight = br.DefaultGripLight;
			}
			if (Color.Empty.Equals(container.HotExpandLine))
			{
				container.HotExpandLine = br.DefaultHotExpandLine;
			}
			if (BrushInfo.Empty.Equals(container.HotExpandFill))
			{
				container.HotExpandFill = br.DefaultHotExpandFill;
			}
			if (BrushInfo.Empty.Equals(container.HotGripDark))
			{
				container.HotGripDark = br.DefaultHotGripDark;
			}
			if (BrushInfo.Empty.Equals(container.HotGripLight))
			{
				container.HotGripLight = br.DefaultHotGripLight;
			}
		}
	}
}
