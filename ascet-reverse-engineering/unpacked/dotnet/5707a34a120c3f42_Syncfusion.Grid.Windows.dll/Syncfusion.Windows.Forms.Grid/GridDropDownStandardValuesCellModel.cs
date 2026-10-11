using System;
using System.Runtime.Serialization;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
public class GridDropDownStandardValuesCellModel : GridDropDownGridListControlCellModel
{
	public GridDropDownStandardValuesCellModel(GridModel grid)
		: base(grid)
	{
	}

	protected GridDropDownStandardValuesCellModel(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
	}

	public override GridCellRendererBase CreateRenderer(GridControlBase control)
	{
		return new GridDropDownStandardValuesCellRenderer(control, this);
	}

	public override void FillWithChoices(ListBox listBox, GridStyleInfo style, out bool exclusive)
	{
		object dataSource = GetDataSource(style);
		if (dataSource != null && (listBox.BindingContext == null || dataSource != listBox.DataSource || listBox.DisplayMember != style.DisplayMember || listBox.ValueMember != style.ValueMember))
		{
			listBox.DataSource = null;
			listBox.DisplayMember = style.DisplayMember;
			listBox.ValueMember = style.ValueMember;
			listBox.DataSource = dataSource;
			listBox.BindingContext = base.BindingContext;
		}
		exclusive = GetTypeConverter(style)?.GetStandardValuesExclusive() ?? true;
	}
}
