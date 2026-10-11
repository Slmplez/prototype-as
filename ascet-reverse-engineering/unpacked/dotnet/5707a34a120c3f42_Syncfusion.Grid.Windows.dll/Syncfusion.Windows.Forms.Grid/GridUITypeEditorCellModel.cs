using System;
using System.ComponentModel;
using System.Drawing.Design;
using System.Runtime.Serialization;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
public class GridUITypeEditorCellModel : GridDropDownStandardValuesCellModel
{
	public GridUITypeEditorCellModel(GridModel grid)
		: base(grid)
	{
	}

	protected GridUITypeEditorCellModel(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
	}

	public override GridCellRendererBase CreateRenderer(GridControlBase control)
	{
		return new GridUITypeEditorCellRenderer(control, this);
	}

	public virtual UITypeEditor GetUITypeEditor(GridStyleInfo style)
	{
		PropertyDescriptor propertyDescriptor = GetPropertyDescriptor(style);
		if (propertyDescriptor != null)
		{
			return (UITypeEditor)propertyDescriptor.GetEditor(typeof(UITypeEditor));
		}
		Type cellValueType = style.CellValueType;
		if (cellValueType != null)
		{
			return (UITypeEditor)TypeDescriptor.GetEditor(cellValueType, typeof(UITypeEditor));
		}
		return null;
	}
}
