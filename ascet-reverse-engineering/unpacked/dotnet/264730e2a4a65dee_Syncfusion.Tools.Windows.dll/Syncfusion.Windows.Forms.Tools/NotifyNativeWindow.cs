using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools;

internal class NotifyNativeWindow : NativeWindow
{
	private DockingManager m_dockingManager;

	private Control m_hostControl;

	public NotifyNativeWindow(DockingManager dockingManager, Control hostControl)
	{
		m_dockingManager = dockingManager;
		m_hostControl = hostControl;
	}

	private void ProcessLButtonDown(Message m)
	{
		if ((int)m.WParam != 513)
		{
			return;
		}
		Control mouseActivatedControl = null;
		Point point = new Point(Syncfusion.Runtime.InteropServices.NativeMethods.LOWORD(m.LParam), Syncfusion.Runtime.InteropServices.NativeMethods.HIWORD(m.LParam));
		if (m_hostControl.GetChildAtPoint(point) is DockHost dockHost)
		{
			DockHostController dockHostController = dockHost.InternalController as DockHostController;
			if (dockHostController.ParentController is DockTabController dockTabController)
			{
				Point p = m_hostControl.PointToScreen(point);
				Point mousePos = dockTabController.TabControl.PointToClient(p);
				int num = dockTabController.TabControl.HitTestTabs(mousePos);
				if (num != -1)
				{
					DockTabPage dockTabPage = dockTabController.TabControl.TabPages[num] as DockTabPage;
					mouseActivatedControl = dockTabPage.dhcClient.HostControl.Controls[0];
				}
			}
			else
			{
				mouseActivatedControl = dockHost.Controls[0];
			}
		}
		else
		{
			mouseActivatedControl = null;
		}
		m_dockingManager.mouseActivatedControl = mouseActivatedControl;
	}

	private void TryFloatingFormPaint(Message m)
	{
		if (!(Control.FromHandle(m.HWnd) is FloatingForm floatingForm))
		{
			return;
		}
		if (m_dockingManager.VisualStyle == VisualStyle.Default || m_dockingManager.VisualStyle == VisualStyle.VS2005)
		{
			if (m.Msg == 133)
			{
				base.WndProc(ref m);
			}
			if (!floatingForm.IsDefaultRendering() && floatingForm.Text == " ")
			{
				floatingForm.DrawWindowTextAndImage(ref m);
			}
		}
		else if (Syncfusion.Runtime.InteropServices.NativeMethods.IsDwmNCRenderingEnabled(floatingForm.Handle))
		{
			base.WndProc(ref m);
		}
		else
		{
			floatingForm.PaintNCArea();
		}
	}

	private void TryFloatingFormCalcSize(Message m)
	{
		if (m_dockingManager.VisualStyle != VisualStyle.Default && m_dockingManager.VisualStyle != VisualStyle.VS2005 && Control.FromHandle(m.HWnd) is FloatingForm floatingForm)
		{
			floatingForm.ProcessNCCalcSize(m);
		}
	}

	protected override void WndProc(ref Message m)
	{
		if (m.Msg == 528)
		{
			ProcessLButtonDown(m);
		}
		if (m_dockingManager.DesignMode && m.Msg == 133)
		{
			TryFloatingFormPaint(m);
			return;
		}
		base.WndProc(ref m);
		if (m_dockingManager.DesignMode && m.Msg == 131)
		{
			TryFloatingFormCalcSize(m);
		}
		if (m_dockingManager.DesignMode && m.Msg == 134)
		{
			TryFloatingFormPaint(m);
		}
	}
}
