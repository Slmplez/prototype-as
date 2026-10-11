using System;
using System.ComponentModel;
using System.Drawing;
using System.Security.Permissions;
using System.Windows.Forms;
using Syncfusion.Diagnostics;

namespace Syncfusion.Windows.Forms;

[ToolboxItem(false)]
public class ButtonBar : Control, IControlToolTipProvider, ICancelModeProvider, ISupportUpdating
{
	private InternalButtonBar bar;

	private int updateCount;

	private bool updatePending;

	internal ControlToolTip toolTipProvider;

	private bool showToolTips;

	internal bool shouldPaintButtonBar = true;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool Updating => updateCount > 0;

	bool ISupportUpdating.Updating => Updating;

	protected override Size DefaultSize => new Size(100, 23);

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public InternalButtonBar ButtonBarChild
	{
		get
		{
			if (bar == null)
			{
				bar = OnCreateButtonBarChild();
				bar.Dirty = true;
				bar.RepeatClickDelay = 200;
				bar.MinRepeatClickDelay = 20;
			}
			return bar;
		}
		set
		{
			if (bar != value)
			{
				bar = value;
				bar.Dirty = true;
				PerformLayout();
			}
		}
	}

	[Description("Indicates whether ToolTips are being shown for tabs that have ToolTips set on them.")]
	[DefaultValue(false)]
	public bool ShowToolTips
	{
		get
		{
			return showToolTips;
		}
		set
		{
			if (showToolTips != value)
			{
				showToolTips = value;
				if (!value && toolTipProvider != null)
				{
					toolTipProvider.Destroy();
					toolTipProvider = null;
				}
				PerformLayout();
			}
		}
	}

	internal ControlToolTip ToolTipProvider => toolTipProvider;

	[Description("Indicates if arrow buttons should be drawn flat or raised.")]
	[DefaultValue(ButtonLook.Normal)]
	public ButtonLook ButtonLook
	{
		get
		{
			if (!ButtonBarChild.FlatLook)
			{
				return ButtonLook.Normal;
			}
			return ButtonLook.Flat;
		}
		set
		{
			if (value != ButtonLook)
			{
				ButtonBarChild.FlatLook = value == ButtonLook.Flat;
				ButtonBarChild.Dirty = true;
				Refresh();
				OnButtonLookChanged(EventArgs.Empty);
			}
		}
	}

	[Description("Occurs when a WM_CANCELMODE is received.")]
	public event EventHandler CancelMode;

	[Description("Occurs when ButtonLook is changed.")]
	public event EventHandler ButtonLookChanged;

	[Description("Occurs before the Control.MouseDown event is raised.")]
	public event MouseEventHandler ButtonBarMouseDown;

	protected virtual void OnButtonBarMouseDown(MouseEventArgs e)
	{
		if (this.ButtonBarMouseDown != null)
		{
			this.ButtonBarMouseDown(this, e);
		}
	}

	internal Rectangle ReverseRectangleRTL(Rectangle r)
	{
		if (RightToLeft == RightToLeft.Yes)
		{
			return new Rectangle(ButtonBarChild.Bounds.Right - r.Right, r.Top, r.Width, r.Height);
		}
		return r;
	}

	public ButtonBar()
	{
		SetStyle(ControlStyles.ResizeRedraw, value: false);
		SetStyle(ControlStyles.UserPaint | ControlStyles.AllPaintingInWmPaint | WhidbeyCompatibleControlStyles.DoubleBuffer, value: true);
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			SuspendLayout();
			if (bar != null)
			{
				bar.Dispose();
				bar = null;
			}
			if (toolTipProvider != null)
			{
				toolTipProvider.Dispose();
				toolTipProvider = null;
			}
		}
		base.Dispose(disposing);
	}

	public void BeginUpdate()
	{
		updateCount++;
	}

	public void EndUpdate()
	{
		EndUpdate(refresh: true);
	}

	public void EndUpdate(bool refresh)
	{
		if (updateCount > 0)
		{
			updateCount--;
			if (updateCount == 0 && (refresh || updatePending))
			{
				Refresh();
				updatePending = false;
			}
		}
	}

	protected override void OnMouseDown(MouseEventArgs mevent)
	{
		OnButtonBarMouseDown(mevent);
		base.OnMouseDown(mevent);
		if (toolTipProvider != null)
		{
			toolTipProvider.DeactivateToolTip();
		}
	}

	protected override void OnMouseUp(MouseEventArgs mevent)
	{
		base.OnMouseUp(mevent);
		if (toolTipProvider != null && base.IsHandleCreated)
		{
			toolTipProvider.ActivateToolTip();
		}
	}

	protected override void OnPaint(PaintEventArgs pe)
	{
		base.OnPaint(pe);
		if (shouldPaintButtonBar)
		{
			lock (this)
			{
				InternalButtonBar buttonBarChild = ButtonBarChild;
				Region clip = pe.Graphics.Clip;
				buttonBarChild.Paint(pe.Graphics);
				pe.Graphics.ExcludeClip(buttonBarChild.Bounds);
				Brush brush = new SolidBrush(BackColor);
				pe.Graphics.FillRectangle(brush, base.ClientRectangle);
				brush.Dispose();
				pe.Graphics.Clip = clip;
			}
		}
	}

	protected override void OnFontChanged(EventArgs e)
	{
		base.OnFontChanged(e);
		PerformLayout();
	}

	[SecurityPermission(SecurityAction.LinkDemand, UnmanagedCode = true)]
	protected override void WndProc(ref Message m)
	{
		switch (m.Msg)
		{
		case 15:
			if (Updating && m.HWnd == base.Handle)
			{
				updatePending = true;
				return;
			}
			break;
		case 31:
			OnCancelMode(EventArgs.Empty);
			break;
		}
		base.WndProc(ref m);
	}

	internal void NotifyCancelMode()
	{
		OnCancelMode(EventArgs.Empty);
	}

	protected virtual void OnCancelMode(EventArgs e)
	{
		if (bar != null)
		{
			bar.CancelMode();
		}
		try
		{
			if (this.CancelMode != null)
			{
				this.CancelMode(this, e);
			}
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
		}
		if (toolTipProvider != null)
		{
			toolTipProvider.ActivateToolTip();
		}
		while (updateCount > 0)
		{
			EndUpdate(refresh: false);
		}
	}

	public override void Refresh()
	{
		if (Updating || !base.IsHandleCreated)
		{
			updatePending = true;
			return;
		}
		InternalButtonBar buttonBarChild = ButtonBarChild;
		buttonBarChild.Dirty = true;
		base.Refresh();
	}

	protected override void OnLayout(LayoutEventArgs levent)
	{
		if (!base.Size.IsEmpty)
		{
			if (ToolTipProvider != null)
			{
				ResetToolTips();
			}
			base.OnLayout(levent);
			InternalButtonBar buttonBarChild = ButtonBarChild;
			Rectangle bounds = ComputeButtonBarChildBounds();
			buttonBarChild.Bounds = bounds;
			buttonBarChild.RecalcLayout(initToolTip: true);
			buttonBarChild.InvalidateIfDirty();
		}
	}

	protected virtual Rectangle ComputeButtonBarChildBounds()
	{
		return base.ClientRectangle;
	}

	protected virtual InternalButtonBar OnCreateButtonBarChild()
	{
		InternalButtonBar internalButtonBar = new InternalButtonBar(this);
		internalButtonBar.Buttons = new InternalButton[5]
		{
			new InternalButton(new Size(25, 10)),
			new InternalButton(),
			null,
			new InternalButton(),
			new InternalButton(new Size(35, 10))
		};
		internalButtonBar.Dirty = true;
		return internalButtonBar;
	}

	ControlToolTip IControlToolTipProvider.GetControlToolTip()
	{
		if (showToolTips && !base.DesignMode && toolTipProvider == null)
		{
			toolTipProvider = new ControlToolTip(this);
			toolTipProvider.CreateToolTipHandle();
		}
		return toolTipProvider;
	}

	protected override void OnHandleDestroyed(EventArgs e)
	{
		ResetToolTips();
		if (toolTipProvider != null)
		{
			toolTipProvider.Destroy();
			toolTipProvider = null;
		}
		base.OnHandleDestroyed(e);
	}

	public virtual void ResetToolTips()
	{
		if (bar != null)
		{
			bar.ResetToolTips();
		}
	}

	protected virtual void OnButtonLookChanged(EventArgs e)
	{
		if (this.ButtonLookChanged != null)
		{
			this.ButtonLookChanged(this, e);
		}
	}
}
