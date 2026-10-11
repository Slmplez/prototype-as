using System.Drawing;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
public class DragDockInfo
{
	private DockPreference m_DockPreference;

	private DockingStyle m_DockingStyle;

	private Rectangle m_DockArea;

	private int m_Priority;

	private DockControllerBase m_Controller;

	public DockPreference DockPreference
	{
		get
		{
			return m_DockPreference;
		}
		set
		{
			m_DockPreference = value;
		}
	}

	public DockingStyle DockingStyle
	{
		get
		{
			return m_DockingStyle;
		}
		set
		{
			m_DockingStyle = value;
		}
	}

	public Rectangle DockArea
	{
		get
		{
			return m_DockArea;
		}
		set
		{
			m_DockArea = value;
		}
	}

	public int Priority
	{
		get
		{
			return m_Priority;
		}
		set
		{
			m_Priority = value;
		}
	}

	public DockControllerBase Controller
	{
		get
		{
			return m_Controller;
		}
		set
		{
			m_Controller = value;
		}
	}
}
