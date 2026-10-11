namespace Syncfusion.Windows.Forms.Grid;

public class GridCellContextValue
{
	private int rowIndex = -1;

	private int colIndex = -1;

	private object value;

	private object defaultValue;

	public string Info => ToString();

	public GridCellContextValue(object defaultValue)
	{
		value = defaultValue;
		this.defaultValue = defaultValue;
	}

	public GridCellContextValue(int rowIndex, int colIndex, object value, object defaultValue)
	{
		this.rowIndex = rowIndex;
		this.colIndex = colIndex;
		this.value = value;
		this.defaultValue = defaultValue;
	}

	public object GetValue(int rowIndex, int colIndex)
	{
		if (rowIndex == this.rowIndex && colIndex == this.colIndex)
		{
			return value;
		}
		return defaultValue;
	}

	public bool SetValue(int rowIndex, int colIndex, object value)
	{
		bool result = this.rowIndex != rowIndex || this.colIndex != colIndex || (this.value != null && !this.value.Equals(value)) || (this.value == null && value != null);
		this.rowIndex = rowIndex;
		this.colIndex = colIndex;
		this.value = value;
		return result;
	}

	public void ResetValue()
	{
		rowIndex = -1;
		colIndex = -1;
		value = defaultValue;
	}

	public override string ToString()
	{
		return "rowIndex = " + rowIndex.ToString() + ", colIndex = " + colIndex.ToString() + ", value = " + value;
	}
}
