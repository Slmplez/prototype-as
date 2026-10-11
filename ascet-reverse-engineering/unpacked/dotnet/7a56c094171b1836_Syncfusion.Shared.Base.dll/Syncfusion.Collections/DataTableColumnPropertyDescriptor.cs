using System;
using System.ComponentModel;
using System.Data;

namespace Syncfusion.Collections;

public class DataTableColumnPropertyDescriptor : PropertyDescriptor
{
	private DataColumn column;

	public override Type PropertyType => column.DataType;

	public override bool IsReadOnly => column.ReadOnly;

	public override Type ComponentType => typeof(DataRow);

	public override bool IsBrowsable => column.ColumnMapping != MappingType.Hidden;

	public DataColumn Column => column;

	public DataTableColumnPropertyDescriptor(DataColumn dataColumn)
		: base(dataColumn.ColumnName, null)
	{
		column = dataColumn;
	}

	public override bool ShouldSerializeValue(object component)
	{
		return false;
	}

	public override void SetValue(object component, object value)
	{
		DataRow dataRow = (DataRow)component;
		dataRow[column] = value;
		OnValueChanged(dataRow, EventArgs.Empty);
	}

	public override void ResetValue(object component)
	{
		DataRow dataRow = (DataRow)component;
		dataRow[column] = DBNull.Value;
		OnValueChanged(dataRow, EventArgs.Empty);
	}

	public override object GetValue(object component)
	{
		DataRow dataRow = (DataRow)component;
		return dataRow[column];
	}

	public override bool CanResetValue(object component)
	{
		DataRow dataRow = (DataRow)component;
		return dataRow[column] != DBNull.Value;
	}

	public override int GetHashCode()
	{
		return Column.GetHashCode();
	}

	public override bool Equals(object other)
	{
		if (other is DataTableColumnPropertyDescriptor)
		{
			DataTableColumnPropertyDescriptor dataTableColumnPropertyDescriptor = (DataTableColumnPropertyDescriptor)other;
			return dataTableColumnPropertyDescriptor.Column == Column;
		}
		return false;
	}
}
