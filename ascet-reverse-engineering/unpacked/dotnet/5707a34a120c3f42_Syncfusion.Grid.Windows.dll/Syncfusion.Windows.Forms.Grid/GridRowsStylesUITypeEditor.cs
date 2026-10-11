namespace Syncfusion.Windows.Forms.Grid;

internal class GridRowsStylesUITypeEditor : GridStylesUITypeEditor
{
	internal override string Format(object o, int index)
	{
		return $"Row {index + 1}";
	}

	internal override void OnApplyChanges(object value)
	{
	}
}
