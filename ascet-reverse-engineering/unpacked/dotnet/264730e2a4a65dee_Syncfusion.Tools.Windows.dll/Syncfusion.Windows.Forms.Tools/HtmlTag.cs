using System.Collections.Generic;
using System.Text.RegularExpressions;

namespace Syncfusion.Windows.Forms.Tools;

internal class HtmlTag
{
	private string tagName;

	private bool isClosing;

	private Dictionary<string, string> attributes;

	public Dictionary<string, string> Attributes => attributes;

	public string TagName => tagName;

	public bool IsClosing => isClosing;

	public bool IsSingle
	{
		get
		{
			if (!TagName.StartsWith("!"))
			{
				return new List<string>(new string[13]
				{
					"area", "base", "basefont", "br", "col", "frame", "hr", "img", "input", "isindex",
					"link", "meta", "param"
				}).Contains(TagName);
			}
			return true;
		}
	}

	private HtmlTag()
	{
		attributes = new Dictionary<string, string>();
	}

	public HtmlTag(string tag)
		: this()
	{
		tag = tag.Substring(1, tag.Length - 2);
		int num = tag.IndexOf(" ");
		if (num < 0)
		{
			tagName = tag;
		}
		else
		{
			tagName = tag.Substring(0, num);
		}
		if (tagName.StartsWith("/"))
		{
			isClosing = true;
			tagName = tagName.Substring(1);
		}
		tagName = tagName.ToLower();
		MatchCollection matchCollection = Do.MatchPattern("[^\\s]*\\s*=\\s*(\"[^\"]*\"|[^\\s]*)", tag);
		foreach (Match item in matchCollection)
		{
			string[] array = item.Value.Split('=');
			if (array.Length == 1)
			{
				if (!Attributes.ContainsKey(array[0]))
				{
					Attributes.Add(array[0].ToLower(), string.Empty);
				}
			}
			else if (array.Length == 2)
			{
				string key = array[0].Trim();
				string text = array[1].Trim();
				if (text.StartsWith("\"") && text.EndsWith("\"") && text.Length > 2)
				{
					text = text.Substring(1, text.Length - 2);
				}
				if (!Attributes.ContainsKey(key))
				{
					Attributes.Add(key, text);
				}
			}
		}
	}

	public void AssignAttributesValues(HtmlBox box)
	{
		string text = TagName.ToUpper();
		foreach (string key in Attributes.Keys)
		{
			string text2 = Attributes[key];
			switch (key)
			{
			case "align":
				switch (text2)
				{
				case "left":
				case "center":
				case "right":
				case "justify":
					box.Text_Align = text2;
					break;
				default:
					box.VerticalAlign = text2;
					break;
				}
				break;
			case "background":
				box.Background_Image = text2;
				break;
			case "bgcolor":
				box.Background_Color = text2;
				break;
			case "border":
				box.Border_Width = PixelLength(text2);
				if (text == "TABLE")
				{
					AssignTableBorder(box, text2);
				}
				else
				{
					box.Border_Style = "solid";
				}
				break;
			case "bordercolor":
				box.Border_Color = text2;
				break;
			case "cellspacing":
				box.Border_Spacing = PixelLength(text2);
				break;
			case "cellpadding":
				AssignTablePadding(box, text2);
				break;
			case "color":
				box.Color = text2;
				break;
			case "dir":
				box.Direction = text2;
				break;
			case "face":
				box.Font_Family = text2;
				break;
			case "height":
				box.Height = PixelLength(text2);
				break;
			case "hspace":
			{
				string margin_Right = (box.Margin_Left = PixelLength(text2));
				box.Margin_Right = margin_Right;
				break;
			}
			case "nowrap":
				box.White_Space = "nowrap";
				break;
			case "size":
				if (text == "HR")
				{
					box.Height = PixelLength(text2);
				}
				if (text == "FONT")
				{
					box.Font_Size = PixelLength(text2);
				}
				break;
			case "valign":
				box.VerticalAlign = text2;
				break;
			case "vspace":
			{
				string margin_Top = (box.Margin_Bottom = PixelLength(text2));
				box.Margin_Top = margin_Top;
				break;
			}
			case "width":
				box.Width = PixelLength(text2);
				break;
			}
		}
	}

	private string PixelLength(string htmlLength)
	{
		if (Do.IsHtmlLengthHasError(htmlLength))
		{
			return htmlLength + "px";
		}
		return htmlLength;
	}

	private void AssignTableBorder(HtmlBox table, string border)
	{
		foreach (HtmlBox box in table.Boxes)
		{
			foreach (HtmlBox box2 in box.Boxes)
			{
				box2.Border_Width = PixelLength(border);
			}
		}
	}

	private void AssignTablePadding(HtmlBox table, string padding)
	{
		foreach (HtmlBox box in table.Boxes)
		{
			foreach (HtmlBox box2 in box.Boxes)
			{
				box2.Padding = PixelLength(padding);
			}
		}
	}

	public bool IsAttributeExists(string attribute)
	{
		return Attributes.ContainsKey(attribute);
	}

	public override string ToString()
	{
		return string.Format("<{1}{0}>", TagName, IsClosing ? "/" : string.Empty);
	}
}
