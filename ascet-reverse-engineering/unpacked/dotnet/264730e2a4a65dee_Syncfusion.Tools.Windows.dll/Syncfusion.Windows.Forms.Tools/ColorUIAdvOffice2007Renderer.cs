using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

public class ColorUIAdvOffice2007Renderer : ColorUIAdvRenderer
{
	protected Office2007Colors ColorTable => Office2007Colors.GetColorTable(base.ColorPicker.Office2007Theme);

	protected override Color ForeColor => ColorTable.ColorUIAdvTextColor;

	protected override Color ItemBorderColor => ColorTable.ColorUIAdvItemBorderColor;

	protected override Color BackColor => ColorTable.ColorUIAdvBackColor;

	protected override Color HighlightedBorderColor => ColorTable.ColorUIAdvHighlightedBorderColor;

	protected override Color SelectedBorderColor => ColorTable.ColorUIAdvSelectedBorderColor;

	protected override Color SelectedHighlightedBorderColor => ColorTable.ColorUIAdvSelectedHighlightedBorderColor;

	protected override Color GroupHeaderBackColor => ColorTable.ColorUIAdvGroupHeaderBackColor;

	public ColorUIAdvOffice2007Renderer(ColorPickerUIAdv control)
		: base(control)
	{
	}
}
