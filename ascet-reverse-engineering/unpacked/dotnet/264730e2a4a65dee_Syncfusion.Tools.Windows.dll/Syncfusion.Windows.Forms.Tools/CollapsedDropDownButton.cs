using System;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Tools.Win32API;

namespace Syncfusion.Windows.Forms.Tools;

internal class CollapsedDropDownButton : CustomDropDownButtonBase
{
	private const int DEF_HOR_PADDINGS = 2;

	private const int DEF_VER_PADDINGS = 6;

	private const SetWindowPosFlags m_swpFlags = SetWindowPosFlags.SWP_NOSIZE | SetWindowPosFlags.SWP_NOMOVE | SetWindowPosFlags.SWP_NOZORDER | SetWindowPosFlags.SWP_NOACTIVATE | SetWindowPosFlags.SWP_FRAMECHANGED;

	private ToolStripEx m_toolStrip;

	internal override ToolStripEx ToolStrip => base.Owner as ToolStripEx;

	internal CollapsedDropDownButton(ToolStripEx toolStrip)
	{
		Padding = new Padding(2, 6, 2, 6);
		base.DropDownDirection = ToolStripDropDownDirection.BelowRight;
		m_toolStrip = toolStrip;
		if (m_toolStrip != null)
		{
			m_toolStrip.RendererChanged += OnToolStripRendererChanged;
			OnToolStripRendererChanged(m_toolStrip, EventArgs.Empty);
		}
	}

	protected override void Dispose(bool disposing)
	{
		if (m_toolStrip != null)
		{
			m_toolStrip.RendererChanged -= OnToolStripRendererChanged;
			m_toolStrip = null;
		}
		base.Dispose(disposing);
	}

	protected override void OnDropDownOpened(EventArgs e)
	{
		base.OnDropDownOpened(e);
		ToolStripEx toolStrip = ToolStrip;
		if (toolStrip != null && toolStrip.Parent is RibbonPanel ribbonPanel && ribbonPanel.GetTabGroup() != null)
		{
			UpdateFrame();
		}
	}

	private void UpdateFrame()
	{
		if (ToolStrip != null && ToolStrip.IsHandleCreated)
		{
			WindowsAPI.SetWindowPos(ToolStrip.Handle, IntPtr.Zero, 0, 0, 0, 0, SetWindowPosFlags.SWP_NOSIZE | SetWindowPosFlags.SWP_NOMOVE | SetWindowPosFlags.SWP_NOZORDER | SetWindowPosFlags.SWP_NOACTIVATE | SetWindowPosFlags.SWP_FRAMECHANGED);
		}
	}

	private void OnToolStripRendererChanged(object sender, EventArgs e)
	{
		if (sender is ToolStripEx toolStripEx)
		{
			if (toolStripEx.RenderMode == ToolStripRenderMode.ManagerRenderMode)
			{
				base.DropDown.Renderer = null;
			}
			else
			{
				base.DropDown.Renderer = toolStripEx.Renderer;
			}
		}
	}
}
