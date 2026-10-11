using System;
using System.ComponentModel;
using System.Windows.Forms;
using Syncfusion.Diagnostics;
using Syncfusion.Runtime.InteropServices;
using Syncfusion.Windows.Forms.Localization;

namespace Syncfusion.Windows.Forms;

public class ScrollBarWrapper : IDisposable, IScrollBarContainer, IScrollBar
{
	private ScrollBarAdapter scrollBar;

	private IScrollBar iScrollBar;

	private Control parent;

	private ScrollBars sbType;

	private bool wired;

	private Control savedParentParent;

	private bool locked;

	private int updateCount;

	private bool supportsThumbTrack;

	private bool supportsScrollTips;

	private bool isThumbTracking;

	private int value;

	private int minimum;

	private int maximum = 100;

	private int largeChange = 10;

	private int smallChange = 1;

	private bool enabled = true;

	private bool init;

	private RightToLeft m_rightToLeft;

	[DefaultValue(false)]
	[Browsable(true)]
	[Category("Behavior")]
	[Description("Specifies if the control should scroll\twhile the user is dragging a scrollbars\tthumb.")]
	public bool SupportsThumbTrack
	{
		get
		{
			return supportsThumbTrack;
		}
		set
		{
			if (supportsThumbTrack != value)
			{
				supportsThumbTrack = value;
				if (iScrollBar != null)
				{
					iScrollBar.SupportsThumbTrack = supportsThumbTrack;
				}
			}
		}
	}

	[DefaultValue(false)]
	[Category("Behavior")]
	[Description("Specifies if the control should show scroll tips while\tthe\tuser is\tdragging a scrollbar thumb.")]
	[Browsable(true)]
	public bool SupportsScrollTips
	{
		get
		{
			return supportsScrollTips;
		}
		set
		{
			if (supportsScrollTips != value)
			{
				supportsScrollTips = value;
				if (iScrollBar != null)
				{
					iScrollBar.SupportsScrollTips = supportsScrollTips;
				}
			}
		}
	}

	public Control InnerScrollBar
	{
		get
		{
			if (scrollBar == null)
			{
				return null;
			}
			return scrollBar.Control;
		}
		set
		{
			if (InnerScrollBar != value)
			{
				init = true;
				UnwireScrollEvent();
				scrollBar = ((value != null) ? new ScrollBarAdapter(value) : null);
				iScrollBar = value as IScrollBar;
				InitScrollBar();
				if ((parent != null && parent.Visible) || IsReflect)
				{
					WireScrollEvent();
				}
				init = false;
			}
		}
	}

	Control IScrollBarContainer.ScrollBar
	{
		get
		{
			return InnerScrollBar;
		}
		set
		{
			if (value != InnerScrollBar)
			{
				InnerScrollBar = value;
			}
		}
	}

	public bool IsReflect
	{
		get
		{
			if (!(iScrollBar is ReflectScrollBar))
			{
				if (scrollBar != null)
				{
					return scrollBar.Control is ReflectScrollBar;
				}
				return false;
			}
			return true;
		}
	}

	public bool IsFlat => iScrollBar is FlatScrollBar;

	public bool IsThumbTracking => isThumbTracking;

	public bool IsEmpty => scrollBar == null;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool Locked => locked;

	public int LargeChange
	{
		get
		{
			FetchScrollBar();
			return largeChange;
		}
		set
		{
			if (!locked)
			{
				if (iScrollBar != null)
				{
					iScrollBar.LargeChange = value;
				}
				else if (scrollBar != null)
				{
					scrollBar.LargeChange = value;
				}
			}
			largeChange = value;
		}
	}

	public int Maximum
	{
		get
		{
			FetchScrollBar();
			return maximum;
		}
		set
		{
			if (!locked)
			{
				if (iScrollBar != null)
				{
					iScrollBar.Maximum = value;
				}
				else if (scrollBar != null)
				{
					scrollBar.Maximum = value;
				}
			}
			maximum = value;
		}
	}

	public int Minimum
	{
		get
		{
			FetchScrollBar();
			return minimum;
		}
		set
		{
			if (!locked)
			{
				if (iScrollBar != null)
				{
					iScrollBar.Minimum = value;
				}
				else if (scrollBar != null)
				{
					scrollBar.Minimum = value;
				}
			}
			minimum = value;
		}
	}

	public int SmallChange
	{
		get
		{
			FetchScrollBar();
			return smallChange;
		}
		set
		{
			if (!locked)
			{
				if (iScrollBar != null)
				{
					iScrollBar.SmallChange = value;
				}
				else if (scrollBar != null)
				{
					scrollBar.SmallChange = value;
				}
			}
			smallChange = value;
		}
	}

	public int Value
	{
		get
		{
			FetchScrollBar();
			return value;
		}
		set
		{
			try
			{
				if (!locked)
				{
					if (iScrollBar != null)
					{
						iScrollBar.Value = value;
					}
					else if (scrollBar != null)
					{
						scrollBar.Value = value;
					}
				}
				this.value = value;
			}
			catch
			{
			}
		}
	}

	public bool Enabled
	{
		get
		{
			FetchScrollBar();
			return enabled;
		}
		set
		{
			if (!locked)
			{
				if (iScrollBar != null)
				{
					iScrollBar.Enabled = value;
				}
				else if (scrollBar != null)
				{
					scrollBar.Enabled = value;
				}
			}
			enabled = value;
		}
	}

	public Control Parent => parent;

	public RightToLeft RightToLeft
	{
		get
		{
			return m_rightToLeft;
		}
		set
		{
			if (value != m_rightToLeft)
			{
				this.value = 0;
				m_rightToLeft = value;
				InitScrollBar();
			}
		}
	}

	[SRCategory("Action")]
	[SRDescription("Occurs when\tthe\tthumb is moved.")]
	public event ScrollEventHandler Scroll;

	[SRDescription("Occurs when\tthe\tvalue of the control changes.")]
	[SRCategory("Action")]
	public event EventHandler ValueChanged;

	public ScrollBarWrapper(Control parent, ScrollBars sbType)
	{
		this.parent = parent;
		this.sbType = sbType;
		if (parent != null)
		{
			parent.VisibleChanged += ParentVisibleChanged;
			parent.ParentChanged += ParentParentChanged;
			ParentParentChanged(this, EventArgs.Empty);
		}
	}

	public ScrollBarWrapper(Control parent, ScrollBars sbType, Control scrollBar)
		: this(parent, sbType)
	{
		init = true;
		this.scrollBar = ((scrollBar != null) ? new ScrollBarAdapter(scrollBar) : null);
		iScrollBar = scrollBar as IScrollBar;
		init = false;
		FetchScrollBar();
	}

	private void ParentParentChanged(object sender, EventArgs e)
	{
		WireParent();
	}

	internal void WireParent()
	{
		if (savedParentParent != null)
		{
			savedParentParent.VisibleChanged -= ParentVisibleChanged;
		}
		savedParentParent = ((Parent != null) ? Parent.Parent : null);
		if (savedParentParent != null)
		{
			savedParentParent.VisibleChanged += ParentVisibleChanged;
		}
	}

	public void Dispose()
	{
		if (parent != null)
		{
			parent.VisibleChanged -= ParentVisibleChanged;
			parent.ParentChanged -= ParentParentChanged;
		}
		if (savedParentParent != null)
		{
			savedParentParent.VisibleChanged -= ParentVisibleChanged;
		}
		UnwireScrollEvent();
		if (IsReflect)
		{
			((IDisposable)iScrollBar).Dispose();
		}
		scrollBar = null;
		iScrollBar = null;
		parent = null;
	}

	private void ParentVisibleChanged(object sender, EventArgs e)
	{
		if (!IsReflect)
		{
			if (parent.Visible)
			{
				InitScrollBar();
				WireScrollEvent();
			}
			else
			{
				UnwireScrollEvent();
			}
		}
	}

	void IScrollBar.UpdateScrollInfo()
	{
		if (iScrollBar != null)
		{
			iScrollBar.UpdateScrollInfo();
		}
	}

	public void CopyTo(ScrollBarWrapper target)
	{
		try
		{
			if (target != null)
			{
				target.Minimum = Minimum;
				target.Maximum = Maximum;
				target.SmallChange = SmallChange;
				target.LargeChange = LargeChange;
				target.Value = Value;
				target.Enabled = Enabled;
				target.SupportsThumbTrack = SupportsThumbTrack;
				target.SupportsScrollTips = SupportsScrollTips;
			}
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(null, ex))
			{
				throw;
			}
		}
	}

	private void WireScrollEvent()
	{
		if (scrollBar != null && !wired)
		{
			scrollBar.Scroll += OnInnerScroll;
			scrollBar.ValueChanged += OnInnerValueChanged;
			wired = true;
		}
	}

	private void UnwireScrollEvent()
	{
		if (scrollBar != null && wired)
		{
			scrollBar.Scroll -= OnInnerScroll;
			scrollBar.ValueChanged -= OnInnerValueChanged;
			wired = false;
		}
	}

	private void OnInnerScroll(object sender, ScrollEventArgs se)
	{
		if (se.Type == ScrollEventType.ThumbTrack)
		{
			isThumbTracking = true;
		}
		else
		{
			isThumbTracking = false;
		}
		FetchScrollBar();
		if (this.Scroll != null)
		{
			this.Scroll(this, se);
		}
		if (se.Type == ScrollEventType.ThumbPosition)
		{
			OnInnerValueChanged(this, se);
		}
	}

	private void OnInnerValueChanged(object sender, EventArgs e)
	{
		if (this.ValueChanged != null)
		{
			this.ValueChanged(this, e);
		}
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	public void BeginUpdate()
	{
		updateCount++;
		locked = true;
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	public void EndUpdate()
	{
		if (--updateCount == 0)
		{
			locked = false;
			InitScrollBar();
		}
	}

	public void FetchScrollBar()
	{
		if (init || locked)
		{
			return;
		}
		if (iScrollBar != null)
		{
			largeChange = iScrollBar.LargeChange;
			smallChange = iScrollBar.SmallChange;
			value = iScrollBar.Value;
			minimum = iScrollBar.Minimum;
			maximum = iScrollBar.Maximum;
			enabled = iScrollBar.Enabled;
			if (iScrollBar is ScrollBar)
			{
				m_rightToLeft = ((ScrollBar)iScrollBar).RightToLeft;
			}
		}
		else if (scrollBar != null)
		{
			largeChange = scrollBar.LargeChange;
			smallChange = scrollBar.SmallChange;
			value = scrollBar.Value;
			minimum = scrollBar.Minimum;
			maximum = scrollBar.Maximum;
			enabled = scrollBar.Enabled;
			m_rightToLeft = scrollBar.RightToLeft;
		}
	}

	public void InitScrollBar()
	{
		try
		{
			if (locked)
			{
				return;
			}
			if (iScrollBar != null)
			{
				iScrollBar.Minimum = minimum;
				iScrollBar.Maximum = maximum;
				iScrollBar.LargeChange = largeChange;
				iScrollBar.SmallChange = smallChange;
				iScrollBar.Value = Math.Max(Math.Min(maximum, value), minimum);
				iScrollBar.Enabled = enabled;
				iScrollBar.SupportsThumbTrack = supportsThumbTrack;
				iScrollBar.SupportsScrollTips = supportsScrollTips;
				if (iScrollBar is ScrollBar)
				{
					((ScrollBar)iScrollBar).RightToLeft = m_rightToLeft;
				}
				iScrollBar.UpdateScrollInfo();
			}
			else if (scrollBar != null)
			{
				scrollBar.LargeChange = largeChange;
				scrollBar.SmallChange = smallChange;
				scrollBar.Minimum = minimum;
				scrollBar.Maximum = maximum;
				scrollBar.Value = Math.Max(Math.Min(maximum, value), minimum);
				scrollBar.RightToLeft = m_rightToLeft;
				scrollBar.Enabled = enabled;
			}
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(null, ex))
			{
				throw;
			}
		}
	}

	public void ReflectScrollMessage(ref Message m)
	{
		if (iScrollBar is ReflectScrollBar && (m.Msg == 276 || m.Msg == 277))
		{
			((ReflectScrollBar)iScrollBar).ReflectScrollMessage(ref m);
		}
	}

	public void SendScrollMessage(ScrollEventType et)
	{
		if (locked)
		{
			return;
		}
		try
		{
			int num = ((sbType == ScrollBars.Horizontal) ? 276 : 277);
			if (IsReflect)
			{
				NativeMethods.SendMessage(parent.Handle, num, (IntPtr)(long)et, IntPtr.Zero);
			}
			else
			{
				if (scrollBar == null)
				{
					return;
				}
				if (scrollBar.Control is ScrollBarCustomDraw)
				{
					ScrollBarCustomDraw scrollBarCustomDraw = (ScrollBarCustomDraw)scrollBar.Control;
					switch (et)
					{
					case ScrollEventType.SmallIncrement:
						scrollBarCustomDraw.Value += scrollBarCustomDraw.SmallChange;
						OnInnerScroll(scrollBarCustomDraw, new ScrollEventArgs(et, scrollBarCustomDraw.Value));
						break;
					case ScrollEventType.SmallDecrement:
						scrollBarCustomDraw.Value -= scrollBarCustomDraw.SmallChange;
						OnInnerScroll(scrollBarCustomDraw, new ScrollEventArgs(et, scrollBarCustomDraw.Value));
						break;
					}
				}
				else
				{
					NativeMethods.SendMessage(scrollBar.Handle, num | 0x2000, (IntPtr)(long)et, IntPtr.Zero);
					if (iScrollBar != null)
					{
						iScrollBar.UpdateScrollInfo();
					}
				}
			}
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(null, ex))
			{
				throw;
			}
		}
	}
}
