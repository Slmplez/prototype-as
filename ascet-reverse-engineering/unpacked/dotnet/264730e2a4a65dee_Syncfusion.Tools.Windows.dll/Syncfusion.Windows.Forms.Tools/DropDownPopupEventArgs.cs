using System.ComponentModel;
using System.Drawing;
using Syncfusion.Windows.Forms.Tools.XPMenus;

namespace Syncfusion.Windows.Forms.Tools;

public class DropDownPopupEventArgs : CancelEventArgs
{
	private Point m_pLocation = Point.Empty;

	private ParentBarItem m_ParentBarItem;

	public Point Location
	{
		get
		{
			return m_pLocation;
		}
		set
		{
			if (m_pLocation != value)
			{
				m_pLocation = value;
			}
		}
	}

	public int X => m_pLocation.X;

	public int Y => m_pLocation.Y;

	public ParentBarItem ParentBarItem => m_ParentBarItem;

	public DropDownPopupEventArgs(ParentBarItem parentBarItem, Point location)
	{
		m_ParentBarItem = parentBarItem;
		m_pLocation = location;
	}
}
