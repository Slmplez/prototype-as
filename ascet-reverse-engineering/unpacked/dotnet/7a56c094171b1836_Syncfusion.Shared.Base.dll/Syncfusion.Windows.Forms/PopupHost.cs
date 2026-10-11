using System;
using System.ComponentModel;
using System.Drawing;
using System.Security.Permissions;
using System.Windows.Forms;
using Syncfusion.Documentation;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms;

public class PopupHost : DropDownWindow, IIgnoreWorkingArea
{
	internal int borderGap;

	private bool needShadow;

	internal ShadowWindow shadow;

	internal IPopupControlContainer popupControlContainer;

	internal Control popupControl;

	private PopupRelativeAlignment rAlign = PopupRelativeAlignment.Default;

	private bool aboutToShow;

	private Color overlapBorderColor = Color.Empty;

	private bool m_bIgnoreWorkingArea;

	[DocumentationExclude]
	protected int BorderGap
	{
		get
		{
			return borderGap;
		}
		set
		{
			borderGap = value;
		}
	}

	[DocumentationExclude]
	protected ShadowWindow Shadow => shadow;

	[DocumentationExclude]
	protected Control PopupControl => popupControl;

	[DefaultValue(false)]
	public virtual bool NeedShadow
	{
		get
		{
			return needShadow;
		}
		set
		{
			if (needShadow != value)
			{
				needShadow = value;
				if (base.Visible && needShadow)
				{
					UtilFuncs.SetVisibleNoActivate(shadow, visible: true);
				}
				else if (!base.Visible && !needShadow)
				{
					UtilFuncs.SetVisibleNoActivate(shadow, visible: false);
				}
			}
		}
	}

	public IPopupControlContainer PopupControlContainer
	{
		get
		{
			return popupControlContainer;
		}
		set
		{
			if (this.popupControlContainer != value)
			{
				UtilFuncs.SetVisibleNoActivate(this, visible: false);
				DetachPopup();
				IPopupControlContainer popupControlContainer = this.popupControlContainer;
				this.popupControlContainer = value;
				popupControl = (Control)value;
				if (popupControlContainer != null)
				{
					popupControlContainer.PopupHost = null;
				}
				if (this.popupControlContainer != null && this.popupControlContainer.PopupHost != this)
				{
					this.popupControlContainer.PopupHost = this;
				}
				AttachPopup();
			}
		}
	}

	public PopupRelativeAlignment CurrentRAlign => rAlign;

	public Color OverlapBorderColor
	{
		get
		{
			return overlapBorderColor;
		}
		set
		{
			if (overlapBorderColor != value)
			{
				overlapBorderColor = value;
				if (value != Color.Empty)
				{
					borderGap = 2;
				}
				else
				{
					borderGap = 0;
				}
			}
		}
	}

	[DefaultValue(false)]
	public bool IgnoreWorkingArea
	{
		get
		{
			return m_bIgnoreWorkingArea;
		}
		set
		{
			if (m_bIgnoreWorkingArea != value)
			{
				m_bIgnoreWorkingArea = value;
			}
		}
	}

	public PopupHost()
	{
		SetStyle(ControlStyles.Selectable, value: false);
	}

	[DocumentationExclude]
	protected virtual void CreateShadow()
	{
		shadow = new ShadowWindow();
	}

	[SecurityPermission(SecurityAction.LinkDemand, UnmanagedCode = true)]
	protected override void WndProc(ref Message m)
	{
		if (m.Msg == 33)
		{
			m.Result = (IntPtr)3;
			return;
		}
		if (m.Msg == 16)
		{
			if (!base.ControlBox)
			{
				return;
			}
			if (popupControlContainer != null)
			{
				popupControlContainer.HidePopup(PopupCloseType.Done);
				return;
			}
		}
		if (m.Msg == 6)
		{
			_ = (int)m.WParam;
		}
		base.WndProc(ref m);
	}

	[DocumentationExclude]
	protected virtual void DetachPopup()
	{
		if (popupControl != null)
		{
			base.Controls.Remove(popupControl);
			popupControl = null;
		}
		popupControlContainer = null;
	}

	[DocumentationExclude]
	protected virtual void AttachPopup()
	{
		if (popupControl != null)
		{
			base.Controls.Add(popupControl);
		}
	}

	[DocumentationExclude]
	protected virtual void ComputeMySize()
	{
		if (popupControl != null)
		{
			Size size = popupControl.Size;
			size += new Size(borderGap, borderGap);
			if (base.ClientSize != size)
			{
				base.ClientSize = size;
			}
		}
	}

	public new void SuspendLayout()
	{
		base.SuspendLayout();
		if (NeedShadow && shadow != null)
		{
			shadow.SuspendLayout();
		}
	}

	public new void ResumeLayout(bool preformLayout)
	{
		base.ResumeLayout(preformLayout);
		if (NeedShadow && shadow != null)
		{
			shadow.ResumeLayout(preformLayout);
		}
	}

	[DocumentationExclude]
	protected virtual void ComputeControlLocation()
	{
		popupControl.Location = new Point(borderGap / 2, borderGap / 2);
	}

	[DocumentationExclude]
	protected void AdjustLocationForAlignment(ref Point loc, PopupRelativeAlignment align)
	{
		switch (align)
		{
		case PopupRelativeAlignment.BottomRight:
		case PopupRelativeAlignment.LeftTop:
			loc -= new Size(base.Width - 1, 0);
			break;
		case PopupRelativeAlignment.TopLeft:
		case PopupRelativeAlignment.RightBottom:
			loc -= new Size(0, base.Height - 1);
			break;
		case PopupRelativeAlignment.TopRight:
		case PopupRelativeAlignment.LeftBottom:
			loc -= new Size(base.Width - 1, base.Height - 1);
			break;
		case PopupRelativeAlignment.RightTop:
		case PopupRelativeAlignment.BottomLeft:
			break;
		}
	}

	[DocumentationExclude]
	protected virtual void ComputeMyLocation()
	{
		Point empty = Point.Empty;
		Point point = new Point(0, 0);
		PopupRelativeAlignment newRelativeAlignment = PopupRelativeAlignment.Default;
		int num = 0;
		while (++num <= 10)
		{
			empty = popupControlContainer.GetPreferredLocation(newRelativeAlignment, out newRelativeAlignment);
			AdjustLocationForAlignment(ref empty, newRelativeAlignment);
			point = GetAdjustedLocation(empty);
			if (newRelativeAlignment == PopupRelativeAlignment.Default || point == empty)
			{
				break;
			}
		}
		rAlign = newRelativeAlignment;
		if (base.Location != point)
		{
			base.Location = point;
		}
	}

	[DocumentationExclude]
	protected virtual Point GetAdjustedLocation(Point loc)
	{
		bool flag = NativeMethods.GetSystemMetrics(80) > 1;
		Rectangle empty = Rectangle.Empty;
		empty = (IgnoreWorkingArea ? Screen.GetBounds(loc) : ((!flag) ? SystemInformation.WorkingArea : Screen.GetWorkingArea(loc)));
		if (loc.Y + base.Height >= empty.Bottom)
		{
			loc.Y = empty.Bottom - base.Height;
		}
		if (loc.Y < empty.Top)
		{
			loc.Y = empty.Top;
		}
		if (loc.X + base.Width >= empty.Right)
		{
			loc.X = empty.Right - base.Width;
		}
		if (loc.X < empty.Left)
		{
			loc.X = empty.Left;
		}
		return loc;
	}

	protected override void OnVisibleChanged(EventArgs e)
	{
		base.OnVisibleChanged(e);
		if (base.Visible)
		{
			if (NeedShadow && shadow != null)
			{
				UtilFuncs.SetVisibleNoActivate(shadow, visible: true);
			}
		}
		else if (shadow != null)
		{
			UtilFuncs.SetVisibleNoActivate(shadow, visible: false);
		}
	}

	public bool IsShowing()
	{
		if (!base.Visible)
		{
			return aboutToShow;
		}
		return true;
	}

	[DocumentationExclude]
	protected override void OnLocationChanged(EventArgs e)
	{
		ComputeShadowLocation();
		base.OnLocationChanged(e);
	}

	private void ComputeShadowLocation()
	{
		if (NeedShadow && shadow != null)
		{
			Point location = base.Location;
			int shadowWidth = ShadowWindow.ShadowWidth;
			location.Offset(GetIsMirrored() ? (-shadowWidth) : shadowWidth, ShadowWindow.ShadowHeight);
			shadow.Location = location;
		}
	}

	protected override void OnSizeChanged(EventArgs e)
	{
		ComputeShadowSize();
		base.OnSizeChanged(e);
	}

	private void ComputeShadowSize()
	{
		if (NeedShadow && shadow != null)
		{
			shadow.Size = base.Size;
		}
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		base.OnPaint(e);
		if (!(OverlapBorderColor != Color.Empty) || base.FormBorderStyle != FormBorderStyle.None)
		{
			return;
		}
		Rectangle clientRectangle = base.ClientRectangle;
		clientRectangle.Width--;
		clientRectangle.Height--;
		e.Graphics.DrawRectangle(new Pen(OverlapBorderColor), clientRectangle);
		if (PopupControlContainer.PopupParent != null)
		{
			Point[] borderOverlapCue = PopupControlContainer.PopupParent.GetBorderOverlapCue(CurrentRAlign);
			if (borderOverlapCue != null)
			{
				Point pt = PointToClient(borderOverlapCue[0]);
				Point pt2 = PointToClient(borderOverlapCue[1]);
				e.Graphics.DrawLine(SystemPens.Control, pt, pt2);
			}
		}
	}

	public virtual void ShowPopup()
	{
		if (popupControl != null && !IsShowing())
		{
			aboutToShow = true;
			PumpPaintMessages();
			shadow = null;
			if (NeedShadow && shadow == null)
			{
				CreateShadow();
			}
			ComputeLayout();
			UpdateVisibility();
			aboutToShow = false;
		}
	}

	protected void UpdateVisibility()
	{
		if (NeedShadow && shadow != null)
		{
			UtilFuncs.SetVisibleNoActivate(shadow, visible: true);
		}
		if (!base.Visible)
		{
			UtilFuncs.SetVisibleNoActivate(this, visible: true);
		}
		else
		{
			Invalidate(invalidateChildren: false);
		}
		if (!popupControl.Visible)
		{
			UtilFuncs.SetVisibleNoActivate(popupControl, visible: true);
		}
		UtilFuncs.ShowWindowTopMost(base.Handle, base.Location, base.Size);
	}

	protected internal void ComputeLayout()
	{
		SuspendLayout();
		ComputeMySize();
		ComputeControlLocation();
		ComputeMyLocation();
		ResumeLayout(preformLayout: true);
		if (NeedShadow)
		{
			ComputeShadowLocation();
			ComputeShadowSize();
		}
	}

	public virtual void HidePopup()
	{
		base.Visible = false;
		base.Location = new Point(-1000, -1000);
		ComputeMySize();
		PumpPaintMessages();
		if (shadow != null)
		{
			shadow.Dispose();
			shadow = null;
		}
	}

	private void PumpPaintMessages()
	{
		NativeMethods.MSG msg = default(NativeMethods.MSG);
		int num = 0;
		while (num < 25 && NativeMethods.PeekMessage(ref msg, IntPtr.Zero, 15, 15, 1))
		{
			num++;
			NativeMethods.TranslateMessage(ref msg);
			NativeMethods.DispatchMessage(ref msg);
		}
	}

	[DocumentationExclude]
	protected override void OnDeactivate(EventArgs e)
	{
		base.OnDeactivate(e);
		IntPtr focus = NativeMethods.GetFocus();
		if (focus != IntPtr.Zero)
		{
			Control control = Control.FromHandle(focus);
			if (control == null)
			{
				control = PopupUtils.GetADotNetParentControl(focus);
			}
			if (popupControlContainer != null && (control == null || !popupControlContainer.IsRelatedControl(control, askPopupParent: true)))
			{
				popupControlContainer.HidePopup(PopupCloseType.Deactivated);
			}
		}
	}

	[DocumentationExclude]
	protected bool GetIsMirrored()
	{
		return RightToLeft.Yes == RightToLeft;
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			if (shadow != null)
			{
				shadow.Dispose();
				shadow = null;
			}
			popupControlContainer = null;
			popupControl = null;
		}
		base.Dispose(disposing);
	}

	protected override void OnHandleCreated(EventArgs e)
	{
		base.OnHandleCreated(e);
		Init();
	}

	private void Init()
	{
		if (shadow == null)
		{
			CreateShadow();
			UtilFuncs.SetVisibleNoActivate(shadow, needShadow);
			if (!base.Visible && !needShadow)
			{
				UtilFuncs.SetVisibleNoActivate(shadow, visible: false);
			}
		}
	}
}
