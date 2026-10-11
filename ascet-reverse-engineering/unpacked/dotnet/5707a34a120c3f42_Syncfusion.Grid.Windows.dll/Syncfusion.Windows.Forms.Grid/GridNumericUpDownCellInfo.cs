using System.ComponentModel;
using Syncfusion.Styles;

namespace Syncfusion.Windows.Forms.Grid;

public class GridNumericUpDownCellInfo : GridStyleInfoSubObject
{
	private static GridNumericUpDownCellInfo defaultGridNumericUpDownCellInfo;

	public static GridNumericUpDownCellInfo Default
	{
		get
		{
			if (defaultGridNumericUpDownCellInfo == null)
			{
				defaultGridNumericUpDownCellInfo = new GridNumericUpDownCellInfo();
				defaultGridNumericUpDownCellInfo.Minimum = 0;
				defaultGridNumericUpDownCellInfo.Maximum = int.MaxValue;
				defaultGridNumericUpDownCellInfo.WrapValue = false;
				defaultGridNumericUpDownCellInfo.Step = 1;
				defaultGridNumericUpDownCellInfo.StartValue = 0;
			}
			return defaultGridNumericUpDownCellInfo;
		}
	}

	[Description("true if value should be starting over when value reaches maximum or minimum.")]
	[SRCategory("StyleCategoryAppearance")]
	[Browsable(true)]
	public bool WrapValue
	{
		get
		{
			return (bool)GetValue(GridNumericUpDownCellInfoStore.WrapValueProperty);
		}
		set
		{
			SetValue(GridNumericUpDownCellInfoStore.WrapValueProperty, value);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasWrapValue => HasValue(GridNumericUpDownCellInfoStore.WrapValueProperty);

	[Browsable(true)]
	[SRCategory("StyleCategoryAppearance")]
	[Description("Minimum value")]
	public int Minimum
	{
		get
		{
			return (int)GetValue(GridNumericUpDownCellInfoStore.MinimumProperty);
		}
		set
		{
			SetValue(GridNumericUpDownCellInfoStore.MinimumProperty, value);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasMinimum => HasValue(GridNumericUpDownCellInfoStore.MinimumProperty);

	[Description("Maximum value.")]
	[SRCategory("StyleCategoryAppearance")]
	[Browsable(true)]
	public int Maximum
	{
		get
		{
			return (int)GetValue(GridNumericUpDownCellInfoStore.MaximumProperty);
		}
		set
		{
			SetValue(GridNumericUpDownCellInfoStore.MaximumProperty, value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasMaximum => HasValue(GridNumericUpDownCellInfoStore.MaximumProperty);

	[SRCategory("StyleCategoryAppearance")]
	[Description("The step to increase or decrease when clicking up or down buttons.")]
	[Browsable(true)]
	public int Step
	{
		get
		{
			return (int)GetValue(GridNumericUpDownCellInfoStore.StepProperty);
		}
		set
		{
			SetValue(GridNumericUpDownCellInfoStore.StepProperty, value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasStep => HasValue(GridNumericUpDownCellInfoStore.StepProperty);

	[Browsable(true)]
	[SRCategory("StyleCategoryAppearance")]
	[Description("Start value. This is the first value when you press up or down in an empty cell.")]
	public int StartValue
	{
		get
		{
			return (int)GetValue(GridNumericUpDownCellInfoStore.StartValueProperty);
		}
		set
		{
			SetValue(GridNumericUpDownCellInfoStore.StartValueProperty, value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasStartValue => HasValue(GridNumericUpDownCellInfoStore.StartValueProperty);

	internal static object CreateObject(StyleInfoSubObjectIdentity identity, object store)
	{
		if (store != null)
		{
			return new GridNumericUpDownCellInfo(identity, store as GridNumericUpDownCellInfoStore);
		}
		return new GridNumericUpDownCellInfo(identity);
	}

	public GridNumericUpDownCellInfo(int min, int max, int start, int num, bool wrap)
		: base(new GridNumericUpDownCellInfoStore())
	{
		WrapValue = wrap;
		Maximum = max;
		Minimum = min;
		StartValue = start;
		Step = num;
	}

	public GridNumericUpDownCellInfo()
		: base(new GridNumericUpDownCellInfoStore())
	{
	}

	public GridNumericUpDownCellInfo(StyleInfoSubObjectIdentity identity)
		: base(identity, new GridNumericUpDownCellInfoStore())
	{
	}

	public GridNumericUpDownCellInfo(StyleInfoSubObjectIdentity identity, GridNumericUpDownCellInfoStore store)
		: base(identity, store)
	{
	}

	public override IStyleInfoSubObject MakeCopy(StyleInfoBase newOwner, StyleInfoProperty sip)
	{
		return new GridNumericUpDownCellInfo(newOwner.CreateSubObjectIdentity(sip), (GridNumericUpDownCellInfoStore)base.Store.Clone());
	}

	protected override StyleInfoBase GetDefaultStyle()
	{
		return Default;
	}

	public void ResetWrapValue()
	{
		ResetValue(GridNumericUpDownCellInfoStore.WrapValueProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeWrapValue()
	{
		return HasValue(GridNumericUpDownCellInfoStore.WrapValueProperty);
	}

	public void ResetMinimum()
	{
		ResetValue(GridNumericUpDownCellInfoStore.MinimumProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeMinimum()
	{
		return HasValue(GridNumericUpDownCellInfoStore.MinimumProperty);
	}

	public void ResetMaximum()
	{
		ResetValue(GridNumericUpDownCellInfoStore.MaximumProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeMaximum()
	{
		return HasValue(GridNumericUpDownCellInfoStore.MaximumProperty);
	}

	public void ResetStep()
	{
		ResetValue(GridNumericUpDownCellInfoStore.StepProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeStep()
	{
		return HasValue(GridNumericUpDownCellInfoStore.StepProperty);
	}

	public void ResetStartValue()
	{
		ResetValue(GridNumericUpDownCellInfoStore.StartValueProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeStartValue()
	{
		return HasValue(GridNumericUpDownCellInfoStore.StartValueProperty);
	}
}
