using System;
using System.Collections.Generic;
using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

internal class HtmlLineBox
{
	private List<HtmlWordBox> words;

	private HtmlBox ownerBox;

	private Dictionary<HtmlBox, RectangleF> rects;

	private List<HtmlBox> relatedBoxes;

	public List<HtmlBox> RelatedBoxes => relatedBoxes;

	internal List<HtmlWordBox> Words => words;

	public HtmlBox OwnerBox => ownerBox;

	public Dictionary<HtmlBox, RectangleF> Rectangles => rects;

	public HtmlLineBox(HtmlBox ownerBox)
	{
		rects = new Dictionary<HtmlBox, RectangleF>();
		relatedBoxes = new List<HtmlBox>();
		words = new List<HtmlWordBox>();
		this.ownerBox = ownerBox;
		this.ownerBox.LineBoxes.Add(this);
	}

	public float GetMaxWordBottom()
	{
		float num = float.MinValue;
		foreach (HtmlWordBox word in Words)
		{
			num = Math.Max(num, word.Bottom);
		}
		return num;
	}

	internal void AddWordBox(HtmlWordBox word)
	{
		if (!Words.Contains(word))
		{
			Words.Add(word);
		}
		if (!RelatedBoxes.Contains(word.OwnerBox))
		{
			RelatedBoxes.Add(word.OwnerBox);
		}
	}

	internal List<HtmlWordBox> GetWordBoxes(HtmlBox box)
	{
		List<HtmlWordBox> list = new List<HtmlWordBox>();
		foreach (HtmlWordBox word in Words)
		{
			if (word.OwnerBox.Equals(box))
			{
				list.Add(word);
			}
		}
		return list;
	}

	internal void ChangeRectangle(HtmlBox box, float x, float y, float r, float b)
	{
		float num = box.ParseFloat(box.Border_Left_Width, "BORDER") + box.ParseFloat(box.Padding_Left, "FLOAT");
		float num2 = box.ParseFloat(box.Border_Right_Width, "BORDER") + box.ParseFloat(box.Padding_Right, "FLOAT");
		float num3 = box.ParseFloat(box.Border_Top_Width, "BORDER") + box.ParseFloat(box.Padding_Top, "FLOAT");
		float num4 = box.ParseFloat(box.Bottom_Border_Width, "BORDER") + box.ParseFloat(box.Padding_Bottom, "FLOAT");
		if ((box.FirstHostingLineBox != null && box.FirstHostingLineBox.Equals(this)) || box.IsImage)
		{
			x -= num;
		}
		if ((box.LastHostingLineBox != null && box.LastHostingLineBox.Equals(this)) || box.IsImage)
		{
			r += num2;
		}
		if (!box.IsImage)
		{
			y -= num3;
			b += num4;
		}
		if (!Rectangles.ContainsKey(box))
		{
			Rectangles.Add(box, RectangleF.FromLTRB(x, y, r, b));
		}
		else
		{
			RectangleF rectangleF = Rectangles[box];
			Rectangles[box] = RectangleF.FromLTRB(Math.Min(rectangleF.X, x), Math.Min(rectangleF.Y, y), Math.Max(rectangleF.Right, r), Math.Max(rectangleF.Bottom, b));
		}
		if (box.ParentBox != null && box.ParentBox.Display == "inline")
		{
			ChangeRectangle(box.ParentBox, x, y, r, b);
		}
	}

	internal void AssignRectanglesToBoxes()
	{
		foreach (HtmlBox key in Rectangles.Keys)
		{
			key.Rectangles.Add(this, Rectangles[key]);
		}
	}

	public float GetBaseLineHeight(HtmlBox htmlBox, Graphics g)
	{
		Font font = htmlBox.GetFont();
		FontFamily fontFamily = font.FontFamily;
		FontStyle style = font.Style;
		return font.GetHeight(g) * (float)fontFamily.GetCellAscent(style) / (float)fontFamily.GetLineSpacing(style);
	}

	internal void SetBaseLine(Graphics g, HtmlBox box, float baseline)
	{
		List<HtmlWordBox> wordBoxes = GetWordBoxes(box);
		if (!Rectangles.ContainsKey(box))
		{
			return;
		}
		RectangleF rectangleF = Rectangles[box];
		float num = 0f;
		if (wordBoxes.Count > 0)
		{
			num = wordBoxes[0].Top - rectangleF.Top;
		}
		else
		{
			HtmlWordBox htmlWordBox = box.FirstWordMatch(box, this);
			if (htmlWordBox != null)
			{
				num = htmlWordBox.Top - rectangleF.Top;
			}
		}
		float num2 = baseline - GetBaseLineHeight(box, g);
		if (box.ParentBox != null && box.ParentBox.Rectangles.ContainsKey(this) && rectangleF.Height < box.ParentBox.Rectangles[this].Height)
		{
			float y = num2 - num;
			RectangleF value = new RectangleF(rectangleF.X, y, rectangleF.Width, rectangleF.Height);
			Rectangles[box] = value;
			box.OffsetRectangle(this, num);
		}
		foreach (HtmlWordBox item in wordBoxes)
		{
			if (!item.IsImage)
			{
				item.Top = num2;
			}
		}
	}

	public override string ToString()
	{
		string[] array = new string[Words.Count];
		for (int i = 0; i < array.Length; i++)
		{
			array[i] = Words[i].Text;
		}
		return string.Join(" ", array);
	}
}
