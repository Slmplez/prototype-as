using System;
using System.ComponentModel;
using System.Drawing;
using System.Security.Permissions;
using System.Windows.Forms;
using Syncfusion.Documentation;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms;

[ToolboxItem(false)]
[DocumentationExclude]
public class DragWindow : Form
{
	internal const int SWP_NOSIZE = 1;

	internal const int SWP_NOMOVE = 2;

	internal const int SWP_NOZORDER = 4;

	internal const int SWP_NOACTIVATE = 16;

	internal const int SWP_SHOWWINDOW = 64;

	internal const int SWP_HIDEWINDOW = 128;

	internal const int SWP_DRAWFRAME = 32;

	private Bitmap dragBitmap;

	private bool isDragging;

	private Point origin = new Point(-30000, -30000);

	private Cursor overrideCursor;

	private IDragDispatcher m_parent;

	private bool bShiftCalculated;

	private Point keepOrigin = Point.Empty;

	public Bitmap DragBitmap
	{
		get
		{
			return dragBitmap;
		}
		set
		{
			BackgroundImage = value;
			if (value == null)
			{
				StopDrag();
			}
			else
			{
				Size size = value.Size;
				origin = new Point(size.Width / 2, size.Height / 2);
				if (Environment.Version.Major >= 2)
				{
					DestroyHandle();
				}
				MinimumSize = value.Size;
				base.Size = value.Size;
			}
			dragBitmap = value;
		}
	}

	protected override CreateParams CreateParams
	{
		[SecurityPermission(SecurityAction.LinkDemand, UnmanagedCode = true)]
		get
		{
			CreateParams createParams = base.CreateParams;
			createParams.ExStyle |= 128;
			createParams.Style |= int.MinValue;
			return createParams;
		}
	}

	public Cursor WindowCursor
	{
		get
		{
			return base.Cursor;
		}
		set
		{
			if (overrideCursor != value)
			{
				overrideCursor = value;
				if (!base.DesignMode && base.IsHandleCreated)
				{
					NativeMethods.SendMessage(base.Handle, 32, base.Handle, 1);
				}
			}
		}
	}

	public IDragDispatcher DragParent
	{
		get
		{
			return m_parent;
		}
		set
		{
			if (m_parent != value)
			{
				m_parent = value;
				AllowDrop = value != null;
			}
		}
	}

	public DragWindow()
	{
		SetStyle(ControlStyles.SupportsTransparentBackColor, value: true);
		InitializeComponent();
	}

	public void ShowWindowTopMost()
	{
		NativeMethods.SetWindowPos(base.Handle, (IntPtr)(-1), 0, 0, 0, 0, 83);
	}

	private void InitializeComponent()
	{
		this.dragBitmap = null;
		base.Size = new System.Drawing.Size(0, 0);
		this.MinimumSize = new System.Drawing.Size(0, 0);
		base.Location = new System.Drawing.Point(-10000, -10000);
		base.StartPosition = System.Windows.Forms.FormStartPosition.Manual;
		base.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
		base.Enabled = false;
		base.ShowInTaskbar = false;
		base.TopLevel = true;
		this.BackColor = System.Drawing.Color.Red;
		base.TransparencyKey = System.Drawing.Color.Red;
		base.Opacity = 0.6899999976158142;
		this.ShowWindowTopMost();
	}

	[SecurityPermission(SecurityAction.LinkDemand, UnmanagedCode = true)]
	protected override void WndProc(ref Message msg)
	{
		int msg2 = msg.Msg;
		if (msg2 == 32)
		{
			WmSetCursor(ref msg);
			return;
		}
		try
		{
			base.WndProc(ref msg);
		}
		catch (Win32Exception)
		{
		}
	}

	protected override void OnPaintBackground(PaintEventArgs pevent)
	{
		pevent.Graphics.FillRectangle(new SolidBrush(base.TransparencyKey), pevent.ClipRectangle);
		base.OnPaintBackground(pevent);
	}

	private void WmSetCursor(ref Message m)
	{
		if (m.WParam == base.Handle && ((int)m.LParam & 0xFFFF) == 1)
		{
			OnSetCursor(ref m);
		}
		else
		{
			DefWndProc(ref m);
		}
	}

	[DocumentationExclude]
	protected virtual void OnSetCursor(ref Message m)
	{
		if (overrideCursor != null)
		{
			Cursor.Current = overrideCursor;
		}
		else
		{
			Cursor.Current = Cursor;
		}
	}

	private void _Move(Point p)
	{
		Point point = (bShiftCalculated ? keepOrigin : origin);
		p.Offset(-point.X, -point.Y);
		base.Location = p;
		if (BackgroundImage != null)
		{
			base.Size = BackgroundImage.Size;
		}
		else
		{
			base.Size = MinimumSize;
		}
	}

	public bool StartDrag(Point p)
	{
		if (BackgroundImage == null)
		{
			return false;
		}
		if (!base.IsHandleCreated)
		{
			CreateHandle();
		}
		isDragging = true;
		_Move(p);
		ShowWindowTopMost();
		return true;
	}

	public bool MoveTo(Point p)
	{
		if (!isDragging)
		{
			return false;
		}
		_Move(p);
		return true;
	}

	public bool StopDrag()
	{
		if (!isDragging)
		{
			return false;
		}
		BackgroundImage = null;
		isDragging = false;
		bShiftCalculated = false;
		SuspendLayout();
		base.Visible = false;
		ResumeLayout();
		if (base.IsHandleCreated)
		{
			DestroyHandle();
		}
		return true;
	}

	public bool SetOrigin(Point pt)
	{
		bool result = false;
		if (!bShiftCalculated)
		{
			keepOrigin = pt;
			bShiftCalculated = true;
			result = true;
		}
		return result;
	}

	protected override void OnDragOver(DragEventArgs drgevent)
	{
		if (DragParent != null)
		{
			DragParent.DispatchDragOver(drgevent);
		}
	}

	protected override void OnDragDrop(DragEventArgs drgevent)
	{
		if (DragParent != null)
		{
			DragParent.DispatchOnDragDrop(drgevent);
		}
	}

	protected override void OnDragEnter(DragEventArgs drgevent)
	{
		if (DragParent != null)
		{
			DragParent.DispatchOnDragEnter(drgevent);
		}
	}

	protected override void OnDragLeave(EventArgs e)
	{
		if (DragParent != null)
		{
			DragParent.DispatchOnDragLeave(e);
		}
	}

	protected override void OnQueryContinueDrag(QueryContinueDragEventArgs qcdevent)
	{
		if (DragParent != null)
		{
			DragParent.DispatchOnQueryContinueDrag(qcdevent);
		}
	}

	protected override void OnGiveFeedback(GiveFeedbackEventArgs gfbevent)
	{
		if (DragParent != null)
		{
			DragParent.DispatchOnGiveFeedback(gfbevent);
		}
	}

	public new DragDropEffects DoDragDrop(object data, DragDropEffects allowedEffects)
	{
		DragDropEffects result = DragDropEffects.None;
		if (DragParent != null)
		{
			result = DragParent.DispatchDoDragDrop(data, allowedEffects);
		}
		return result;
	}
}
