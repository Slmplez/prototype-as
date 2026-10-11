using System;
using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

internal abstract class ControlBarRenderer : CommandBarFloatingRenderer
{
	private ControlBar m_controlBar;

	protected ControlBar ControlBar => m_controlBar;

	public ControlBarRenderer(ControlBar controlBar)
		: base(controlBar)
	{
		if (controlBar == null)
		{
			throw new ArgumentNullException();
		}
		m_controlBar = controlBar;
	}

	protected override Rectangle GetGripperRect()
	{
		Rectangle gripperRect = ControlBar.GripperRect;
		gripperRect.Height++;
		return gripperRect;
	}

	protected override Rectangle GetTextRectangle()
	{
		return ControlBar.GetTextRectangle();
	}
}
