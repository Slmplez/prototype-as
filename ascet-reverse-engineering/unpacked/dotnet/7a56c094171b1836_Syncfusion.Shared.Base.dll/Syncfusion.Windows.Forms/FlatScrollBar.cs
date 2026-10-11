using System;
using System.ComponentModel;
using System.Drawing;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Security.Permissions;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms;

[Designer("System.Windows.Forms.Design.ScrollBarDesigner, System.Design", "System.ComponentModel.Design.IDesigner")]
[ToolboxItem(false)]
[DocumentationExclude]
[DefaultEvent("Scroll")]
[DefaultProperty("Value")]
public abstract class FlatScrollBar : ScrollBar, IScrollBar
{
	[DocumentationExclude]
	internal class NativeMethods
	{
		[DocumentationExclude]
		internal struct SCROLLINFO
		{
			public int cbSize;

			public int fMask;

			public int nMin;

			public int nMax;

			public int nPage;

			public int nPos;

			public int nTrackPos;
		}

		[StructLayout(LayoutKind.Sequential, Pack = 1)]
		[ComVisible(true)]
		[DocumentationExclude]
		internal class INITCOMMONCONTROLSEX
		{
			public int dwSize = Marshal.SizeOf(typeof(INITCOMMONCONTROLSEX));

			public int dwICC;
		}

		public const int WS_HSCROLL = 1048576;

		public const int WS_VSCROLL = 2097152;

		[DllImport("comctl32")]
		public static extern void InitCommonControls();

		[DllImport("comctl32")]
		public static extern bool InitCommonControlsEx(INITCOMMONCONTROLSEX icc);

		[DllImport("comctl32")]
		public static extern bool InitializeFlatSB(IntPtr hwnd);

		[DllImport("comctl32")]
		public static extern bool UninitializeFlatSB(IntPtr hwnd);

		[DllImport("comctl32")]
		public static extern int FlatSB_SetScrollInfo(IntPtr hwnd, int fnBar, ref SCROLLINFO si, bool redraw);

		[DllImport("comctl32")]
		public static extern bool FlatSB_GetScrollInfo(IntPtr hwnd, int fnBar, ref SCROLLINFO si);

		[DllImport("comctl32")]
		public static extern bool FlatSB_SetScrollProp(IntPtr hwnd, int index, int NewValue, bool fRedraw);

		[DllImport("comctl32")]
		public static extern bool FlatSB_GetScrollProp(IntPtr hwnd, int index, out int value);

		[DllImport("comctl32")]
		public static extern bool FlatSB_EnableScrollBar(IntPtr hwnd, int wSBflags, int wArrows);
	}

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

	internal enum WSB
	{
		PROP_CYVSCROLL = 1,
		PROP_CXHSCROLL = 2,
		PROP_CYHSCROLL = 4,
		PROP_CXVSCROLL = 8,
		PROP_CXHTHUMB = 16,
		PROP_CYVTHUMB = 32,
		PROP_VBKGCOLOR = 64,
		PROP_HBKGCOLOR = 128,
		PROP_VSTYLE = 256,
		PROP_HSTYLE = 512,
		PROP_WINSTYLE = 1024,
		PROP_PALETTE = 2048,
		PROP_MASK = 4095
	}

	internal enum ESB
	{
		ENABLE_BOTH = 0,
		DISABLE_BOTH = 3,
		DISABLE_LEFT = 1,
		DISABLE_RIGHT = 2,
		DISABLE_UP = 1,
		DISABLE_DOWN = 2,
		DISABLE_LTUP = 1,
		DISABLE_RTDN = 2
	}

	private bool supportsThumbTrack;

	private bool supportsScrollTips;

	private bool isThumbTracking;

	internal FlatScrollBarType scrollBarType;

	internal FlatScrollBarStyle flatScrollBarStyle = FlatScrollBarStyle.Encarta;

	protected override CreateParams CreateParams
	{
		[SecurityPermission(SecurityAction.LinkDemand, UnmanagedCode = true)]
		get
		{
			CreateParams createParams = base.CreateParams;
			createParams.ClassName = null;
			return createParams;
		}
	}

	[Category("Behavior")]
	[DefaultValue(false)]
	[Browsable(true)]
	[Description("Specifies if the associated control should scroll while the user is dragging a scrollbar thumb.")]
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
	[Description("Specifies if the control should show ScrollTips while the user is dragging a scrollbar thumb.")]
	[Category("Behavior")]
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
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool IsThumbTracking => isThumbTracking;

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
			if (LargeChange != value)
			{
				base.LargeChange = value;
				UpdateScrollInfo();
			}
		}
	}

	[Category("Behavior")]
	[DefaultValue(100)]
	public new int Maximum
	{
		get
		{
			return base.Maximum;
		}
		set
		{
			if (Maximum != value)
			{
				base.Maximum = value;
				UpdateScrollInfo();
			}
		}
	}

	[DefaultValue(0)]
	[Category("Behavior")]
	public new int Minimum
	{
		get
		{
			return base.Minimum;
		}
		set
		{
			if (Minimum != value)
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
			if (SmallChange != value)
			{
				base.SmallChange = value;
				UpdateScrollInfo();
			}
		}
	}

	[Bindable(true)]
	[Category("Behavior")]
	[DefaultValue(0)]
	public new int Value
	{
		get
		{
			return base.Value;
		}
		set
		{
			if (Value != value)
			{
				base.Value = value;
				UpdateScrollInfo();
			}
		}
	}

	[Browsable(true)]
	[Category("Appearance")]
	public override Color BackColor
	{
		get
		{
			return base.BackColor;
		}
		set
		{
			if (base.BackColor != value)
			{
				base.BackColor = value;
				if (base.IsHandleCreated)
				{
					int index = ((scrollBarType == FlatScrollBarType.Horizontal) ? 128 : 64);
					NativeMethods.FlatSB_SetScrollProp(base.Handle, index, value.ToArgb(), fRedraw: true);
				}
			}
		}
	}

	[Category("Behavior")]
	[DefaultValue(FlatScrollBarStyle.Flat)]
	public FlatScrollBarStyle Appearance
	{
		get
		{
			return flatScrollBarStyle;
		}
		set
		{
			if (flatScrollBarStyle != value)
			{
				flatScrollBarStyle = value;
				if (base.IsHandleCreated)
				{
					int index = ((scrollBarType == FlatScrollBarType.Horizontal) ? 512 : 256);
					NativeMethods.FlatSB_SetScrollProp(base.Handle, index, (int)flatScrollBarStyle, fRedraw: true);
				}
			}
		}
	}

	public bool ShowScrollTips
	{
		get
		{
			return false;
		}
		set
		{
		}
	}

	public FlatScrollBar()
	{
		NativeMethods.InitCommonControlsEx(new NativeMethods.INITCOMMONCONTROLSEX
		{
			dwICC = 8
		});
		BackColor = Color.Aquamarine;
	}

	protected override void OnHandleCreated(EventArgs e)
	{
		NativeMethods.InitializeFlatSB(base.Handle);
		InitScrollInfo();
		UpdateScrollInfo();
		base.OnHandleCreated(e);
	}

	private void InitScrollInfo()
	{
		int index = ((scrollBarType == FlatScrollBarType.Horizontal) ? 512 : 256);
		NativeMethods.FlatSB_SetScrollProp(base.Handle, index, (int)flatScrollBarStyle, fRedraw: false);
		int newValue = ColorTranslator.ToWin32(BackColor);
		index = ((scrollBarType == FlatScrollBarType.Horizontal) ? 128 : 64);
		NativeMethods.FlatSB_SetScrollProp(base.Handle, index, newValue, fRedraw: true);
	}

	public override void Refresh()
	{
		base.Refresh();
	}

	protected override void OnHandleDestroyed(EventArgs e)
	{
		if (base.IsHandleCreated)
		{
			NativeMethods.UninitializeFlatSB(base.Handle);
		}
		base.OnHandleDestroyed(e);
	}

	private int ReflectPosition(int position)
	{
		if (scrollBarType == FlatScrollBarType.Horizontal)
		{
			return Minimum + (Maximum - LargeChange + 1) - position;
		}
		return position;
	}

	internal static int LOWORD(int n)
	{
		return n & 0xFFFF;
	}

	internal static int HIWORD(int n)
	{
		return (n >> 16) & 0xFFFF;
	}

	internal static int LOWORD(IntPtr n)
	{
		return LOWORD((int)n);
	}

	internal static int HIWORD(IntPtr n)
	{
		return HIWORD((int)n);
	}

	protected override void OnBackColorChanged(EventArgs e)
	{
		if (base.IsHandleCreated)
		{
			int newValue = ColorTranslator.ToWin32(BackColor);
			int index = ((scrollBarType == FlatScrollBarType.Horizontal) ? 128 : 64);
			NativeMethods.FlatSB_SetScrollProp(base.Handle, index, newValue, fRedraw: true);
		}
		base.OnBackColorChanged(e);
	}

	private void WmReflectScroll(ref Message m)
	{
		ScrollEventType scrollEventType = (ScrollEventType)LOWORD(m.WParam);
		if (RightToLeft == RightToLeft.Yes)
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
			NativeMethods.FlatSB_GetScrollInfo(base.Handle, (int)scrollBarType, ref si);
			newValue = ((RightToLeft != RightToLeft.Yes) ? si.nTrackPos : ReflectPosition(si.nTrackPos));
			break;
		}
		}
		ScrollEventArgs e = new ScrollEventArgs(scrollEventType, newValue);
		OnScroll(e);
		Value = e.NewValue;
	}

	[SecurityPermission(SecurityAction.LinkDemand, UnmanagedCode = true)]
	protected override void WndProc(ref Message m)
	{
		switch (m.Msg)
		{
		case 276:
		case 277:
			WmReflectScroll(ref m);
			break;
		default:
			base.WndProc(ref m);
			break;
		}
	}

	void IScrollBar.UpdateScrollInfo()
	{
		UpdateScrollInfo();
	}

	internal new void UpdateScrollInfo()
	{
		if (base.IsHandleCreated && base.Enabled)
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
			NativeMethods.FlatSB_SetScrollInfo(base.Handle, (int)scrollBarType, ref si, redraw: true);
			if (si.nMax <= si.nMin)
			{
				NativeMethods.FlatSB_EnableScrollBar(base.Handle, (int)scrollBarType, 3);
			}
		}
	}

	public override void ResetBackColor()
	{
		BackColor = SystemColors.ScrollBar;
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
