using System.Drawing;

namespace ETAS.StandardDialogs.Helper_Classes;

public sealed class DropDownItem
{
	public string Value { get; private set; }

	public Image Image { get; private set; }

	public string Language { get; private set; }

	public DropDownItem()
		: this("", null, "")
	{
	}

	public DropDownItem(string val, Image image, string lanuage)
	{
		Value = val;
		Image = new Bitmap(image);
		Language = lanuage;
		using Graphics graphics = Graphics.FromImage(Image);
		using Brush brush = new SolidBrush(Color.FromName(val));
		graphics.DrawRectangle(Pens.White, 0, 0, Image.Width, Image.Height);
		graphics.FillRectangle(brush, 1, 1, Image.Width - 1, Image.Height - 1);
	}

	public override string ToString()
	{
		return Value;
	}
}
