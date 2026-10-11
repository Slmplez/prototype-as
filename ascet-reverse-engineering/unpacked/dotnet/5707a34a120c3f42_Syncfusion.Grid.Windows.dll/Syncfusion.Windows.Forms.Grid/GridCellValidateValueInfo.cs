using System.ComponentModel;
using System.Diagnostics;
using Syncfusion.Styles;

namespace Syncfusion.Windows.Forms.Grid;

public class GridCellValidateValueInfo : GridStyleInfoSubObject
{
	private static GridCellValidateValueInfo defaultValidateInfo;

	public static GridCellValidateValueInfo Default
	{
		[DebuggerStepThrough]
		get
		{
			if (defaultValidateInfo == null)
			{
				defaultValidateInfo = new GridCellValidateValueInfo();
				defaultValidateInfo.NumberRequired = false;
				defaultValidateInfo.Minimum = -1.7976931348623158E+307;
				defaultValidateInfo.Maximum = 1.7976931348623158E+307;
				defaultValidateInfo.ErrorMessage = "Value is out of range";
			}
			return defaultValidateInfo;
		}
	}

	[SRCategory("StyleCategoryAppearance")]
	[Browsable(true)]
	[Description("true if only number allows; false if any characters are allowed.")]
	[NotifyParentProperty(true)]
	public bool NumberRequired
	{
		[DebuggerStepThrough]
		get
		{
			return (bool)GetValue(GridCellValidateValueInfoStore.NumberRequiredProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridCellValidateValueInfoStore.NumberRequiredProperty, value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasNumberRequired
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridCellValidateValueInfoStore.NumberRequiredProperty);
		}
	}

	[Browsable(true)]
	[Description("The minimum value allowed for the cell")]
	[SRCategory("StyleCategoryAppearance")]
	[NotifyParentProperty(true)]
	public double Minimum
	{
		[DebuggerStepThrough]
		get
		{
			return (double)GetValue(GridCellValidateValueInfoStore.MinimumProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridCellValidateValueInfoStore.MinimumProperty, value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasMinimum
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridCellValidateValueInfoStore.MinimumProperty);
		}
	}

	[SRCategory("StyleCategoryAppearance")]
	[Browsable(true)]
	[Description("The maximum value allowed for the cell.")]
	[NotifyParentProperty(true)]
	public double Maximum
	{
		[DebuggerStepThrough]
		get
		{
			return (double)GetValue(GridCellValidateValueInfoStore.MaximumProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridCellValidateValueInfoStore.MaximumProperty, value);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasMaximum
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridCellValidateValueInfoStore.MaximumProperty);
		}
	}

	[NotifyParentProperty(true)]
	[Browsable(true)]
	[SRCategory("StyleCategoryAppearance")]
	[Description("A error message to be displayed if entered text does not meet criteria.")]
	public string ErrorMessage
	{
		[DebuggerStepThrough]
		get
		{
			return (string)GetValue(GridCellValidateValueInfoStore.ErrorMessageProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridCellValidateValueInfoStore.ErrorMessageProperty, value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasErrorMessage
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridCellValidateValueInfoStore.ErrorMessageProperty);
		}
	}

	internal static object CreateObject(StyleInfoSubObjectIdentity identity, object store)
	{
		if (store != null)
		{
			return new GridCellValidateValueInfo(identity, store as GridCellValidateValueInfoStore);
		}
		return new GridCellValidateValueInfo(identity);
	}

	[DebuggerStepThrough]
	public GridCellValidateValueInfo(bool numberRequired, double minimum, double maximum, string errorMessage)
		: base(new GridCellValidateValueInfoStore())
	{
		NumberRequired = numberRequired;
		Minimum = minimum;
		Maximum = maximum;
		ErrorMessage = errorMessage;
	}

	[DebuggerStepThrough]
	public GridCellValidateValueInfo()
		: base(new GridCellValidateValueInfoStore())
	{
	}

	[DebuggerStepThrough]
	public GridCellValidateValueInfo(StyleInfoSubObjectIdentity identity)
		: base(identity, new GridCellValidateValueInfoStore())
	{
	}

	[DebuggerStepThrough]
	public GridCellValidateValueInfo(StyleInfoSubObjectIdentity identity, GridCellValidateValueInfoStore store)
		: base(identity, store)
	{
	}

	[DebuggerStepThrough]
	public override IStyleInfoSubObject MakeCopy(StyleInfoBase newOwner, StyleInfoProperty sip)
	{
		return new GridCellValidateValueInfo(newOwner.CreateSubObjectIdentity(sip), (GridCellValidateValueInfoStore)base.Store.Clone());
	}

	protected override StyleInfoBase GetDefaultStyle()
	{
		return Default;
	}

	[DebuggerStepThrough]
	public void ResetNumberRequired()
	{
		ResetValue(GridCellValidateValueInfoStore.NumberRequiredProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeNumberRequired()
	{
		return HasValue(GridCellValidateValueInfoStore.NumberRequiredProperty);
	}

	[DebuggerStepThrough]
	public void ResetMinimum()
	{
		ResetValue(GridCellValidateValueInfoStore.MinimumProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeMinimum()
	{
		return HasValue(GridCellValidateValueInfoStore.MinimumProperty);
	}

	[DebuggerStepThrough]
	public void ResetMaximum()
	{
		ResetValue(GridCellValidateValueInfoStore.MaximumProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeMaximum()
	{
		return HasValue(GridCellValidateValueInfoStore.MaximumProperty);
	}

	[DebuggerStepThrough]
	public void ResetErrorMessage()
	{
		ResetValue(GridCellValidateValueInfoStore.ErrorMessageProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeErrorMessage()
	{
		return HasValue(GridCellValidateValueInfoStore.ErrorMessageProperty);
	}
}
