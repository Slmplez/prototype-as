namespace Syncfusion.Windows.Forms.Grid;

internal class GridColStylesUITypeEditor : GridStylesUITypeEditor
{
	internal override string Format(object o, int index)
	{
		return $"Column {index + 1}";
	}

	internal override void OnApplyChanges(object value)
	{
	}
}
