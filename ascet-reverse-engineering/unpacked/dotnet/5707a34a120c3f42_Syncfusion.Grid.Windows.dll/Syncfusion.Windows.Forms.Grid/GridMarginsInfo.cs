using System.ComponentModel;
using Syncfusion.Styles;

namespace Syncfusion.Windows.Forms.Grid;

public class GridMarginsInfo : GridStyleInfoSubObject
{
	private static GridMarginsInfo defaultMarginsInfo;

	private static GridMarginsInfo emptyMarginsInfo;

	public static GridMarginsInfo Default
	{
		get
		{
			if (defaultMarginsInfo == null)
			{
				defaultMarginsInfo = new GridMarginsInfo(1, 1, 1, 1);
			}
			return defaultMarginsInfo;
		}
	}

	public static GridMarginsInfo Empty
	{
		get
		{
			if (emptyMarginsInfo == null)
			{
				emptyMarginsInfo = new GridMarginsInfo(0, 0, 0, 0);
			}
			return emptyMarginsInfo;
		}
	}

	[NotifyParentProperty(true)]
	[Description("Gets/Sets the top margin")]
	public int Top
	{
		get
		{
			return GetShortValue(GridMarginsInfoStore.TopProperty);
		}
		set
		{
			SetValue(GridMarginsInfoStore.TopProperty, (short)value);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasTop => HasValue(GridMarginsInfoStore.TopProperty);

	[NotifyParentProperty(true)]
	[Description("Gets/Sets the left margin")]
	public int Left
	{
		get
		{
			return GetShortValue(GridMarginsInfoStore.LeftProperty);
		}
		set
		{
			SetValue(GridMarginsInfoStore.LeftProperty, (short)value);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasLeft => HasValue(GridMarginsInfoStore.LeftProperty);

	[NotifyParentProperty(true)]
	[Description("Gets/Sets the bottom margin")]
	public int Bottom
	{
		get
		{
			return GetShortValue(GridMarginsInfoStore.BottomProperty);
		}
		set
		{
			SetValue(GridMarginsInfoStore.BottomProperty, (short)value);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasBottom => HasValue(GridMarginsInfoStore.BottomProperty);

	[NotifyParentProperty(true)]
	[Description("Gets/Sets the right margin")]
	public int Right
	{
		get
		{
			return GetShortValue(GridMarginsInfoStore.RightProperty);
		}
		set
		{
			SetValue(GridMarginsInfoStore.RightProperty, (short)value);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasRight => HasValue(GridMarginsInfoStore.RightProperty);

	internal static object CreateObject(StyleInfoSubObjectIdentity identity, object store)
	{
		if (store != null)
		{
			return new GridMarginsInfo(identity, store as GridMarginsInfoStore);
		}
		return new GridMarginsInfo(identity);
	}

	public GridMarginsInfo(int left, int top, int right, int bottom)
		: base(new GridMarginsInfoStore())
	{
		Left = left;
		Right = right;
		Top = top;
		Bottom = bottom;
	}

	public GridMarginsInfo(GridMargins margins)
		: base(new GridMarginsInfoStore())
	{
		Left = margins.Left;
		Right = margins.Right;
		Top = margins.Top;
		Bottom = margins.Bottom;
	}

	public GridMarginsInfo()
		: base(new GridMarginsInfoStore())
	{
	}

	public GridMarginsInfo(StyleInfoSubObjectIdentity identity)
		: base(identity, new GridMarginsInfoStore())
	{
	}

	public GridMarginsInfo(StyleInfoSubObjectIdentity identity, GridMarginsInfoStore store)
		: base(identity, store)
	{
	}

	public GridMargins ToMargins()
	{
		return new GridMargins(Left, Top, Right, Bottom);
	}

	public override IStyleInfoSubObject MakeCopy(StyleInfoBase newOwner, StyleInfoProperty sip)
	{
		return new GridMarginsInfo(newOwner.CreateSubObjectIdentity(sip), (GridMarginsInfoStore)base.Store.Clone());
	}

	protected override StyleInfoBase GetDefaultStyle()
	{
		return Default;
	}

	public void ResetTop()
	{
		ResetValue(GridMarginsInfoStore.TopProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeTop()
	{
		return HasValue(GridMarginsInfoStore.TopProperty);
	}

	public void ResetLeft()
	{
		ResetValue(GridMarginsInfoStore.LeftProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeLeft()
	{
		return HasValue(GridMarginsInfoStore.LeftProperty);
	}

	public void ResetBottom()
	{
		ResetValue(GridMarginsInfoStore.BottomProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeBottom()
	{
		return HasValue(GridMarginsInfoStore.BottomProperty);
	}

	public void ResetRight()
	{
		ResetValue(GridMarginsInfoStore.RightProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeRight()
	{
		return HasValue(GridMarginsInfoStore.RightProperty);
	}
}
