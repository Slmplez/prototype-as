using System;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Security.Permissions;
using System.Windows.Forms;
using Syncfusion.Diagnostics;
using Syncfusion.Documentation;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms;

[DocumentationExclude]
[ToolboxItem(false)]
internal class ReflectScrollBar : ScrollBar, IScrollBar
{
	[DocumentationExclude]
	internal enum SIF
	{
		RANGE = 1,
		PAGE = 2,
		POS = 4,
		DISABLENOSCROLL = 8,
		TRACKPOS = 16,
		ALL = 23
	}

	private bool supportsThumbTrack;

	private bool supportsScrollTips;

	private bool isThumbTracking;

	private Control reflectParent;

	private ScrollBars scrollBarType;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public Control ReflectParent => reflectParent;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool IsThumbTracking => isThumbTracking;

	[Description("Specifies if the associated control should scroll while the user is dragging a scrollbar thumb.")]
	[Browsable(true)]
	[Category("Behavior")]
	[DefaultValue(false)]
	public bool SupportsThumbTrack
	{
		get
		{
			return supportsThumbTrack;
		}
		set
		{
			supportsThumbTrack = value;
		}
	}

	[DefaultValue(false)]
	[Browsable(true)]
	[Category("Behavior")]
	[Description("Specifies if the control should show ScrollTips while the user is dragging a scrollbar thumb.")]
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
			}
		}
	}

	private int ScrollInfoBar
	{
		get
		{
			if (scrollBarType != ScrollBars.Horizontal)
			{
				return 1;
			}
			return 0;
		}
	}

	[Category("Behavior")]
	[DefaultValue(10)]
	public new int LargeChange
	{
		get
		{
			return base.LargeChange;
		}
		set
		{
			if (base.LargeChange != value)
			{
				if (value < 0)
				{
					value = 0;
				}
				base.LargeChange = value;
				UpdateScrollInfo();
			}
		}
	}

	[DefaultValue(100)]
	[Category("Behavior")]
	public new int Maximum
	{
		get
		{
			return base.Maximum;
		}
		set
		{
			if (base.Maximum != value)
			{
				base.Maximum = value;
				UpdateScrollInfo();
			}
		}
	}

	[Category("Behavior")]
	[DefaultValue(0)]
	public new int Minimum
	{
		get
		{
			return base.Minimum;
		}
		set
		{
			if (base.Minimum != value)
			{
				base.Minimum = value;
				UpdateScrollInfo();
			}
		}
	}

	[Category("Behavior")]
	[DefaultValue(1)]
	public new int SmallChange
	{
		get
		{
			return base.SmallChange;
		}
		set
		{
			if (base.SmallChange != value)
			{
				base.SmallChange = value;
				UpdateScrollInfo();
			}
		}
	}

	[Category("Behavior")]
	[DefaultValue(0)]
	[Bindable(true)]
	public new int Value
	{
		get
		{
			return base.Value;
		}
		set
		{
			if (base.Value != value)
			{
				base.Value = value;
				UpdateScrollInfo();
			}
		}
	}

	public ReflectScrollBar(Control reflectParent, ScrollBars scrollBarType)
	{
		this.reflectParent = reflectParent;
		this.scrollBarType = scrollBarType;
		NativeMethods.SCROLLINFO si = new NativeMethods.SCROLLINFO
		{
			cbSize = Marshal.SizeOf(typeof(NativeMethods.SCROLLINFO)),
			fMask = 23
		};
		if (!NativeMethods.GetScrollInfo(this.reflectParent.Handle, ScrollInfoBar, ref si) || si.nPos == -1)
		{
			return;
		}
		try
		{
			base.Minimum = si.nMin;
			base.Maximum = si.nMax;
			base.Value = Math.Max(Math.Min(si.nPos, si.nMax), si.nMin);
			base.LargeChange = si.nPage;
			base.SmallChange = 1;
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

	private int ReflectPosition(int position)
	{
		if (scrollBarType == ScrollBars.Horizontal)
		{
			return Minimum + (Maximum - LargeChange + 1) - position;
		}
		return position;
	}

	void IScrollBar.UpdateScrollInfo()
	{
		UpdateScrollInfo();
	}

	public static int LOWORD(int n)
	{
		return n & 0xFFFF;
	}

	public static int LOWORD(IntPtr n)
	{
		return LOWORD((int)n);
	}

	public void ReflectScrollMessage(ref Message m)
	{
		ScrollEventType scrollEventType = (ScrollEventType)LOWORD(m.WParam);
		if (RightToLeft == RightToLeft.Yes && scrollBarType == ScrollBars.Horizontal)
		{
			switch (scrollEventType)
			{
			case ScrollEventType.First:
				scrollEventType = ScrollEventType.Last;
				break;
			case ScrollEventType.Last:
				scrollEventType = ScrollEventType.First;
				break;
			case ScrollEventType.SmallDecrement:
				scrollEventType = ScrollEventType.SmallIncrement;
				break;
			case ScrollEventType.SmallIncrement:
				scrollEventType = ScrollEventType.SmallDecrement;
				break;
			case ScrollEventType.LargeDecrement:
				scrollEventType = ScrollEventType.LargeIncrement;
				break;
			case ScrollEventType.LargeIncrement:
				scrollEventType = ScrollEventType.LargeDecrement;
				break;
			}
		}
		int newValue = Value;
		isThumbTracking = false;
		switch (scrollEventType)
		{
		case ScrollEventType.First:
			newValue = Minimum;
			break;
		case ScrollEventType.Last:
			newValue = Maximum - LargeChange + 1;
			break;
		case ScrollEventType.SmallDecrement:
			newValue = Math.Max(Value - SmallChange, Minimum);
			break;
		case ScrollEventType.SmallIncrement:
			newValue = Math.Min(Value + SmallChange, Maximum - LargeChange + 1);
			break;
		case ScrollEventType.LargeDecrement:
			newValue = Math.Max(Value - LargeChange, Minimum);
			break;
		case ScrollEventType.LargeIncrement:
			newValue = Math.Min(Value + LargeChange, Maximum - LargeChange + 1);
			break;
		case ScrollEventType.ThumbTrack:
			isThumbTracking = true;
			goto case ScrollEventType.ThumbPosition;
		case ScrollEventType.ThumbPosition:
		{
			NativeMethods.SCROLLINFO si = new NativeMethods.SCROLLINFO
			{
				cbSize = Marshal.SizeOf(typeof(NativeMethods.SCROLLINFO)),
				fMask = 23
			};
			NativeMethods.GetScrollInfo(reflectParent.Handle, ScrollInfoBar, ref si);
			newValue = ((RightToLeft != RightToLeft.Yes) ? si.nTrackPos : ReflectPosition(si.nTrackPos));
			break;
		}
		}
		ScrollEventArgs e = new ScrollEventArgs(scrollEventType, newValue);
		OnScroll(e);
		base.Value = Math.Max(Math.Min(e.NewValue, Maximum), Minimum);
	}

	[SecurityPermission(SecurityAction.LinkDemand, UnmanagedCode = true)]
	protected override void WndProc(ref Message m)
	{
		switch (m.Msg)
		{
		case 276:
		case 277:
		case 8468:
		case 8469:
			ReflectScrollMessage(ref m);
			break;
		default:
			base.WndProc(ref m);
			break;
		}
	}

	protected override void OnHandleCreated(EventArgs e)
	{
		base.OnHandleCreated(e);
	}

	protected new void UpdateScrollInfo()
	{
		if (base.IsHandleCreated && base.Enabled)
		{
			base.UpdateScrollInfo();
		}
		else if (reflectParent != null)
		{
			NativeMethods.SCROLLINFO si = new NativeMethods.SCROLLINFO
			{
				cbSize = Marshal.SizeOf(typeof(NativeMethods.SCROLLINFO)),
				fMask = 31,
				nMin = Minimum,
				nMax = Maximum,
				nPage = Math.Min(LargeChange, Maximum - Minimum + 1)
			};
			if (RightToLeft == RightToLeft.Yes)
			{
				si.nPos = ReflectPosition(Value);
			}
			else
			{
				si.nPos = Value;
			}
			si.nTrackPos = 0;
			NativeMethods.SetScrollInfo(reflectParent.Handle, ScrollInfoBar, ref si, redraw: true);
		}
	}

	[SpecialName]
	bool IScrollBar.get_Enabled()
	{
		return base.Enabled;
	}

	[SpecialName]
	void IScrollBar.set_Enabled(bool P_0)
	{
		base.Enabled = P_0;
	}
}
