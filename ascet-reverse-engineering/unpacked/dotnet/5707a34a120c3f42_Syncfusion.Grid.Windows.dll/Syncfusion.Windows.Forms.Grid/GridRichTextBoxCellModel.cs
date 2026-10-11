using System;
using System.Drawing;
using System.Runtime.Serialization;
using System.Windows.Forms;
using Syncfusion.Drawing;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
public class GridRichTextBoxCellModel : GridCellModelBase
{
	private RichTextBox rtb = new RichTextBox();

	public GridRichTextBoxCellModel(GridModel grid)
		: base(grid)
	{
		base.ButtonBarSize = new Size(21, 0);
	}

	protected GridRichTextBoxCellModel(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
		base.ButtonBarSize = new Size(21, 0);
	}

	public override GridCellRendererBase CreateRenderer(GridControlBase control)
	{
		return new GridRichTextBoxCellRenderer(control, this);
	}

	public override string GetFormattedText(GridStyleInfo style, object value, int textInfo)
	{
		string formattedText = base.GetFormattedText(style, value, textInfo);
		if (RichTextPaint.IsValidRtf(formattedText))
		{
			rtb.CreateControl();
			rtb.Rtf = formattedText;
			return rtb.Text;
		}
		return formattedText;
	}

	public override bool ApplyFormattedText(GridStyleInfo style, string text, int textInfo)
	{
		return base.ApplyFormattedText(style, text, textInfo);
	}
}
