using System.ComponentModel;
using System.Diagnostics;
using Syncfusion.Styles;

namespace Syncfusion.Windows.Forms.Grid;

public class GridCheckBoxCellInfo : GridStyleInfoSubObject
{
	private static GridCheckBoxCellInfo defaultGridCheckBoxCellInfo;

	public static GridCheckBoxCellInfo Default
	{
		[DebuggerStepThrough]
		get
		{
			if (defaultGridCheckBoxCellInfo == null)
			{
				defaultGridCheckBoxCellInfo = new GridCheckBoxCellInfo();
				defaultGridCheckBoxCellInfo.CheckedValue = "1";
				defaultGridCheckBoxCellInfo.UncheckedValue = "0";
				defaultGridCheckBoxCellInfo.IndetermValue = string.Empty;
				defaultGridCheckBoxCellInfo.FlatLook = true;
			}
			return defaultGridCheckBoxCellInfo;
		}
	}

	[SRCategory("StyleCategoryAppearance")]
	[Browsable(true)]
	[Description("Specifies if checkbox shall be drawn with flat-look")]
	[NotifyParentProperty(true)]
	public bool FlatLook
	{
		[DebuggerStepThrough]
		get
		{
			return (bool)GetValue(GridCheckBoxCellInfoStore.FlatLookProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridCheckBoxCellInfoStore.FlatLookProperty, value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasFlatLook
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridCheckBoxCellInfoStore.FlatLookProperty);
		}
	}

	[Browsable(true)]
	[SRCategory("StyleCategoryAppearance")]
	[Description("The text value that represents checked state.")]
	[NotifyParentProperty(true)]
	public string CheckedValue
	{
		[DebuggerStepThrough]
		get
		{
			return (string)GetValue(GridCheckBoxCellInfoStore.CheckedValueProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridCheckBoxCellInfoStore.CheckedValueProperty, value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasCheckedValue
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridCheckBoxCellInfoStore.CheckedValueProperty);
		}
	}

	[NotifyParentProperty(true)]
	[Description("The text value that represents unchecked state.")]
	[Browsable(true)]
	[SRCategory("StyleCategoryAppearance")]
	public string UncheckedValue
	{
		[DebuggerStepThrough]
		get
		{
			return (string)GetValue(GridCheckBoxCellInfoStore.UncheckedValueProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridCheckBoxCellInfoStore.UncheckedValueProperty, value);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasUncheckedValue
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridCheckBoxCellInfoStore.UncheckedValueProperty);
		}
	}

	[Description("The text value that represents indeterminated state.")]
	[SRCategory("StyleCategoryAppearance")]
	[Browsable(true)]
	[NotifyParentProperty(true)]
	public string IndetermValue
	{
		[DebuggerStepThrough]
		get
		{
			return (string)GetValue(GridCheckBoxCellInfoStore.IndetermValueProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridCheckBoxCellInfoStore.IndetermValueProperty, value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasIndetermValue
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridCheckBoxCellInfoStore.IndetermValueProperty);
		}
	}

	internal static object CreateObject(StyleInfoSubObjectIdentity identity, object store)
	{
		if (store != null)
		{
			return new GridCheckBoxCellInfo(identity, store as GridCheckBoxCellInfoStore);
		}
		return new GridCheckBoxCellInfo(identity);
	}

	[DebuggerStepThrough]
	public GridCheckBoxCellInfo(string checkedValue, string uncheckedValue, string indetermValue, bool flatLook)
		: base(new GridCheckBoxCellInfoStore())
	{
		CheckedValue = checkedValue;
		UncheckedValue = uncheckedValue;
		IndetermValue = indetermValue;
		FlatLook = flatLook;
	}

	[DebuggerStepThrough]
	public GridCheckBoxCellInfo()
		: base(new GridCheckBoxCellInfoStore())
	{
	}

	[DebuggerStepThrough]
	public GridCheckBoxCellInfo(StyleInfoSubObjectIdentity identity)
		: base(identity, new GridCheckBoxCellInfoStore())
	{
	}

	[DebuggerStepThrough]
	public GridCheckBoxCellInfo(StyleInfoSubObjectIdentity identity, GridCheckBoxCellInfoStore store)
		: base(identity, store)
	{
	}

	[DebuggerStepThrough]
	public override IStyleInfoSubObject MakeCopy(StyleInfoBase newOwner, StyleInfoProperty sip)
	{
		return new GridCheckBoxCellInfo(newOwner.CreateSubObjectIdentity(sip), (GridCheckBoxCellInfoStore)base.Store.Clone());
	}

	protected override StyleInfoBase GetDefaultStyle()
	{
		return Default;
	}

	[DebuggerStepThrough]
	public void ResetFlatLook()
	{
		ResetValue(GridCheckBoxCellInfoStore.FlatLookProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeFlatLook()
	{
		return HasValue(GridCheckBoxCellInfoStore.FlatLookProperty);
	}

	[DebuggerStepThrough]
	public void ResetCheckedValue()
	{
		ResetValue(GridCheckBoxCellInfoStore.CheckedValueProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeCheckedValue()
	{
		return HasValue(GridCheckBoxCellInfoStore.CheckedValueProperty);
	}

	[DebuggerStepThrough]
	public void ResetUncheckedValue()
	{
		ResetValue(GridCheckBoxCellInfoStore.UncheckedValueProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeUncheckedValue()
	{
		return HasValue(GridCheckBoxCellInfoStore.UncheckedValueProperty);
	}

	[DebuggerStepThrough]
	public void ResetIndetermValue()
	{
		ResetValue(GridCheckBoxCellInfoStore.IndetermValueProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeIndetermValue()
	{
		return HasValue(GridCheckBoxCellInfoStore.IndetermValueProperty);
	}
}
