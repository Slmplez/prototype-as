using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
[DesignTimeVisible(false)]
[ToolboxItem(false)]
public class ToolTipForm : Form
{
	internal class ParentFormSubClass : NativeWindow
	{
		public bool bCatchMessage;

		protected override void WndProc(ref Message m)
		{
			if (m.Msg == 134 && bCatchMessage)
			{
				m.Result = IntPtr.Zero;
			}
			else
			{
				base.WndProc(ref m);
			}
		}
	}

	private bool m_bOnloadCalled;

	private bool m_bVisible;

	private ParentFormSubClass m_parentSubClass = new ParentFormSubClass();

	private GroupView ctrlHost;

	private bool m_bInactive = true;

	public new bool Visible
	{
		get
		{
			return m_bVisible;
		}
		set
		{
			if (m_bInactive)
			{
				SetVisibleCore(value);
				return;
			}
			base.SetVisibleCore(value);
			m_bVisible = value;
		}
	}

	public ToolTipForm(GroupView ctrl)
	{
		ctrlHost = ctrl;
		SetStyle(ControlStyles.Selectable, value: false);
		base.TabStop = false;
		BackColor = ctrl.BackColor;
		base.FormBorderStyle = FormBorderStyle.None;
		base.MaximizeBox = false;
		base.MinimizeBox = false;
		base.ShowInTaskbar = false;
		base.Owner = base.ParentForm;
		Visible = false;
	}

	protected override void WndProc(ref Message m)
	{
		if (m.Msg == 33 && m_bInactive)
		{
			m.Result = (IntPtr)3;
		}
		else
		{
			base.WndProc(ref m);
		}
	}

	protected override void OnClosed(EventArgs e)
	{
		base.OnClosed(e);
		if (IntPtr.Zero != m_parentSubClass.Handle)
		{
			m_parentSubClass.bCatchMessage = false;
		}
		m_bVisible = false;
	}

	protected override void SetVisibleCore(bool value)
	{
		if (m_bVisible == value)
		{
			return;
		}
		if (value)
		{
			if (!m_bOnloadCalled)
			{
				OnLoad(EventArgs.Empty);
				m_bOnloadCalled = true;
			}
			if (ctrlHost.TopLevelControl != null)
			{
				if (IntPtr.Zero == m_parentSubClass.Handle)
				{
					m_parentSubClass.AssignHandle(ctrlHost.TopLevelControl.Handle);
				}
				m_parentSubClass.bCatchMessage = true;
			}
		}
		else if (IntPtr.Zero != m_parentSubClass.Handle)
		{
			m_parentSubClass.bCatchMessage = false;
		}
		if ((base.IsHandleCreated && base.Handle != IntPtr.Zero) || value)
		{
			NativeMethods.ShowWindow(base.Handle, value ? 8 : 0);
		}
		if (m_bVisible != value)
		{
			OnVisibleChanged(EventArgs.Empty);
			if (base.Parent != null)
			{
				base.Parent.PerformLayout(this, "Visible");
			}
		}
		m_bVisible = value;
	}

	protected override void OnMouseDown(MouseEventArgs e)
	{
		base.OnMouseDown(e);
		Visible = false;
		Point toolTipLastMouseDownedPoint = ctrlHost.PointToClient(PointToScreen(new Point(e.X, e.Y)));
		if (e.Button == MouseButtons.Left)
		{
			NativeMethods.SendMessage(ctrlHost.Handle, 513, (IntPtr)1, (IntPtr)NativeMethods.MAKELPARAM(toolTipLastMouseDownedPoint.X, toolTipLastMouseDownedPoint.Y));
		}
		else if (e.Button == MouseButtons.Right)
		{
			NativeMethods.SendMessage(ctrlHost.Handle, 516, (IntPtr)2, (IntPtr)NativeMethods.MAKELPARAM(toolTipLastMouseDownedPoint.X, toolTipLastMouseDownedPoint.Y));
		}
		ctrlHost.ToolTipLastMouseDownedTime = DateTime.Now;
		ctrlHost.ToolTipMouseButtonsDowned = e.Button;
		ctrlHost.ToolTipLastMouseDownedPoint = toolTipLastMouseDownedPoint;
	}

	protected override void OnMouseUp(MouseEventArgs e)
	{
		base.OnMouseUp(e);
		Point point = ctrlHost.PointToClient(PointToScreen(new Point(e.X, e.Y)));
		if (e.Button == MouseButtons.Left)
		{
			NativeMethods.SendMessage(ctrlHost.Handle, 514, (IntPtr)1, (IntPtr)NativeMethods.MAKELPARAM(point.X, point.Y));
		}
		else if (e.Button == MouseButtons.Right)
		{
			NativeMethods.SendMessage(ctrlHost.Handle, 517, (IntPtr)2, (IntPtr)NativeMethods.MAKELPARAM(point.X, point.Y));
		}
	}

	protected override void OnMouseMove(MouseEventArgs e)
	{
		base.OnMouseMove(e);
		Point pt = PointToScreen(new Point(e.X, e.Y));
		if (!ctrlHost.RectangleToScreen(ctrlHost.ClientRectangle).Contains(pt))
		{
			Visible = false;
			ctrlHost.nHighlightedItem = -1;
		}
	}

	protected override void OnMouseLeave(EventArgs e)
	{
		base.OnMouseLeave(e);
		if (!RectangleToScreen(base.ClientRectangle).Contains(Cursor.Position))
		{
			Visible = false;
			ctrlHost.nHighlightedItem = -1;
		}
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		base.OnPaint(e);
		if (ctrlHost != null)
		{
			ctrlHost.DrawItemHighlight(e.Graphics, ctrlHost.nHighlightedItem, new Rectangle(0, 0, base.Width - 1, base.Height - 1), GroupView.ItemState.Highlight);
		}
	}
}
