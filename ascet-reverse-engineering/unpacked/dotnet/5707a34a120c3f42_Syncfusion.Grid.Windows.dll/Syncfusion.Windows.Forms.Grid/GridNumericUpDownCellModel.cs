using System;
using System.Drawing;
using System.Runtime.Serialization;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
public class GridNumericUpDownCellModel : GridTextBoxCellModel
{
	private bool acceptAlphaKeys = true;

	public bool AcceptAlphaKeys
	{
		get
		{
			return acceptAlphaKeys;
		}
		set
		{
			acceptAlphaKeys = value;
		}
	}

	public GridNumericUpDownCellModel(GridModel grid)
		: base(grid)
	{
		base.AllowFloating = false;
		base.ButtonBarSize = new Size(13, int.MaxValue);
	}

	protected GridNumericUpDownCellModel(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
	}

	public override GridCellRendererBase CreateRenderer(GridControlBase control)
	{
		return new GridNumericUpDownCellRenderer(control, this);
	}
}
