using System.Drawing;
using System.Windows.Forms;

namespace ETAS.StandardDialogs.Helper_Classes;

public sealed class ComboBoxEx : ComboBox
{
	public ComboBoxEx()
	{
		base.DrawMode = DrawMode.OwnerDrawFixed;
		base.DropDownStyle = ComboBoxStyle.DropDownList;
	}

	protected override void OnDrawItem(DrawItemEventArgs e)
	{
		e.DrawBackground();
		e.DrawFocusRectangle();
		if (e.Index >= 0 && e.Index < base.Items.Count)
		{
			DropDownItem dropDownItem = (DropDownItem)base.Items[e.Index];
			e.Graphics.DrawImage(dropDownItem.Image, e.Bounds.Left, e.Bounds.Top);
			e.Graphics.DrawString(dropDownItem.Value, e.Font, new SolidBrush(e.ForeColor), e.Bounds.Left + dropDownItem.Image.Width + 10, e.Bounds.Top + 2);
		}
		base.OnDrawItem(e);
	}
}
