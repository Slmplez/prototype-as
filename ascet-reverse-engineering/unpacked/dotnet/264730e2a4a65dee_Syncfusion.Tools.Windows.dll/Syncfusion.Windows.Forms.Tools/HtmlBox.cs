using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Reflection;
using System.Text.RegularExpressions;

namespace Syncfusion.Windows.Forms.Tools;

internal class HtmlBox
{
	public static Dictionary<string, PropertyInfo> properties;

	private static Dictionary<string, string> defaults;

	private static List<PropertyInfo> inheritables;

	private float lfCalculatedWordSpacing = float.NaN;

	private string backgroundColor;

	private string backgroundImage;

	private string backgroundRepeat;

	private string borderTopWidth;

	private string borderRightWidth;

	private string borderBottomWidth;

	private string borderLeftWidth;

	private string borderWidth;

	private string borderTopColor;

	private string borderRightColor;

	private string borderBottomColor;

	private string borderLeftColor;

	private string borderColor;

	private string borderTopStyle;

	private string borderRightStyle;

	private string borderBottomStyle;

	private string borderLeftStyle;

	private string borderStyle;

	private string borderBottom;

	private string borderLeft;

	private string borderRight;

	private string borderTop;

	private string borderSpacing;

	private string borderCollapse;

	private string border;

	private string color;

	private string emptyCells;

	private string direction;

	private string display;

	private string font;

	private string fontFamily;

	private string fontSize;

	private string fontStyle;

	private string fontVariant;

	private string fontWeight;

	private string lfloat;

	private string height;

	private string marginBottom;

	private string marginLeft;

	private string marginRight;

	private string marginTop;

	private string margin;

	private string lineHeight;

	private string listStyleType;

	private string listStyleImage;

	private string listStylePosition;

	private string listStyle;

	private string paddingLeft;

	private string paddingBottom;

	private string paddingRight;

	private string paddingTop;

	private string padding;

	private string text;

	private string textAlign;

	private string textDecoration;

	private string textIndent;

	private string position;

	private string verticalAlign;

	private string width;

	private string wordSpacing;

	private string whiteSpace;

	private List<HtmlWordBox> boxWords;

	private List<HtmlBox> boxes;

	private HtmlBox parentBox;

	private bool wordsSizeMeasured;

	private SizeF size;

	private PointF location;

	private List<HtmlLineBox> lineBoxes;

	private List<HtmlLineBox> parentLineBoxes;

	private float fontLineSpacing = float.NaN;

	private HtmlTag htmltag;

	private Dictionary<HtmlLineBox, RectangleF> rectangles;

	protected HtmlRootBox htmlRootBox;

	private HtmlBox listItemBox;

	private HtmlLineBox firstHostingLineBox;

	private HtmlLineBox lastHostingLineBox;

	private bool isAnonymous;

	private bool isAnonymousSpace;

	private bool isAnonymousBlock;

	private bool isAnonymousSpaceBlock;

	public bool TableFixed;

	public string Bottom_Border_Width
	{
		get
		{
			return borderBottomWidth;
		}
		set
		{
			borderBottomWidth = value;
		}
	}

	public string Border_Left_Width
	{
		get
		{
			return borderLeftWidth;
		}
		set
		{
			borderLeftWidth = value;
		}
	}

	public string Border_Right_Width
	{
		get
		{
			return borderRightWidth;
		}
		set
		{
			borderRightWidth = value;
		}
	}

	public string Border_Top_Width
	{
		get
		{
			return borderTopWidth;
		}
		set
		{
			borderTopWidth = value;
		}
	}

	public string Border_Width
	{
		get
		{
			return borderWidth;
		}
		set
		{
			borderWidth = value;
			string[] array = Do.SplitValues(value);
			switch (array.Length)
			{
			case 1:
			{
				string text4 = (Bottom_Border_Width = array[0]);
				string text6 = (Border_Right_Width = text4);
				string border_Top_Width2 = (Border_Left_Width = text6);
				Border_Top_Width = border_Top_Width2;
				break;
			}
			case 2:
			{
				string border_Top_Width = (Bottom_Border_Width = array[0]);
				Border_Top_Width = border_Top_Width;
				string border_Left_Width2 = (Border_Right_Width = array[1]);
				Border_Left_Width = border_Left_Width2;
				break;
			}
			case 3:
			{
				Border_Top_Width = array[0];
				string border_Left_Width = (Border_Right_Width = array[1]);
				Border_Left_Width = border_Left_Width;
				Bottom_Border_Width = array[2];
				break;
			}
			case 4:
				Border_Top_Width = array[0];
				Border_Right_Width = array[1];
				Bottom_Border_Width = array[2];
				Border_Left_Width = array[3];
				break;
			}
		}
	}

	public string Border_Bottom_Style
	{
		get
		{
			return borderBottomStyle;
		}
		set
		{
			borderBottomStyle = value;
		}
	}

	public string Border_Left_Style
	{
		get
		{
			return borderLeftStyle;
		}
		set
		{
			borderLeftStyle = value;
		}
	}

	public string Border_Right_Style
	{
		get
		{
			return borderRightStyle;
		}
		set
		{
			borderRightStyle = value;
		}
	}

	public string Border_Style
	{
		get
		{
			return borderStyle;
		}
		set
		{
			borderStyle = value;
			string[] array = Do.SplitValues(value);
			switch (array.Length)
			{
			case 1:
			{
				string text4 = (Border_Bottom_Style = array[0]);
				string text6 = (Border_Right_Style = text4);
				string border_Top_Style2 = (Border_Left_Style = text6);
				Border_Top_Style = border_Top_Style2;
				break;
			}
			case 2:
			{
				string border_Top_Style = (Border_Bottom_Style = array[0]);
				Border_Top_Style = border_Top_Style;
				string border_Left_Style2 = (Border_Right_Style = array[1]);
				Border_Left_Style = border_Left_Style2;
				break;
			}
			case 3:
			{
				Border_Top_Style = array[0];
				string border_Left_Style = (Border_Right_Style = array[1]);
				Border_Left_Style = border_Left_Style;
				Border_Bottom_Style = array[2];
				break;
			}
			case 4:
				Border_Top_Style = array[0];
				Border_Right_Style = array[1];
				Border_Bottom_Style = array[2];
				Border_Left_Style = array[3];
				break;
			}
		}
	}

	public string Border_Top_Style
	{
		get
		{
			return borderTopStyle;
		}
		set
		{
			borderTopStyle = value;
		}
	}

	public string Border_Color
	{
		get
		{
			return borderColor;
		}
		set
		{
			borderColor = value;
			MatchCollection matchCollection = Do.MatchPattern("(#\\S{6}|#\\S{3}|rgb\\(\\s*[0-9]{1,3}\\%?\\s*\\,\\s*[0-9]{1,3}\\%?\\s*\\,\\s*[0-9]{1,3}\\%?\\s*\\)|maroon|red|orange|yellow|olive|purple|fuchsia|white|lime|green|navy|blue|aqua|teal|black|silver|gray)", value);
			string[] array = new string[matchCollection.Count];
			for (int i = 0; i < array.Length; i++)
			{
				array[i] = matchCollection[i].Value;
			}
			switch (array.Length)
			{
			case 1:
			{
				string text4 = (Border_Bottom_Color = array[0]);
				string text6 = (Border_Right_Color = text4);
				string border_Top_Color2 = (Border_Left_Color = text6);
				Border_Top_Color = border_Top_Color2;
				break;
			}
			case 2:
			{
				string border_Top_Color = (Border_Bottom_Color = array[0]);
				Border_Top_Color = border_Top_Color;
				string border_Left_Color2 = (Border_Right_Color = array[1]);
				Border_Left_Color = border_Left_Color2;
				break;
			}
			case 3:
			{
				Border_Top_Color = array[0];
				string border_Left_Color = (Border_Right_Color = array[1]);
				Border_Left_Color = border_Left_Color;
				Border_Bottom_Color = array[2];
				break;
			}
			case 4:
				Border_Top_Color = array[0];
				Border_Right_Color = array[1];
				Border_Bottom_Color = array[2];
				Border_Left_Color = array[3];
				break;
			}
		}
	}

	public string Border_Bottom_Color
	{
		get
		{
			return borderBottomColor;
		}
		set
		{
			borderBottomColor = value;
		}
	}

	public string Border_Left_Color
	{
		get
		{
			return borderLeftColor;
		}
		set
		{
			borderLeftColor = value;
		}
	}

	public string Border_Right_Color
	{
		get
		{
			return borderRightColor;
		}
		set
		{
			borderRightColor = value;
		}
	}

	public string Border_Top_Color
	{
		get
		{
			return borderTopColor;
		}
		set
		{
			borderTopColor = value;
		}
	}

	public string Border
	{
		get
		{
			return border;
		}
		set
		{
			border = value;
			string text = Do.SearchPattern("(([0-9]+|[0-9]*\\.[0-9]+)(em|ex|px|in|cm|mm|pt|pc)|thin|medium|thick)", value);
			string text2 = Do.SearchPattern("(none|hidden|dotted|dashed|solid|double|groove|ridge|inset|outset)", value);
			string text3 = Do.SearchPattern("(#\\S{6}|#\\S{3}|rgb\\(\\s*[0-9]{1,3}\\%?\\s*\\,\\s*[0-9]{1,3}\\%?\\s*\\,\\s*[0-9]{1,3}\\%?\\s*\\)|maroon|red|orange|yellow|olive|purple|fuchsia|white|lime|green|navy|blue|aqua|teal|black|silver|gray)", value);
			if (text != null)
			{
				Border_Width = text;
			}
			if (text2 != null)
			{
				Border_Style = text2;
			}
			if (text3 != null)
			{
				Border_Color = text3;
			}
		}
	}

	public string Border_Bottom
	{
		get
		{
			return borderBottom;
		}
		set
		{
			borderBottom = value;
			string text = Do.SearchPattern("(([0-9]+|[0-9]*\\.[0-9]+)(em|ex|px|in|cm|mm|pt|pc)|thin|medium|thick)", value);
			string text2 = Do.SearchPattern("(none|hidden|dotted|dashed|solid|double|groove|ridge|inset|outset)", value);
			string text3 = Do.SearchPattern("(#\\S{6}|#\\S{3}|rgb\\(\\s*[0-9]{1,3}\\%?\\s*\\,\\s*[0-9]{1,3}\\%?\\s*\\,\\s*[0-9]{1,3}\\%?\\s*\\)|maroon|red|orange|yellow|olive|purple|fuchsia|white|lime|green|navy|blue|aqua|teal|black|silver|gray)", value);
			if (text != null)
			{
				Bottom_Border_Width = text;
			}
			if (text2 != null)
			{
				Border_Bottom_Style = text2;
			}
			if (text3 != null)
			{
				Border_Bottom_Color = text3;
			}
		}
	}

	public string Border_Left
	{
		get
		{
			return borderLeft;
		}
		set
		{
			borderLeft = value;
			string text = Do.SearchPattern("(([0-9]+|[0-9]*\\.[0-9]+)(em|ex|px|in|cm|mm|pt|pc)|thin|medium|thick)", value);
			string text2 = Do.SearchPattern("(none|hidden|dotted|dashed|solid|double|groove|ridge|inset|outset)", value);
			string text3 = Do.SearchPattern("(#\\S{6}|#\\S{3}|rgb\\(\\s*[0-9]{1,3}\\%?\\s*\\,\\s*[0-9]{1,3}\\%?\\s*\\,\\s*[0-9]{1,3}\\%?\\s*\\)|maroon|red|orange|yellow|olive|purple|fuchsia|white|lime|green|navy|blue|aqua|teal|black|silver|gray)", value);
			if (text != null)
			{
				Border_Left_Width = text;
			}
			if (text2 != null)
			{
				Border_Left_Style = text2;
			}
			if (text3 != null)
			{
				Border_Left_Color = text3;
			}
		}
	}

	public string Border_Right
	{
		get
		{
			return borderRight;
		}
		set
		{
			borderRight = value;
			string text = Do.SearchPattern("(([0-9]+|[0-9]*\\.[0-9]+)(em|ex|px|in|cm|mm|pt|pc)|thin|medium|thick)", value);
			string text2 = Do.SearchPattern("(none|hidden|dotted|dashed|solid|double|groove|ridge|inset|outset)", value);
			string text3 = Do.SearchPattern("(#\\S{6}|#\\S{3}|rgb\\(\\s*[0-9]{1,3}\\%?\\s*\\,\\s*[0-9]{1,3}\\%?\\s*\\,\\s*[0-9]{1,3}\\%?\\s*\\)|maroon|red|orange|yellow|olive|purple|fuchsia|white|lime|green|navy|blue|aqua|teal|black|silver|gray)", value);
			if (text != null)
			{
				Border_Right_Width = text;
			}
			if (text2 != null)
			{
				Border_Right_Style = text2;
			}
			if (text3 != null)
			{
				Border_Right_Color = text3;
			}
		}
	}

	public string Border_Top
	{
		get
		{
			return borderTop;
		}
		set
		{
			borderTop = value;
			string text = Do.SearchPattern("(([0-9]+|[0-9]*\\.[0-9]+)(em|ex|px|in|cm|mm|pt|pc)|thin|medium|thick)", value);
			string text2 = Do.SearchPattern("(none|hidden|dotted|dashed|solid|double|groove|ridge|inset|outset)", value);
			string text3 = Do.SearchPattern("(#\\S{6}|#\\S{3}|rgb\\(\\s*[0-9]{1,3}\\%?\\s*\\,\\s*[0-9]{1,3}\\%?\\s*\\,\\s*[0-9]{1,3}\\%?\\s*\\)|maroon|red|orange|yellow|olive|purple|fuchsia|white|lime|green|navy|blue|aqua|teal|black|silver|gray)", value);
			if (text != null)
			{
				Border_Top_Width = text;
			}
			if (text2 != null)
			{
				Border_Top_Style = text2;
			}
			if (text3 != null)
			{
				Border_Top_Color = text3;
			}
		}
	}

	public string Border_Spacing
	{
		get
		{
			return borderSpacing;
		}
		set
		{
			borderSpacing = value;
		}
	}

	public string Border_Collapse
	{
		get
		{
			return borderCollapse;
		}
		set
		{
			borderCollapse = value;
		}
	}

	public string Margin
	{
		get
		{
			return margin;
		}
		set
		{
			margin = value;
			string[] array = Do.SplitValues(value);
			switch (array.Length)
			{
			case 1:
			{
				string text4 = (Margin_Bottom = array[0]);
				string text6 = (Margin_Right = text4);
				string margin_Top2 = (Margin_Left = text6);
				Margin_Top = margin_Top2;
				break;
			}
			case 2:
			{
				string margin_Top = (Margin_Bottom = array[0]);
				Margin_Top = margin_Top;
				string margin_Left2 = (Margin_Right = array[1]);
				Margin_Left = margin_Left2;
				break;
			}
			case 3:
			{
				Margin_Top = array[0];
				string margin_Left = (Margin_Right = array[1]);
				Margin_Left = margin_Left;
				Margin_Bottom = array[2];
				break;
			}
			case 4:
				Margin_Top = array[0];
				Margin_Right = array[1];
				Margin_Bottom = array[2];
				Margin_Left = array[3];
				break;
			}
		}
	}

	public string Margin_Bottom
	{
		get
		{
			return marginBottom;
		}
		set
		{
			marginBottom = value;
		}
	}

	public string Margin_Left
	{
		get
		{
			return marginLeft;
		}
		set
		{
			marginLeft = value;
		}
	}

	public string Margin_Right
	{
		get
		{
			return marginRight;
		}
		set
		{
			marginRight = value;
		}
	}

	public string Margin_Top
	{
		get
		{
			return marginTop;
		}
		set
		{
			marginTop = value;
		}
	}

	public string Padding
	{
		get
		{
			return padding;
		}
		set
		{
			padding = value;
			string[] array = Do.SplitValues(value);
			switch (array.Length)
			{
			case 1:
			{
				string text4 = (Padding_Bottom = array[0]);
				string text6 = (Padding_Right = text4);
				string padding_Top2 = (Padding_Left = text6);
				Padding_Top = padding_Top2;
				break;
			}
			case 2:
			{
				string padding_Top = (Padding_Bottom = array[0]);
				Padding_Top = padding_Top;
				string padding_Left2 = (Padding_Right = array[1]);
				Padding_Left = padding_Left2;
				break;
			}
			case 3:
			{
				Padding_Top = array[0];
				string padding_Left = (Padding_Right = array[1]);
				Padding_Left = padding_Left;
				Padding_Bottom = array[2];
				break;
			}
			case 4:
				Padding_Top = array[0];
				Padding_Right = array[1];
				Padding_Bottom = array[2];
				Padding_Left = array[3];
				break;
			}
		}
	}

	public string Padding_Bottom
	{
		get
		{
			return paddingBottom;
		}
		set
		{
			paddingBottom = value;
		}
	}

	public string Padding_Left
	{
		get
		{
			return paddingLeft;
		}
		set
		{
			paddingLeft = value;
		}
	}

	public string Padding_Right
	{
		get
		{
			return paddingRight;
		}
		set
		{
			paddingRight = value;
		}
	}

	public string Padding_Top
	{
		get
		{
			return paddingTop;
		}
		set
		{
			paddingTop = value;
		}
	}

	public string Width
	{
		get
		{
			return width;
		}
		set
		{
			width = value;
		}
	}

	public string Height
	{
		get
		{
			return height;
		}
		set
		{
			height = value;
		}
	}

	public string Background_Color
	{
		get
		{
			return backgroundColor;
		}
		set
		{
			backgroundColor = value;
		}
	}

	public string Background_Image
	{
		get
		{
			return backgroundImage;
		}
		set
		{
			backgroundImage = value;
		}
	}

	public string Background_Repeat
	{
		get
		{
			return backgroundRepeat;
		}
		set
		{
			backgroundRepeat = value;
		}
	}

	public string Color
	{
		get
		{
			return color;
		}
		set
		{
			color = value;
		}
	}

	public string Display
	{
		get
		{
			return display;
		}
		set
		{
			display = value;
		}
	}

	public string Direction
	{
		get
		{
			return direction;
		}
		set
		{
			direction = value;
		}
	}

	public string Empty_Cells
	{
		get
		{
			return emptyCells;
		}
		set
		{
			emptyCells = value;
		}
	}

	public string Float
	{
		get
		{
			return lfloat;
		}
		set
		{
			lfloat = value;
		}
	}

	public string Position
	{
		get
		{
			return position;
		}
		set
		{
			position = value;
		}
	}

	public string Line_Height
	{
		get
		{
			return lineHeight;
		}
		set
		{
			lineHeight = CalcPixel(value);
		}
	}

	public string VerticalAlign
	{
		get
		{
			return verticalAlign;
		}
		set
		{
			verticalAlign = value;
		}
	}

	public string Text_Indent
	{
		get
		{
			return textIndent;
		}
		set
		{
			textIndent = CalcPixel(value);
		}
	}

	public string Text_Align
	{
		get
		{
			return textAlign;
		}
		set
		{
			textAlign = value;
		}
	}

	public string Text_Decoration
	{
		get
		{
			return textDecoration;
		}
		set
		{
			textDecoration = value;
		}
	}

	public string White_Space
	{
		get
		{
			return whiteSpace;
		}
		set
		{
			whiteSpace = value;
		}
	}

	public string Word_Spacing
	{
		get
		{
			return wordSpacing;
		}
		set
		{
			wordSpacing = CalcPixel(value);
		}
	}

	public string Font
	{
		get
		{
			return font;
		}
		set
		{
			font = value;
			string text = Do.SearchPattern("(([0-9]+|[0-9]*\\.[0-9]+)(em|ex|px|in|cm|mm|pt|pc)|([0-9]+|[0-9]*\\.[0-9]+)\\%|xx-small|x-small|small|medium|large|x-large|xx-large|larger|smaller)(\\/(normal|{[0-9]+|[0-9]*\\.[0-9]+}|([0-9]+|[0-9]*\\.[0-9]+)(em|ex|px|in|cm|mm|pt|pc)|([0-9]+|[0-9]*\\.[0-9]+)\\%))?(\\s|$)", value, out var num);
			if (!string.IsNullOrEmpty(text))
			{
				text = text.Trim();
				string source = value.Substring(0, num);
				string text2 = Do.SearchPattern("(normal|italic|oblique)", source);
				string text3 = Do.SearchPattern("(normal|small-caps)", source);
				string text4 = Do.SearchPattern("(normal|bold|bolder|lighter|100|200|300|400|500|600|700|800|900)", source);
				string text5 = value.Substring(num + text.Length);
				string text6 = text5.Trim();
				string text7 = text;
				string text8 = string.Empty;
				if (text.Contains("/") && text.Length > text.IndexOf("/") + 1)
				{
					int num2 = text.IndexOf("/");
					text7 = text.Substring(0, num2);
					text8 = text.Substring(num2 + 1);
				}
				if (!string.IsNullOrEmpty(text2))
				{
					Font_Style = text2;
				}
				if (!string.IsNullOrEmpty(text3))
				{
					Font_Variant = text3;
				}
				if (!string.IsNullOrEmpty(text4))
				{
					Font_Weight = text4;
				}
				if (!string.IsNullOrEmpty(text6))
				{
					Font_Family = text6;
				}
				if (!string.IsNullOrEmpty(text7))
				{
					Font_Size = text7;
				}
				if (!string.IsNullOrEmpty(text8))
				{
					Line_Height = text8;
				}
			}
		}
	}

	public string Font_Family
	{
		get
		{
			return fontFamily;
		}
		set
		{
			switch (value)
			{
			case "serif":
				fontFamily = Constants.FontSerif;
				break;
			case "sans-serif":
				fontFamily = Constants.FontSansSerif;
				break;
			case "cursive":
				fontFamily = Constants.FontCursive;
				break;
			case "fantasy":
				fontFamily = Constants.FontFantasy;
				break;
			case "monospace":
				fontFamily = Constants.FontMonospace;
				break;
			default:
				fontFamily = value;
				break;
			}
		}
	}

	public string Font_Size
	{
		get
		{
			return fontSize;
		}
		set
		{
			string text = Do.SearchPattern("([0-9]+|[0-9]*\\.[0-9]+)(em|ex|px|in|cm|mm|pt|pc)", value);
			if (text != null)
			{
				string empty = string.Empty;
				empty = (Do.IsHtmlLengthHasError(text) ? defaults["font-size"] : ((Do.GetUnit(text) != Do.Unit.Ems || ParentBox == null) ? Do.GetLengthString(text) : Do.ConvertEmToPixels(ParentBox.GetFont().SizeInPoints, text, point: true)));
				fontSize = empty;
			}
			else
			{
				fontSize = value;
			}
		}
	}

	public string Font_Style
	{
		get
		{
			return fontStyle;
		}
		set
		{
			fontStyle = value;
		}
	}

	public string Font_Variant
	{
		get
		{
			return fontVariant;
		}
		set
		{
			fontVariant = value;
		}
	}

	public string Font_Weight
	{
		get
		{
			return fontWeight;
		}
		set
		{
			fontWeight = value;
		}
	}

	public string List_Style
	{
		get
		{
			return listStyle;
		}
		set
		{
			listStyle = value;
		}
	}

	public string List_Style_Position
	{
		get
		{
			return listStylePosition;
		}
		set
		{
			listStylePosition = value;
		}
	}

	public string List_Style_Image
	{
		get
		{
			return listStyleImage;
		}
		set
		{
			listStyleImage = value;
		}
	}

	public string List_Style_Type
	{
		get
		{
			return listStyleType;
		}
		set
		{
			listStyleType = value;
		}
	}

	public HtmlBox ListItemBox => listItemBox;

	public float AvailableWidth => Size.Width - ParseFloat(Border_Left_Width, "BORDER") - ParseFloat(Padding_Left, "FLOAT") - ParseFloat(Padding_Right, "FLOAT") - ParseFloat(Border_Right_Width, "BORDER");

	public RectangleF Bounds
	{
		get
		{
			return new RectangleF(Location, Size);
		}
		set
		{
			Location = value.Location;
			Size = value.Size;
		}
	}

	public float ActualBottom
	{
		get
		{
			return Location.Y + Size.Height;
		}
		set
		{
			Size = new SizeF(Size.Width, value - Location.Y);
		}
	}

	public List<HtmlBox> Boxes => boxes;

	public float ClientLeft => Location.X + ParseFloat(Border_Left_Width, "BORDER") + ParseFloat(Padding_Left, "FLOAT");

	public float ClientTop => Location.Y + ParseFloat(Border_Top_Width, "BORDER") + ParseFloat(Padding_Top, "FLOAT");

	public float ClientRight => ActualRight - ParseFloat(Padding_Right, "FLOAT") - ParseFloat(Border_Right_Width, "BORDER");

	public float ClientBottom => ActualBottom - ParseFloat(Padding_Bottom, "FLOAT") - ParseFloat(Bottom_Border_Width, "BORDER");

	public RectangleF ClientRectangle => RectangleF.FromLTRB(ClientLeft, ClientTop, ClientRight, ClientBottom);

	public HtmlBox ContainingBlock
	{
		get
		{
			if (ParentBox == null)
			{
				return this;
			}
			HtmlBox htmlBox = ParentBox;
			while (htmlBox.Display != "block" && htmlBox.Display != "table" && htmlBox.Display != "table-cell" && htmlBox.ParentBox != null)
			{
				htmlBox = htmlBox.ParentBox;
			}
			if (htmlBox == null)
			{
				throw new Exception("There's no containing block.");
			}
			return htmlBox;
		}
	}

	public float FontLineSpacing
	{
		get
		{
			if (float.IsNaN(fontLineSpacing))
			{
				fontLineSpacing = Do.GetLineSpacing(GetFont());
			}
			return fontLineSpacing;
		}
	}

	internal HtmlLineBox FirstHostingLineBox
	{
		get
		{
			return firstHostingLineBox;
		}
		set
		{
			firstHostingLineBox = value;
		}
	}

	internal HtmlLineBox LastHostingLineBox
	{
		get
		{
			return lastHostingLineBox;
		}
		set
		{
			lastHostingLineBox = value;
		}
	}

	internal HtmlTag HtmlTag => htmltag;

	public HtmlRootBox HtmlRootBox => htmlRootBox;

	public bool IsImage
	{
		get
		{
			if (Words.Count == 1)
			{
				return Words[0].IsImage;
			}
			return false;
		}
	}

	public bool IsSpaceOrEmpty
	{
		get
		{
			if ((Words.Count == 0 && Boxes.Count == 0) || (Words.Count == 1 && Words[0].IsSpaces) || (Boxes.Count == 1 && Boxes[0].IsAnonymousSpaceBlock))
			{
				return true;
			}
			foreach (HtmlWordBox word in Words)
			{
				if (!word.IsSpaces)
				{
					return false;
				}
			}
			return true;
		}
	}

	internal List<HtmlLineBox> LineBoxes => lineBoxes;

	public PointF Location
	{
		get
		{
			return location;
		}
		set
		{
			location = value;
		}
	}

	public HtmlBox ParentBox
	{
		get
		{
			return parentBox;
		}
		set
		{
			if (parentBox != null && parentBox.Boxes.Contains(this))
			{
				parentBox.Boxes.Remove(this);
			}
			parentBox = value;
			if (value != null && !value.Boxes.Contains(this))
			{
				parentBox.Boxes.Add(this);
				htmlRootBox = value.HtmlRootBox;
			}
		}
	}

	internal List<HtmlLineBox> ParentLineBoxes => parentLineBoxes;

	internal Dictionary<HtmlLineBox, RectangleF> Rectangles => rectangles;

	public float ActualRight
	{
		get
		{
			return Location.X + Size.Width;
		}
		set
		{
			Size = new SizeF(value - Location.X, Size.Height);
		}
	}

	public SizeF Size
	{
		get
		{
			return size;
		}
		set
		{
			size = value;
		}
	}

	public string Text
	{
		get
		{
			return text;
		}
		set
		{
			text = value;
			Do.SplitWords(this, Text, Words);
		}
	}

	public bool IsAnonymous
	{
		get
		{
			return isAnonymous;
		}
		set
		{
			isAnonymous = value;
		}
	}

	public bool IsAnonymousSpace
	{
		get
		{
			return isAnonymousSpace;
		}
		set
		{
			isAnonymousSpace = value;
		}
	}

	public bool IsAnonymousBlock
	{
		get
		{
			return isAnonymousBlock;
		}
		set
		{
			isAnonymousBlock = value;
		}
	}

	public bool IsAnonymousSpaceBlock
	{
		get
		{
			return isAnonymousSpaceBlock;
		}
		set
		{
			isAnonymousSpaceBlock = value;
		}
	}

	internal List<HtmlWordBox> Words => boxWords;

	static HtmlBox()
	{
		properties = new Dictionary<string, PropertyInfo>();
		defaults = new Dictionary<string, string>();
		inheritables = new List<PropertyInfo>();
		PropertyInfo[] array = typeof(HtmlBox).GetProperties();
		for (int i = 0; i < array.Length; i++)
		{
			if (Do.IsValidProperty(array[i].Name, "Actual"))
			{
				properties.Add(array[i].Name.ToLower().Replace("_", "-"), array[i]);
				defaults.Add(array[i].Name.ToLower().Replace("_", "-"), Do.GetPropertyDefaultValue(array[i].Name));
				if (Do.IsValidProperty(array[i].Name, "inherited"))
				{
					inheritables.Add(array[i]);
				}
			}
		}
	}

	protected HtmlBox()
	{
		boxWords = new List<HtmlWordBox>();
		boxes = new List<HtmlBox>();
		lineBoxes = new List<HtmlLineBox>();
		parentLineBoxes = new List<HtmlLineBox>();
		rectangles = new Dictionary<HtmlLineBox, RectangleF>();
		foreach (string key in properties.Keys)
		{
			properties[key].SetValue(this, defaults[key], null);
		}
	}

	internal HtmlBox(HtmlBox parent, string blockType)
		: this(parent)
	{
		Display = blockType;
	}

	public HtmlBox(HtmlBox parent, HtmlBox insertBefore, string blockType)
		: this(parent, blockType)
	{
		int num = parent.Boxes.IndexOf(insertBefore);
		if (num < 0)
		{
			throw new Exception("insertBefore box doesn't exist on parent");
		}
		parent.Boxes.Remove(this);
		parent.Boxes.Insert(num, this);
	}

	public HtmlBox(HtmlBox parentBox)
		: this()
	{
		ParentBox = parentBox;
	}

	internal HtmlBox(HtmlBox parentBox, HtmlTag tag)
		: this(parentBox)
	{
		htmltag = tag;
	}

	public float ParseFloat(string Value, string sType)
	{
		float result = 0f;
		if (sType == "BORDER")
		{
			result = Do.GetBorderWidth(Border_Top_Width, this);
			if (string.IsNullOrEmpty(Border_Top_Style) || Border_Top_Style == "none")
			{
				result = 0f;
			}
		}
		if (sType == "FLOAT")
		{
			if (Value == "auto")
			{
				Value = "0";
			}
			result = Do.ParseLength(Value, Size.Width, this);
		}
		if (sType == "HORIZONTAL" || sType == "VERTICAL")
		{
			MatchCollection matchCollection = Do.MatchPattern("([0-9]+|[0-9]*\\.[0-9]+)(em|ex|px|in|cm|mm|pt|pc)", Value);
			if (matchCollection.Count == 0)
			{
				result = 0f;
			}
			else if (matchCollection.Count > 0)
			{
				result = Do.ParseLength(matchCollection[0].Value, 1f, this);
			}
			else if (sType == "VERTICAL")
			{
				result = Do.ParseLength(matchCollection[1].Value, 1f, this);
			}
		}
		return result;
	}

	public Color ParseColor(string Value)
	{
		return Do.GetColor(Value);
	}

	public Font GetFont()
	{
		if (string.IsNullOrEmpty(Font_Family))
		{
			Font_Family = Constants.FontSerif;
		}
		if (string.IsNullOrEmpty(Font_Size))
		{
			Font_Size = Constants.FontSize + "pt";
		}
		FontStyle fontStyle = FontStyle.Regular;
		if (Font_Style == "italic" || Font_Style == "oblique")
		{
			fontStyle |= FontStyle.Italic;
		}
		if (Font_Weight != "normal" && Font_Weight != "lighter" && !string.IsNullOrEmpty(Font_Weight))
		{
			fontStyle |= FontStyle.Bold;
		}
		float num = 0f;
		float num2 = Constants.FontSize;
		if (ParentBox != null)
		{
			num2 = ParentBox.GetFont().Size;
		}
		num = Font_Size switch
		{
			"medium" => Constants.FontSize, 
			"xx-small" => Constants.FontSize - 4f, 
			"x-small" => Constants.FontSize - 3f, 
			"small" => Constants.FontSize - 2f, 
			"large" => Constants.FontSize + 2f, 
			"x-large" => Constants.FontSize + 3f, 
			"xx-large" => Constants.FontSize + 4f, 
			"smaller" => num2 - 2f, 
			"larger" => num2 + 2f, 
			_ => Do.ParseLength(Font_Size, num2, this, num2, returnPoints: true), 
		};
		if (num <= 1f)
		{
			num = Constants.FontSize;
		}
		return new Font(Font_Family, num, fontStyle);
	}

	private void SetHtmlRootBox(HtmlRootBox rootBox)
	{
		htmlRootBox = rootBox;
	}

	internal bool HasInlinesOnly()
	{
		foreach (HtmlBox box in Boxes)
		{
			if (box.Display != "inline")
			{
				return false;
			}
		}
		return true;
	}

	private int GetIndexForList()
	{
		int num = 0;
		foreach (HtmlBox box in ParentBox.Boxes)
		{
			if (box.Display == "list-item")
			{
				num++;
			}
			if (box.Equals(this))
			{
				return num;
			}
		}
		return num;
	}

	private void CreateListItemBox(Graphics g)
	{
		if (!(Display == "list-item"))
		{
			return;
		}
		if (listItemBox == null)
		{
			listItemBox = new HtmlBox();
			listItemBox.InheritStyle(this);
			listItemBox.Display = "inline";
			listItemBox.SetHtmlRootBox(HtmlRootBox);
			if (ParentBox != null && List_Style_Type == "decimal")
			{
				listItemBox.Text = GetIndexForList() + ".";
			}
			else
			{
				listItemBox.Text = "•";
			}
			listItemBox.CalcBoxBounds(g);
			listItemBox.Size = new SizeF(listItemBox.Words[0].Width, listItemBox.Words[0].Height);
		}
		listItemBox.Words[0].Left = Location.X - listItemBox.Size.Width - 5f;
		listItemBox.Words[0].Top = Location.Y + ParseFloat(Padding_Top, "FLOAT");
	}

	internal HtmlWordBox FirstWordMatch(HtmlBox htmlBox, HtmlLineBox line)
	{
		if (htmlBox.Words.Count == 0 && htmlBox.Boxes.Count == 0)
		{
			return null;
		}
		if (htmlBox.Words.Count > 0)
		{
			foreach (HtmlWordBox word in htmlBox.Words)
			{
				if (line.Words.Contains(word))
				{
					return word;
				}
			}
			return null;
		}
		foreach (HtmlBox box in htmlBox.Boxes)
		{
			HtmlWordBox htmlWordBox = FirstWordMatch(box, line);
			if (htmlWordBox != null)
			{
				return htmlWordBox;
			}
		}
		return null;
	}

	internal string GetAttribute(string attribute)
	{
		return GetAttribute(attribute, string.Empty);
	}

	internal string GetAttribute(string attribute, string defaultValue)
	{
		if (HtmlTag == null)
		{
			return defaultValue;
		}
		if (!HtmlTag.IsAttributeExists(attribute))
		{
			return defaultValue;
		}
		return HtmlTag.Attributes[attribute];
	}

	public float GetEmHeight()
	{
		return GetFont().GetHeight();
	}

	private HtmlBox GetPreviousBox(HtmlBox box)
	{
		if (box.ParentBox == null)
		{
			return null;
		}
		int num = box.ParentBox.Boxes.IndexOf(this);
		if (num < 0)
		{
			throw new Exception("Child Box is not available in parent");
		}
		if (num == 0)
		{
			return null;
		}
		int num2 = 1;
		HtmlBox htmlBox = box.ParentBox.Boxes[num - num2];
		while ((htmlBox.Display == "none" || htmlBox.Position == "absolute") && num - num2 - 1 >= 0)
		{
			htmlBox = box.ParentBox.Boxes[num - ++num2];
		}
		if (!(htmlBox.Display == "none"))
		{
			return htmlBox;
		}
		return null;
	}

	internal float GetMinWidth()
	{
		float maxw = 0f;
		float sum = 0f;
		HtmlWordBox word = null;
		GetMinWidthLongWord(this, ref maxw, ref word);
		if (word != null)
		{
			GetMinWidthBubblePadding(word.OwnerBox, this, ref sum);
		}
		return maxw + sum;
	}

	private void GetMinWidthBubblePadding(HtmlBox box, HtmlBox endbox, ref float sum)
	{
		float num = box.ParseFloat(box.Border_Left_Width, "BORDER") + box.ParseFloat(box.Padding_Left, "FLOAT") + box.ParseFloat(box.Border_Right_Width, "BORDER") + box.ParseFloat(box.Padding_Right, "FLOAT");
		sum += num;
		if (!box.Equals(endbox))
		{
			GetMinWidthBubblePadding(box.ParentBox, endbox, ref sum);
		}
	}

	private void GetMinWidthLongWord(HtmlBox box, ref float maxw, ref HtmlWordBox word)
	{
		if (box.Words.Count > 0)
		{
			foreach (HtmlWordBox word2 in box.Words)
			{
				if (word2.FullWidth > maxw)
				{
					maxw = word2.FullWidth;
					word = word2;
				}
			}
			return;
		}
		foreach (HtmlBox box2 in box.Boxes)
		{
			GetMinWidthLongWord(box2, ref maxw, ref word);
		}
	}

	internal float GetMaxBottom(HtmlBox startBox, float currentMaxBottom)
	{
		foreach (HtmlLineBox key in startBox.Rectangles.Keys)
		{
			currentMaxBottom = Math.Max(currentMaxBottom, startBox.Rectangles[key].Bottom);
		}
		foreach (HtmlBox box in startBox.Boxes)
		{
			currentMaxBottom = Math.Max(currentMaxBottom, box.ActualBottom);
			currentMaxBottom = Math.Max(currentMaxBottom, GetMaxBottom(box, currentMaxBottom));
		}
		return currentMaxBottom;
	}

	internal float GetWidth(Graphics g)
	{
		float sum = 0f;
		float paddingsum = 0f;
		GetFullWordsWidth(this, g, ref sum, ref paddingsum);
		return paddingsum + sum;
	}

	private void GetFullWordsWidth(HtmlBox htmlBox, Graphics g, ref float sum, ref float paddingsum)
	{
		if (htmlBox.Display != "inline")
		{
			sum = 0f;
		}
		paddingsum += htmlBox.ParseFloat(htmlBox.Border_Left_Width, "BORDER") + htmlBox.ParseFloat(htmlBox.Border_Right_Width, "BORDER") + htmlBox.ParseFloat(htmlBox.Padding_Right, "FLOAT") + htmlBox.ParseFloat(Padding_Left, "FLOAT");
		if (htmlBox.Words.Count > 0)
		{
			foreach (HtmlWordBox word in htmlBox.Words)
			{
				sum += word.FullWidth;
			}
			return;
		}
		foreach (HtmlBox box in htmlBox.Boxes)
		{
			GetFullWordsWidth(box, g, ref sum, ref paddingsum);
		}
	}

	internal void InheritStyle(HtmlBox box)
	{
		if (box == null)
		{
			return;
		}
		IEnumerable<PropertyInfo> enumerable = inheritables;
		foreach (PropertyInfo item in enumerable)
		{
			item.SetValue(this, item.GetValue(box, null), null);
		}
	}

	private float MarginCollapse(HtmlBox htmlBox, HtmlBox box)
	{
		return Math.Max(htmlBox?.ParseFloat(htmlBox.Margin_Bottom, "FLOAT") ?? 0f, box?.ParseFloat(box.Margin_Top, "FLOAT") ?? 0f);
	}

	public virtual void CalcBoxBounds(Graphics g)
	{
		if (Display == "none")
		{
			return;
		}
		ClearRectangles();
		CalculateWordsSize(g);
		if (Display == "block" || Display == "list-item" || Display == "table" || Display == "inline-table" || Display == "table-cell" || Display == "none")
		{
			if (Display != "table-cell")
			{
				HtmlBox previousBox = GetPreviousBox(this);
				float x = ContainingBlock.Location.X + ContainingBlock.ParseFloat(ContainingBlock.Padding_Left, "FLOAT") + ParseFloat(Margin_Left, "FLOAT") + ContainingBlock.ParseFloat(ContainingBlock.Border_Left_Width, "BORDER");
				float num = ((previousBox == null && ParentBox != null) ? ParentBox.ClientTop : 0f) + MarginCollapse(previousBox, this) + ((previousBox != null) ? (previousBox.ActualBottom + previousBox.ParseFloat(previousBox.Bottom_Border_Width, "BORDER")) : 0f);
				if (ParentBox != null)
				{
					Location = new PointF(x, num);
					ActualBottom = num;
				}
			}
			if (Display != "table-cell" && Display != "table")
			{
				float minWidth = GetMinWidth();
				float num2 = ContainingBlock.Size.Width - ContainingBlock.ParseFloat(ContainingBlock.Padding_Left, "FLOAT") - ContainingBlock.ParseFloat(ContainingBlock.Padding_Right, "FLOAT") - ContainingBlock.ParseFloat(ContainingBlock.Border_Left_Width, "BORDER") - ContainingBlock.ParseFloat(ContainingBlock.Border_Right_Width, "BORDER") - ParseFloat(Margin_Left, "FLOAT") - ParseFloat(Margin_Right, "FLOAT") - ParseFloat(Border_Left_Width, "BORDER") - ParseFloat(Border_Right_Width, "BORDER");
				if (Width != "auto" && !string.IsNullOrEmpty(Width))
				{
					num2 = Do.ParseLength(Width, num2, this);
				}
				if (num2 < minWidth)
				{
					num2 = minWidth;
				}
				Size = new SizeF(num2, Size.Height);
			}
			if (Display == "table" || Display == "inline-table")
			{
				new HtmlTable(this, g);
			}
			else if (Display != "none")
			{
				if (HasInlinesOnly())
				{
					ActualBottom = Location.Y;
					Do.ConstructLineBoxes(g, this);
				}
				else
				{
					HtmlBox htmlBox = null;
					foreach (HtmlBox box in Boxes)
					{
						if (!(box.Display == "none"))
						{
							box.CalcBoxBounds(g);
							htmlBox = box;
						}
					}
					if (htmlBox != null)
					{
						ActualBottom = Math.Max(ActualBottom, htmlBox.ActualBottom + htmlBox.ParseFloat(htmlBox.Margin_Bottom, "FLOAT") + ParseFloat(Padding_Bottom, "FLOAT"));
					}
				}
			}
		}
		if (HtmlRootBox != null)
		{
			HtmlRootBox.MaxSize = new SizeF(Math.Max(HtmlRootBox.MaxSize.Width, ActualRight), Math.Max(HtmlRootBox.MaxSize.Height, ActualBottom));
		}
	}

	private void CalculateWordSpacing(Graphics g)
	{
		lfCalculatedWordSpacing = Do.WhiteSpace(g, this);
		if (Word_Spacing != "normal")
		{
			string length = Do.SearchPattern("([0-9]+|[0-9]*\\.[0-9]+)(em|ex|px|in|cm|mm|pt|pc)", Word_Spacing);
			lfCalculatedWordSpacing += Do.ParseLength(length, 1f, this);
		}
	}

	internal void CalculateWordsSize(Graphics g)
	{
		if (wordsSizeMeasured)
		{
			return;
		}
		if (float.IsNaN(lfCalculatedWordSpacing))
		{
			CalculateWordSpacing(g);
		}
		if (HtmlTag != null && HtmlTag.TagName.Equals("img", StringComparison.CurrentCultureIgnoreCase))
		{
			HtmlWordBox item = new HtmlWordBox(this, Do.GetImage(GetAttribute("src")));
			Words.Clear();
			Words.Add(item);
		}
		else
		{
			bool flag = false;
			foreach (HtmlWordBox word in Words)
			{
				bool flag2 = White_Space == "normal" || White_Space == "nowrap" || White_Space == "pre-line";
				if (White_Space == "normal" || White_Space == "nowrap")
				{
					word.ReplaceLineBreaksAndTabs();
				}
				if (word.IsSpaces)
				{
					word.Height = FontLineSpacing;
					if (word.IsTab)
					{
						word.Width = lfCalculatedWordSpacing * 4f;
					}
					else if (word.IsLineBreak)
					{
						word.Width = 0f;
					}
					else if (!flag || !flag2)
					{
						word.Width = lfCalculatedWordSpacing * (float)(flag2 ? 1 : word.Text.Length);
					}
					flag = true;
				}
				else
				{
					string text = word.Text;
					CharacterRange[] measurableCharacterRanges = new CharacterRange[1]
					{
						new CharacterRange(0, text.Length)
					};
					StringFormat stringFormat = new StringFormat();
					stringFormat.SetMeasurableCharacterRanges(measurableCharacterRanges);
					Region[] array = g.MeasureCharacterRanges(text, GetFont(), new RectangleF(0f, 0f, float.MaxValue, float.MaxValue), stringFormat);
					SizeF sizeF = array[0].GetBounds(g).Size;
					PointF pointF = array[0].GetBounds(g).Location;
					word.LastMeasureOffset = new PointF(pointF.X, pointF.Y);
					word.Width = sizeF.Width;
					word.Height = sizeF.Height;
					flag = false;
				}
			}
		}
		wordsSizeMeasured = true;
	}

	private string CalcPixel(string length)
	{
		if (Do.GetUnit(length) == Do.Unit.Ems)
		{
			length = Do.ConvertEmToPixels(GetEmHeight(), length, point: false);
		}
		return length;
	}

	internal void OffsetTop(float amount)
	{
		List<HtmlLineBox> list = new List<HtmlLineBox>();
		foreach (HtmlLineBox key in Rectangles.Keys)
		{
			list.Add(key);
		}
		foreach (HtmlLineBox item in list)
		{
			RectangleF rectangleF = Rectangles[item];
			Rectangles[item] = new RectangleF(rectangleF.X, rectangleF.Y + amount, rectangleF.Width, rectangleF.Height);
		}
		foreach (HtmlWordBox word in Words)
		{
			word.Top += amount;
		}
		foreach (HtmlBox box in Boxes)
		{
			box.OffsetTop(amount);
		}
		Location = new PointF(Location.X, Location.Y + amount);
	}

	public void Paint(Graphics g)
	{
		if (Display == "none" || (Display == "table-cell" && Empty_Cells == "hide" && IsSpaceOrEmpty))
		{
			return;
		}
		List<RectangleF> list = ((Rectangles.Count == 0) ? new List<RectangleF>(new RectangleF[1] { Bounds }) : new List<RectangleF>(Rectangles.Values));
		RectangleF[] array = list.ToArray();
		for (int i = 0; i < array.Length; i++)
		{
			RectangleF rectangle = array[i];
			PaintBackground(g, rectangle);
			PaintBorder(g, rectangle, i == 0, i == array.Length - 1);
		}
		if (IsImage)
		{
			RectangleF bounds = Words[0].Bounds;
			bounds.Height -= ParseFloat(Border_Top_Width, "BORDER") + ParseFloat(Bottom_Border_Width, "BORDER") + ParseFloat(Padding_Top, "FLOAT") + ParseFloat(Padding_Bottom, "FLOAT");
			bounds.Y += ParseFloat(Border_Top_Width, "BORDER") + ParseFloat(Padding_Top, "FLOAT");
			g.DrawImage(Words[0].Image, Rectangle.Round(bounds));
		}
		else
		{
			Font font = GetFont();
			using SolidBrush brush = new SolidBrush(Do.GetColor(Color));
			foreach (HtmlWordBox word in Words)
			{
				g.DrawString(word.Text, font, brush, word.Left - word.LastMeasureOffset.X, word.Top);
			}
		}
		for (int j = 0; j < array.Length; j++)
		{
			RectangleF rectangle2 = array[j];
			PaintAdornment(g, rectangle2, j == 0, j == array.Length - 1);
		}
		foreach (HtmlBox box in Boxes)
		{
			box.Paint(g);
		}
		CreateListItemBox(g);
		if (ListItemBox != null)
		{
			ListItemBox.Paint(g);
		}
	}

	private void PaintBorder(Graphics g, RectangleF rectangle, bool isFirst, bool isLast)
	{
		SmoothingMode smoothingMode = g.SmoothingMode;
		if (!string.IsNullOrEmpty(Border_Top_Style) && !(Border_Top_Style == "none"))
		{
			using SolidBrush solidBrush = new SolidBrush(ParseColor(Border_Top_Color));
			if (Border_Top_Style == "inset")
			{
				solidBrush.Color = Do.DarkTheColor(ParseColor(Border_Top_Color));
			}
			g.FillPath(solidBrush, Do.GetBorderPath(Do.Border.Top, this, rectangle, isFirst, isLast));
		}
		if (isLast && !string.IsNullOrEmpty(Border_Right_Style) && !(Border_Right_Style == "none"))
		{
			using SolidBrush solidBrush2 = new SolidBrush(ParseColor(Border_Right_Color));
			if (Border_Right_Style == "outset")
			{
				solidBrush2.Color = Do.DarkTheColor(ParseColor(Border_Right_Color));
			}
			g.FillPath(solidBrush2, Do.GetBorderPath(Do.Border.Right, this, rectangle, isFirst, isLast));
		}
		if (!string.IsNullOrEmpty(Border_Bottom_Style) && !(Border_Bottom_Style == "none"))
		{
			using SolidBrush solidBrush3 = new SolidBrush(ParseColor(Border_Bottom_Color));
			if (Border_Bottom_Style == "outset")
			{
				solidBrush3.Color = Do.DarkTheColor(ParseColor(Border_Bottom_Color));
			}
			g.FillPath(solidBrush3, Do.GetBorderPath(Do.Border.Bottom, this, rectangle, isFirst, isLast));
		}
		if (isFirst && !string.IsNullOrEmpty(Border_Left_Style) && !(Border_Left_Style == "none"))
		{
			using SolidBrush solidBrush4 = new SolidBrush(ParseColor(Border_Left_Color));
			if (Border_Left_Style == "inset")
			{
				solidBrush4.Color = Do.DarkTheColor(ParseColor(Border_Left_Color));
			}
			g.FillPath(solidBrush4, Do.GetBorderPath(Do.Border.Left, this, rectangle, isFirst, isLast));
		}
		g.SmoothingMode = smoothingMode;
	}

	private void PaintBackground(Graphics g, RectangleF rectangle)
	{
		if (!(ContainingBlock.Text_Align == "justify"))
		{
			Brush brush = new SolidBrush(ParseColor(Background_Color));
			SmoothingMode smoothingMode = g.SmoothingMode;
			g.FillRectangle(brush, rectangle);
			g.SmoothingMode = smoothingMode;
			brush?.Dispose();
		}
	}

	private void PaintAdornment(Graphics g, RectangleF rectangle, bool isFirst, bool isLast)
	{
		if (!string.IsNullOrEmpty(Text_Decoration) && !(Text_Decoration == "none") && !IsImage)
		{
			float descent = Do.GetDescent(GetFont());
			float ascent = Do.GetAscent(GetFont());
			float num = 0f;
			if (Text_Decoration == "underline")
			{
				num = rectangle.Bottom - descent;
			}
			else if (Text_Decoration == "line-through")
			{
				num = rectangle.Bottom - descent - ascent / 2f;
			}
			else if (Text_Decoration == "overline")
			{
				num = rectangle.Bottom - descent - ascent - 2f;
			}
			num -= ParseFloat(Padding_Bottom, "FLOAT") - ParseFloat(Bottom_Border_Width, "BORDER");
			float num2 = rectangle.X;
			float num3 = rectangle.Right;
			if (isFirst)
			{
				num2 += ParseFloat(Padding_Left, "FLOAT") + ParseFloat(Border_Left_Width, "BORDER");
			}
			if (isLast)
			{
				num3 -= ParseFloat(Padding_Right, "FLOAT") + ParseFloat(Border_Right_Width, "BORDER");
			}
			g.DrawLine(new Pen(ParseColor(Color)), num2, num, num3, num);
		}
	}

	internal void OffsetRectangle(HtmlLineBox lineBox, float gap)
	{
		if (Rectangles.ContainsKey(lineBox))
		{
			RectangleF rectangleF = Rectangles[lineBox];
			Rectangles[lineBox] = new RectangleF(rectangleF.X, rectangleF.Y + gap, rectangleF.Width, rectangleF.Height);
		}
	}

	internal void ClearRectangles()
	{
		rectangles.Clear();
	}

	internal void RemoveAnonymousSpaces()
	{
		for (int i = 0; i < Boxes.Count; i++)
		{
			if (Boxes[i].IsAnonymousSpaceBlock || Boxes[i].IsAnonymousSpace)
			{
				Boxes.RemoveAt(i);
				i--;
			}
		}
	}

	public override string ToString()
	{
		string arg = GetType().Name;
		if (HtmlTag != null)
		{
			arg = $"<{HtmlTag.TagName}>";
		}
		if (ParentBox == null)
		{
			return "HtmlRootBox";
		}
		if (Display == "block")
		{
			return string.Format("{0} BlockBox {2}, Children:{1}", arg, Boxes.Count, Font_Size);
		}
		if (Display == "none")
		{
			return $"{arg} None";
		}
		return string.Format("{0} {2}: {1}", arg, Text, Display);
	}
}
