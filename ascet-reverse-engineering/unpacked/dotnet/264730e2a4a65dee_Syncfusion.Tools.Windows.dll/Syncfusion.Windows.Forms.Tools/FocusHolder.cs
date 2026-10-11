using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxItem(false)]
[DocumentationExclude]
public class FocusHolder : Control
{
	protected Control m_lastActive;

	protected bool m_lockFocus;

	protected Control m_hostControl;

	internal bool LockFocus
	{
		get
		{
			return m_lockFocus;
		}
		set
		{
			if (m_lockFocus != value)
			{
				m_lockFocus = value;
			}
		}
	}

	internal Control LastActiveControl
	{
		get
		{
			return m_lastActive;
		}
		set
		{
			if (m_lastActive != value)
			{
				m_lastActive = value;
			}
		}
	}

	public FocusHolder()
	{
		SetStyle(ControlStyles.Selectable, value: true);
		base.TabIndex = 0;
		base.Visible = false;
		base.Size = new Size(1, 1);
	}

	internal void Enable()
	{
		if (m_hostControl != null)
		{
			m_hostControl.Controls.Add(this);
		}
	}

	internal void Disable()
	{
		if (base.Parent != null)
		{
			m_hostControl = base.Parent;
			base.Parent.Controls.Remove(this);
		}
	}

	protected override void WndProc(ref Message m)
	{
		if (m.Msg == 8)
		{
			Control control = Control.FromHandle(m.WParam);
			if (control is DragTargetForm || m_lockFocus)
			{
				m.Result = new IntPtr(1);
				return;
			}
		}
		base.WndProc(ref m);
	}
}
