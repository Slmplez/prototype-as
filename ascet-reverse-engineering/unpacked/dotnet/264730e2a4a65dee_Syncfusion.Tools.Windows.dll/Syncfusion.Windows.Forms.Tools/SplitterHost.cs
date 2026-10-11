using System;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;
using Syncfusion.Drawing;
using Syncfusion.Runtime.InteropServices;
using Syncfusion.Windows.Forms.Tools.XPMenus;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
public class SplitterHost : Form, ISplitterHost
{
	private int m_iMaxDeltaPos;

	private int m_iMaxDeltaNeg;

	private TabbedMDIManager m_mdiManager;

	private Splitter splitter;

	private int m_iStartPosition = -1;

	private bool m_iHorizontalAlignment = true;

	private int delta = int.MaxValue;

	private LayoutPanel m_lpLayoutPanel;

	public Splitter Splitter => splitter;

	public bool Horizontal
	{
		get
		{
			return m_iHorizontalAlignment;
		}
		set
		{
			if (m_iHorizontalAlignment != value)
			{
				m_iHorizontalAlignment = value;
				if (m_iHorizontalAlignment)
				{
					splitter.Dock = DockStyle.Top;
					base.Height = TabbedMDIManager.SPLITTER_WIDTH;
				}
				else
				{
					splitter.Dock = DockStyle.Left;
					base.Width = TabbedMDIManager.SPLITTER_WIDTH;
				}
				delta = int.MaxValue;
			}
		}
	}

	private int Delta
	{
		set
		{
			if (delta != value)
			{
				if (delta != int.MaxValue)
				{
					DragRectDrawing.DrawDragFBRectangle(GetDragRect(delta));
				}
				delta = value;
				if (delta != int.MaxValue)
				{
					DragRectDrawing.DrawDragFBRectangle(GetDragRect(delta));
				}
			}
			if (delta == int.MaxValue)
			{
				m_iStartPosition = -1;
			}
		}
	}

	internal LayoutPanel LayoutPanel
	{
		get
		{
			return m_lpLayoutPanel;
		}
		set
		{
			if (m_lpLayoutPanel != value)
			{
				m_lpLayoutPanel = value;
			}
		}
	}

	public event SplitterHostEventHandler SplitterMoved;

	public SplitterHost(TabbedMDIManager mdiManager)
	{
		m_mdiManager = mdiManager;
		base.FormBorderStyle = FormBorderStyle.None;
		base.ControlBox = false;
		base.HelpButton = false;
		base.MaximizeBox = false;
		base.MinimizeBox = false;
		base.ShowInTaskbar = false;
		base.SizeGripStyle = SizeGripStyle.Hide;
		base.Size = new Size(TabbedMDIManager.SPLITTER_WIDTH, TabbedMDIManager.SPLITTER_WIDTH);
		splitter = new Splitter();
		splitter.Dock = DockStyle.Top;
		Splitter.Size = base.Size;
		splitter.TabIndex = 0;
		splitter.TabStop = false;
		splitter.MouseUp += Splitter_MouseUp;
		splitter.MouseDown += Splitter_MouseDown;
		splitter.MouseMove += Splitter_MouseMove;
		splitter.Paint += SplitterPaint;
		base.Controls.AddRange(new Control[1] { splitter });
		string text = "SplitterHost_1";
		while (!m_mdiManager.IsValidTabHostsName(text))
		{
			text = IDGenerator.GetNextID(text);
		}
		base.Name = text;
		splitter.Name = base.Name + "_Splitter";
	}

	public bool CancelOperation()
	{
		if (delta != int.MaxValue)
		{
			Delta = int.MaxValue;
			splitter.Enabled = false;
			splitter.Enabled = true;
			return true;
		}
		return false;
	}

	private void SplitterPaint(object sender, PaintEventArgs e)
	{
		Rectangle clientRectangle = splitter.ClientRectangle;
		if (Horizontal)
		{
			clientRectangle.X--;
			clientRectangle.Height--;
			clientRectangle.Width++;
		}
		else
		{
			clientRectangle.Y--;
			clientRectangle.Width--;
			clientRectangle.Height++;
		}
		using Pen pen = new Pen(SystemColors.ControlDark, 1f);
		e.Graphics.DrawRectangle(pen, clientRectangle);
	}

	private bool IsValidDelta(int pDelta)
	{
		if (pDelta > 0)
		{
			return pDelta < m_iMaxDeltaPos;
		}
		pDelta = -pDelta;
		return pDelta < m_iMaxDeltaNeg;
	}

	private void Splitter_MouseUp(object sender, MouseEventArgs e)
	{
		if (m_iStartPosition != -1)
		{
			int currentDelta = GetCurrentDelta(e);
			Delta = int.MaxValue;
			OnSplitterMoved(currentDelta);
		}
	}

	private void Splitter_MouseMove(object sender, MouseEventArgs e)
	{
		if (m_iStartPosition != -1)
		{
			Delta = GetCurrentDelta(e);
		}
	}

	private void Splitter_MouseDown(object sender, MouseEventArgs e)
	{
		if (m_iHorizontalAlignment)
		{
			m_iStartPosition = e.Y;
		}
		else
		{
			m_iStartPosition = e.X;
		}
		m_mdiManager.GetMaxDelta(this, ref m_iMaxDeltaPos, ref m_iMaxDeltaNeg);
	}

	private int GetCurrentDelta(MouseEventArgs e)
	{
		int num = ((!m_iHorizontalAlignment) ? (e.X - m_iStartPosition) : (e.Y - m_iStartPosition));
		if (!IsValidDelta(num))
		{
			num = ((num <= 0) ? (-m_iMaxDeltaNeg) : m_iMaxDeltaPos);
		}
		return num;
	}

	protected virtual Rectangle GetDragRect(int delta)
	{
		Rectangle clientRectangle = base.ClientRectangle;
		clientRectangle = RectangleToScreen(clientRectangle);
		if (Horizontal)
		{
			clientRectangle.Offset(0, delta);
		}
		else
		{
			clientRectangle.Offset(delta, 0);
		}
		return clientRectangle;
	}

	protected void OnSplitterMoved(int pDelta)
	{
		if (this.SplitterMoved != null)
		{
			this.SplitterMoved(this, new SplitterHostEventArgs(pDelta));
		}
	}

	protected override void WndProc(ref Message m)
	{
		if (m.Msg != 7)
		{
			if (m.Msg == 34)
			{
				Syncfusion.Runtime.InteropServices.NativeMethods.SetWindowPos(base.Handle, (IntPtr)1, 0, 0, 0, 0, 19);
			}
			else
			{
				base.WndProc(ref m);
			}
		}
	}
}
