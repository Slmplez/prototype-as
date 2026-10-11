using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Globalization;
using System.IO;
using System.Reflection;
using System.Runtime.InteropServices;
using System.Text.RegularExpressions;

namespace Syncfusion.Windows.Forms.Tools;

[StructLayout(LayoutKind.Sequential, Size = 1)]
internal struct Do
{
	internal enum Border
	{
		Top,
		Right,
		Bottom,
		Left
	}

	internal enum Unit
	{
		None,
		Ems,
		Pixels,
		Ex,
		Inches,
		Centimeters,
		Milimeters,
		Points,
		Picas
	}

	internal static MatchCollection MatchPattern(string regex, string source)
	{
		Regex regex2 = new Regex(regex, RegexOptions.IgnoreCase | RegexOptions.Singleline);
		return regex2.Matches(source);
	}

	internal static string SearchPattern(string regex, string source)
	{
		int position;
		return SearchPattern(regex, source, out position);
	}

	internal static string SearchPattern(string regex, string source, out int position)
	{
		MatchCollection matchCollection = MatchPattern(regex, source);
		if (matchCollection.Count > 0)
		{
			position = matchCollection[0].Index;
			return matchCollection[0].Value;
		}
		position = -1;
		return null;
	}

	internal static float ParseLength(string number, float hundredPercent)
	{
		if (string.IsNullOrEmpty(number))
		{
			return 0f;
		}
		string s = number;
		bool flag = number.EndsWith("%");
		float result = 0f;
		if (flag)
		{
			s = number.Substring(0, number.Length - 1);
		}
		if (!float.TryParse(s, NumberStyles.Number, NumberFormatInfo.InvariantInfo, out result))
		{
			return 0f;
		}
		if (flag)
		{
			result = result / 100f * hundredPercent;
		}
		return result;
	}

	internal static float ParseLength(string length, float hundredPercent, HtmlBox box)
	{
		return ParseLength(length, hundredPercent, box, box.GetEmHeight(), returnPoints: false);
	}

	internal static float ParseLength(string length, float hundredPercent, HtmlBox box, float emFactor, bool returnPoints)
	{
		if (string.IsNullOrEmpty(length) || length == "0")
		{
			return 0f;
		}
		if (length.EndsWith("%"))
		{
			return ParseLength(length, hundredPercent);
		}
		if (length.Length < 3)
		{
			return 0f;
		}
		string text = length.Substring(length.Length - 2, 2);
		float num = 1f;
		string number = length.Substring(0, length.Length - 2);
		switch (text)
		{
		case "em":
			num = emFactor;
			break;
		case "px":
			num = 1f;
			break;
		case "mm":
			num = 3f;
			break;
		case "cm":
			num = 37f;
			break;
		case "in":
			num = 96f;
			break;
		case "pt":
			num = 1.3333334f;
			if (returnPoints)
			{
				return ParseLength(number, hundredPercent);
			}
			break;
		case "pc":
			num = 16f;
			break;
		default:
			num = 0f;
			break;
		}
		return num * ParseLength(number, hundredPercent);
	}

	internal static Color GetColor(string colorValue)
	{
		int num = 0;
		int num2 = 0;
		int num3 = 0;
		Color empty = Color.Empty;
		if (string.IsNullOrEmpty(colorValue))
		{
			return empty;
		}
		colorValue = colorValue.ToLower().Trim();
		if (colorValue.StartsWith("#"))
		{
			string text = colorValue.Substring(1);
			if (text.Length == 6)
			{
				num = int.Parse(text.Substring(0, 2), NumberStyles.HexNumber);
				num2 = int.Parse(text.Substring(2, 2), NumberStyles.HexNumber);
				num3 = int.Parse(text.Substring(4, 2), NumberStyles.HexNumber);
			}
			else
			{
				if (text.Length != 3)
				{
					return empty;
				}
				num = int.Parse(new string(text.Substring(0, 1)[0], 2), NumberStyles.HexNumber);
				num2 = int.Parse(new string(text.Substring(1, 1)[0], 2), NumberStyles.HexNumber);
				num3 = int.Parse(new string(text.Substring(2, 1)[0], 2), NumberStyles.HexNumber);
			}
		}
		else if (colorValue.StartsWith("rgb(") && colorValue.EndsWith(")"))
		{
			string text2 = colorValue.Substring(4, colorValue.Length - 5);
			string[] array = text2.Split(',');
			if (array.Length != 3)
			{
				return empty;
			}
			num = Convert.ToInt32(ParseLength(array[0].Trim(), 255f));
			num2 = Convert.ToInt32(ParseLength(array[1].Trim(), 255f));
			num3 = Convert.ToInt32(ParseLength(array[2].Trim(), 255f));
		}
		else
		{
			string text3 = string.Empty;
			switch (colorValue)
			{
			case "maroon":
				text3 = "#800000";
				break;
			case "red":
				text3 = "#ff0000";
				break;
			case "orange":
				text3 = "#ffA500";
				break;
			case "olive":
				text3 = "#808000";
				break;
			case "purple":
				text3 = "#800080";
				break;
			case "fuchsia":
				text3 = "#ff00ff";
				break;
			case "white":
				text3 = "#ffffff";
				break;
			case "lime":
				text3 = "#00ff00";
				break;
			case "green":
				text3 = "#008000";
				break;
			case "navy":
				text3 = "#000080";
				break;
			case "blue":
				text3 = "#0000ff";
				break;
			case "aqua":
				text3 = "#00ffff";
				break;
			case "teal":
				text3 = "#008080";
				break;
			case "black":
				text3 = "#000000";
				break;
			case "silver":
				text3 = "#c0c0c0";
				break;
			case "gray":
				text3 = "#808080";
				break;
			case "yellow":
				text3 = "#FFFF00";
				break;
			}
			if (string.IsNullOrEmpty(text3))
			{
				return empty;
			}
			Color color = GetColor(text3);
			num = color.R;
			num2 = color.G;
			num3 = color.B;
		}
		return Color.FromArgb(num, num2, num3);
	}

	internal static float GetBorderWidth(string borderValue, HtmlBox b)
	{
		if (string.IsNullOrEmpty(borderValue))
		{
			return GetBorderWidth("medium", b);
		}
		return borderValue switch
		{
			"thin" => 1f, 
			"medium" => 2f, 
			"thick" => 4f, 
			_ => Math.Abs(ParseLength(borderValue, 1f, b)), 
		};
	}

	internal static string[] SplitValues(string value)
	{
		return SplitValues(value, ' ');
	}

	internal static string[] SplitValues(string value, char separator)
	{
		if (string.IsNullOrEmpty(value))
		{
			return new string[0];
		}
		string[] array = value.Split(separator);
		List<string> list = new List<string>();
		for (int i = 0; i < array.Length; i++)
		{
			string text = array[i].Trim();
			if (!string.IsNullOrEmpty(text))
			{
				list.Add(text);
			}
		}
		return list.ToArray();
	}

	private static Type GetTypeInfo(string path, ref string moreInfo)
	{
		int num = path.LastIndexOf('.');
		if (num < 0)
		{
			return null;
		}
		string name = path.Substring(0, num);
		moreInfo = path.Substring(num + 1);
		if (moreInfo.IndexOf("(") > 0)
		{
			moreInfo = moreInfo.Substring(0, moreInfo.IndexOf("(") + 1);
		}
		moreInfo = moreInfo.Replace("(", string.Empty).Replace(")", string.Empty);
		Assembly[] assemblies = AppDomain.CurrentDomain.GetAssemblies();
		foreach (Assembly assembly in assemblies)
		{
			Type type = assembly.GetType(name, throwOnError: false, ignoreCase: true);
			if (type != null)
			{
				return type;
			}
		}
		return null;
	}

	private static object FindStyleSheetSource(string path)
	{
		if (path.StartsWith("class-method:", StringComparison.CurrentCultureIgnoreCase))
		{
			string moreInfo = string.Empty;
			Type typeInfo = GetTypeInfo(path.Substring(13), ref moreInfo);
			if (typeInfo == null)
			{
				return null;
			}
			MethodInfo method = typeInfo.GetMethod(moreInfo);
			if (!method.IsStatic)
			{
				return null;
			}
			return method;
		}
		if (path.StartsWith("class-property:", StringComparison.CurrentCultureIgnoreCase))
		{
			string moreInfo2 = string.Empty;
			Type typeInfo2 = GetTypeInfo(path.Substring(15), ref moreInfo2);
			if (typeInfo2 == null)
			{
				return null;
			}
			return typeInfo2.GetProperty(moreInfo2);
		}
		if (Uri.IsWellFormedUriString(path, UriKind.RelativeOrAbsolute))
		{
			return new Uri(path);
		}
		return new FileInfo(path);
	}

	internal static Image GetImage(string path)
	{
		object obj = FindStyleSheetSource(path);
		FileInfo fileInfo = obj as FileInfo;
		PropertyInfo propertyInfo = obj as PropertyInfo;
		MethodInfo methodInfo = obj as MethodInfo;
		try
		{
			if (fileInfo != null)
			{
				if (!fileInfo.Exists)
				{
					return null;
				}
				return Image.FromFile(fileInfo.FullName);
			}
			if (propertyInfo != null)
			{
				if (!propertyInfo.PropertyType.Equals(typeof(Image)))
				{
					return null;
				}
				return propertyInfo.GetValue(null, null) as Image;
			}
			if (methodInfo != null)
			{
				if (!methodInfo.ReturnType.Equals(typeof(Image)))
				{
					return null;
				}
				if (methodInfo.GetParameters().Length > 0)
				{
					object[] array = new object[methodInfo.GetParameters().Length];
					string text = path;
					text = text.Substring(text.IndexOf("(") + 1, text.IndexOf(")") - text.IndexOf("(") - 1);
					string[] array2 = text.Split(',');
					for (int i = 0; i < methodInfo.GetParameters().Length; i++)
					{
						array.SetValue(array2[i], i);
					}
					return methodInfo.Invoke(null, array) as Image;
				}
				return methodInfo.Invoke(null, null) as Image;
			}
			return null;
		}
		catch
		{
			return new Bitmap(50, 50);
		}
	}

	internal static string GetStyleSheet(string path)
	{
		object obj = FindStyleSheetSource(path);
		FileInfo fileInfo = obj as FileInfo;
		PropertyInfo propertyInfo = obj as PropertyInfo;
		MethodInfo methodInfo = obj as MethodInfo;
		try
		{
			if (fileInfo != null)
			{
				if (!fileInfo.Exists)
				{
					return null;
				}
				StreamReader streamReader = new StreamReader(fileInfo.FullName);
				string result = streamReader.ReadToEnd();
				streamReader.Dispose();
				return result;
			}
			if (propertyInfo != null)
			{
				if (!propertyInfo.PropertyType.Equals(typeof(string)))
				{
					return null;
				}
				return propertyInfo.GetValue(null, null) as string;
			}
			if (methodInfo != null)
			{
				if (!methodInfo.ReturnType.Equals(typeof(string)))
				{
					return null;
				}
				return methodInfo.Invoke(null, null) as string;
			}
			return string.Empty;
		}
		catch
		{
			return string.Empty;
		}
	}

	internal static void RemoveComments(ref string StyleSheetToProcess)
	{
		MatchCollection matchCollection = MatchPattern("/\\*[^*/]*\\*/", StyleSheetToProcess);
		while (matchCollection.Count > 0)
		{
			StyleSheetToProcess = StyleSheetToProcess.Remove(matchCollection[0].Index, matchCollection[0].Length);
			matchCollection = MatchPattern("/\\*[^*/]*\\*/", StyleSheetToProcess);
		}
	}

	internal static HtmlBox FindParentBox(string tagName, HtmlBox box, HtmlRootBox rootBox)
	{
		if (box == null)
		{
			return rootBox;
		}
		if (box.HtmlTag != null && box.HtmlTag.TagName.Equals(tagName, StringComparison.CurrentCultureIgnoreCase))
		{
			if (box.ParentBox != null)
			{
				return box.ParentBox;
			}
			return rootBox;
		}
		return FindParentBox(tagName, box.ParentBox, rootBox);
	}

	internal static Color DarkTheColor(Color c)
	{
		return Color.FromArgb(c.R / 2, c.G / 2, c.B / 2);
	}

	internal static GraphicsPath GetBorderPath(Border border, HtmlBox b, RectangleF r, bool isLineStart, bool isLineEnd)
	{
		PointF[] array = new PointF[4];
		float num = 0f;
		switch (border)
		{
		case Border.Top:
		{
			num = b.ParseFloat(b.Border_Top_Width, "BORDER");
			ref PointF reference13 = ref array[0];
			reference13 = new PointF(r.Left, r.Top);
			ref PointF reference14 = ref array[1];
			reference14 = new PointF(r.Right, r.Top);
			ref PointF reference15 = ref array[2];
			reference15 = new PointF(r.Right, r.Top + num);
			ref PointF reference16 = ref array[3];
			reference16 = new PointF(r.Left, r.Top + num);
			if (isLineEnd)
			{
				array[2].X -= b.ParseFloat(b.Border_Right_Width, "BORDER");
			}
			if (isLineStart)
			{
				array[3].X += b.ParseFloat(b.Border_Left_Width, "BORDER");
			}
			break;
		}
		case Border.Right:
		{
			num = b.ParseFloat(b.Border_Right_Width, "BORDER");
			ref PointF reference9 = ref array[0];
			reference9 = new PointF(r.Right - num, r.Top);
			ref PointF reference10 = ref array[1];
			reference10 = new PointF(r.Right, r.Top);
			ref PointF reference11 = ref array[2];
			reference11 = new PointF(r.Right, r.Bottom);
			ref PointF reference12 = ref array[3];
			reference12 = new PointF(r.Right - num, r.Bottom);
			array[0].Y += b.ParseFloat(b.Border_Top_Width, "BORDER");
			array[3].Y -= b.ParseFloat(b.Bottom_Border_Width, "BORDER");
			break;
		}
		case Border.Bottom:
		{
			num = b.ParseFloat(b.Bottom_Border_Width, "BORDER");
			ref PointF reference5 = ref array[0];
			reference5 = new PointF(r.Left, r.Bottom - num);
			ref PointF reference6 = ref array[1];
			reference6 = new PointF(r.Right, r.Bottom - num);
			ref PointF reference7 = ref array[2];
			reference7 = new PointF(r.Right, r.Bottom);
			ref PointF reference8 = ref array[3];
			reference8 = new PointF(r.Left, r.Bottom);
			if (isLineStart)
			{
				array[0].X += b.ParseFloat(b.Border_Left_Width, "BORDER");
			}
			if (isLineEnd)
			{
				array[1].X -= b.ParseFloat(b.Border_Right_Width, "BORDER");
			}
			break;
		}
		case Border.Left:
		{
			num = b.ParseFloat(b.Border_Left_Width, "BORDER");
			ref PointF reference = ref array[0];
			reference = new PointF(r.Left, r.Top);
			ref PointF reference2 = ref array[1];
			reference2 = new PointF(r.Left + num, r.Top);
			ref PointF reference3 = ref array[2];
			reference3 = new PointF(r.Left + num, r.Bottom);
			ref PointF reference4 = ref array[3];
			reference4 = new PointF(r.Left, r.Bottom);
			array[1].Y += b.ParseFloat(b.Border_Top_Width, "BORDER");
			array[2].Y -= b.ParseFloat(b.Bottom_Border_Width, "BORDER");
			break;
		}
		}
		return new GraphicsPath(array, new byte[4] { 1, 1, 1, 1 });
	}

	internal static void ConstructLineBoxes(Graphics g, HtmlBox blockBox)
	{
		blockBox.LineBoxes.Clear();
		float maxright = blockBox.ActualRight - blockBox.ParseFloat(blockBox.Padding_Right, "FLOAT") - blockBox.ParseFloat(blockBox.Border_Right_Width, "BORDER");
		float num = blockBox.Location.X + blockBox.ParseFloat(blockBox.Padding_Left, "FLOAT") - 0f + blockBox.ParseFloat(blockBox.Border_Left_Width, "BORDER");
		float num2 = blockBox.Location.Y + blockBox.ParseFloat(blockBox.Padding_Top, "FLOAT") - 0f + blockBox.ParseFloat(blockBox.Border_Top_Width, "BORDER");
		float curx = num + blockBox.ParseFloat(blockBox.Text_Indent, "FLOAT");
		float cury = num2;
		float maxbottom = num2;
		float linespacing = 0f;
		HtmlLineBox line = new HtmlLineBox(blockBox);
		CalcTopBottomSpacing(g, blockBox, blockBox, maxright, linespacing, num, ref line, ref curx, ref cury, ref maxbottom);
		foreach (HtmlLineBox lineBox in blockBox.LineBoxes)
		{
			BubbleRectangles(blockBox, lineBox);
			lineBox.AssignRectanglesToBoxes();
			Align(g, lineBox);
			if (blockBox.Direction == "rtl")
			{
				AlignRightToLeft(lineBox);
			}
		}
		blockBox.ActualBottom = maxbottom + blockBox.ParseFloat(blockBox.Padding_Bottom, "FLOAT") + blockBox.ParseFloat(blockBox.Bottom_Border_Width, "BORDER");
	}

	private static void CalcTopBottomSpacing(Graphics g, HtmlBox blockbox, HtmlBox box, float maxright, float linespacing, float startx, ref HtmlLineBox line, ref float curx, ref float cury, ref float maxbottom)
	{
		box.FirstHostingLineBox = line;
		foreach (HtmlBox box2 in box.Boxes)
		{
			float num = box2.ParseFloat(box2.Margin_Left, "FLOAT") + box2.ParseFloat(box2.Border_Left_Width, "BORDER") + box2.ParseFloat(box2.Padding_Left, "FLOAT");
			float num2 = box2.ParseFloat(box2.Margin_Right, "FLOAT") + box2.ParseFloat(box2.Border_Right_Width, "BORDER") + box2.ParseFloat(box2.Padding_Right, "FLOAT");
			box2.ParseFloat(box2.Border_Top_Width, "BORDER");
			box2.ParseFloat(box2.Padding_Top, "FLOAT");
			box2.ParseFloat(box2.Bottom_Border_Width, "BORDER");
			box2.ParseFloat(box2.Padding_Bottom, "FLOAT");
			box2.ClearRectangles();
			box2.CalculateWordsSize(g);
			curx += num;
			if (box2.HtmlTag != null && box2.HtmlTag.TagName.ToLower() == "br")
			{
				curx = startx;
				cury = maxbottom + 1f;
				line = new HtmlLineBox(blockbox);
			}
			if (box2.Words.Count > 0)
			{
				foreach (HtmlWordBox word in box2.Words)
				{
					if ((box2.White_Space != "nowrap" && curx + word.Width + num2 > maxright) || word.IsLineBreak)
					{
						curx = startx;
						cury = maxbottom + linespacing;
						line = new HtmlLineBox(blockbox);
						if (word.IsImage || word.Equals(box2.Words[0]))
						{
							curx += num;
						}
					}
					line.AddWordBox(word);
					word.Left = curx;
					word.Top = cury;
					curx = word.Right;
					maxbottom = Math.Max(maxbottom, word.Bottom);
				}
			}
			else
			{
				CalcTopBottomSpacing(g, blockbox, box2, maxright, linespacing, startx, ref line, ref curx, ref cury, ref maxbottom);
			}
			curx += num2;
		}
		box.LastHostingLineBox = line;
	}

	private static void BubbleRectangles(HtmlBox box, HtmlLineBox line)
	{
		if (box.Words.Count > 0)
		{
			float num = float.MaxValue;
			float num2 = float.MaxValue;
			float num3 = float.MinValue;
			float num4 = float.MinValue;
			List<HtmlWordBox> wordBoxes = line.GetWordBoxes(box);
			if (wordBoxes.Count <= 0)
			{
				return;
			}
			foreach (HtmlWordBox item in wordBoxes)
			{
				num = Math.Min(num, item.Left);
				num3 = Math.Max(num3, item.Right);
				num2 = Math.Min(num2, item.Top);
				num4 = Math.Max(num4, item.Bottom);
			}
			line.ChangeRectangle(box, num, num2, num3, num4);
			return;
		}
		foreach (HtmlBox box2 in box.Boxes)
		{
			BubbleRectangles(box2, line);
		}
	}

	internal static float WhiteSpace(Graphics g, HtmlBox box)
	{
		string text = " .";
		float num = 0f;
		float result = 5f;
		StringFormat stringFormat = new StringFormat();
		stringFormat.SetMeasurableCharacterRanges(new CharacterRange[1]
		{
			new CharacterRange(0, 1)
		});
		Region[] array = g.MeasureCharacterRanges(text, box.GetFont(), new RectangleF(0f, 0f, float.MaxValue, float.MaxValue), stringFormat);
		if (array == null || array.Length == 0)
		{
			return result;
		}
		num = array[0].GetBounds(g).Width;
		if (!string.IsNullOrEmpty(box.Word_Spacing) && !(box.Word_Spacing == "normal"))
		{
			num += ParseLength(box.Word_Spacing, 0f, box);
		}
		return num;
	}

	private static void Align(Graphics g, HtmlLineBox lineBox)
	{
		switch (lineBox.OwnerBox.Text_Align)
		{
		case "right":
			RightAlign(g, lineBox);
			break;
		case "center":
			CenterAlign(g, lineBox);
			break;
		case "justify":
			JustifyAlign(g, lineBox);
			break;
		}
		VerticalAlign(g, lineBox);
	}

	private static void AlignRightToLeft(HtmlLineBox line)
	{
		float clientLeft = line.OwnerBox.ClientLeft;
		float clientRight = line.OwnerBox.ClientRight;
		foreach (HtmlWordBox word in line.Words)
		{
			float num = word.Left - clientLeft;
			float num2 = clientRight - num;
			word.Left = num2 - word.Width;
		}
	}

	internal static float GetAscent(Font f)
	{
		return f.Size * (float)f.FontFamily.GetCellAscent(f.Style) / (float)f.FontFamily.GetEmHeight(f.Style);
	}

	internal static float GetDescent(Font font)
	{
		return font.Size * (float)font.FontFamily.GetCellDescent(font.Style) / (float)font.FontFamily.GetEmHeight(font.Style);
	}

	internal static float GetLineSpacing(Font font)
	{
		return font.Size * (float)font.FontFamily.GetLineSpacing(font.Style) / (float)font.FontFamily.GetEmHeight(font.Style);
	}

	private static void VerticalAlign(Graphics g, HtmlLineBox lineBox)
	{
		_ = lineBox.OwnerBox.Display == "table-cell";
		float num = lineBox.GetMaxWordBottom() - GetDescent(lineBox.OwnerBox.GetFont()) - 2f;
		List<HtmlBox> list = new List<HtmlBox>(lineBox.Rectangles.Keys);
		foreach (HtmlBox item in list)
		{
			GetAscent(item.GetFont());
			GetDescent(item.GetFont());
			switch (item.VerticalAlign)
			{
			case "sub":
				lineBox.SetBaseLine(g, item, num + lineBox.Rectangles[item].Height * 0.2f);
				break;
			case "super":
				lineBox.SetBaseLine(g, item, num - lineBox.Rectangles[item].Height * 0.2f);
				break;
			default:
				lineBox.SetBaseLine(g, item, num);
				break;
			case "text-top":
			case "text-bottom":
			case "top":
			case "bottom":
			case "middle":
				break;
			}
		}
	}

	internal static void CellVerticalAlign(Graphics g, HtmlBox cell)
	{
		if (cell.VerticalAlign == "top" || cell.VerticalAlign == "baseline")
		{
			return;
		}
		_ = cell.ClientTop;
		float clientBottom = cell.ClientBottom;
		float maxBottom = cell.GetMaxBottom(cell, 0f);
		float amount = 0f;
		if (cell.VerticalAlign == "bottom")
		{
			amount = clientBottom - maxBottom;
		}
		else if (cell.VerticalAlign == "middle")
		{
			amount = (clientBottom - maxBottom) / 2f;
		}
		foreach (HtmlBox box in cell.Boxes)
		{
			box.OffsetTop(amount);
		}
	}

	private static void JustifyAlign(Graphics g, HtmlLineBox lineBox)
	{
		if (lineBox.Equals(lineBox.OwnerBox.LineBoxes[lineBox.OwnerBox.LineBoxes.Count - 1]))
		{
			return;
		}
		float num = (lineBox.Equals(lineBox.OwnerBox.LineBoxes[0]) ? lineBox.OwnerBox.ParseFloat(lineBox.OwnerBox.Text_Indent, "FLOAT") : 0f);
		float num2 = 0f;
		float num3 = 0f;
		float num4 = lineBox.OwnerBox.ClientRectangle.Width - num;
		foreach (HtmlWordBox word in lineBox.Words)
		{
			num2 += word.Width;
			num3 += 1f;
		}
		if (num3 <= 0f)
		{
			return;
		}
		float num5 = (num4 - num2) / num3;
		float left = lineBox.OwnerBox.ClientLeft + num;
		foreach (HtmlWordBox word2 in lineBox.Words)
		{
			word2.Left = left;
			left = word2.Right + num5;
			if (word2 == lineBox.Words[lineBox.Words.Count - 1])
			{
				word2.Left = lineBox.OwnerBox.ClientRight - word2.Width;
			}
		}
	}

	private static void CenterAlign(Graphics g, HtmlLineBox line)
	{
		if (line.Words.Count == 0)
		{
			return;
		}
		HtmlWordBox htmlWordBox = line.Words[line.Words.Count - 1];
		float num = line.OwnerBox.ActualRight - line.OwnerBox.ParseFloat(line.OwnerBox.Padding_Right, "FLOAT") - line.OwnerBox.ParseFloat(line.OwnerBox.Border_Right_Width, "BORDER");
		float num2 = num - htmlWordBox.Right - htmlWordBox.LastMeasureOffset.X - htmlWordBox.OwnerBox.ParseFloat(htmlWordBox.OwnerBox.Border_Right_Width, "BORDER") - htmlWordBox.OwnerBox.ParseFloat(htmlWordBox.OwnerBox.Padding_Right, "FLOAT");
		num2 /= 2f;
		if (num2 <= 0f)
		{
			return;
		}
		foreach (HtmlWordBox word in line.Words)
		{
			word.Left += num2;
		}
		foreach (HtmlBox key in line.Rectangles.Keys)
		{
			RectangleF rectangleF = key.Rectangles[line];
			key.Rectangles[line] = new RectangleF(rectangleF.X + num2, rectangleF.Y, rectangleF.Width, rectangleF.Height);
		}
	}

	private static void RightAlign(Graphics g, HtmlLineBox line)
	{
		if (line.Words.Count == 0)
		{
			return;
		}
		HtmlWordBox htmlWordBox = line.Words[line.Words.Count - 1];
		float num = line.OwnerBox.ActualRight - line.OwnerBox.ParseFloat(line.OwnerBox.Padding_Right, "FLOAT") - line.OwnerBox.ParseFloat(line.OwnerBox.Border_Right_Width, "BORDER");
		float num2 = num - htmlWordBox.Right - htmlWordBox.LastMeasureOffset.X - htmlWordBox.OwnerBox.ParseFloat(htmlWordBox.OwnerBox.Border_Right_Width, "BORDER") - htmlWordBox.OwnerBox.ParseFloat(htmlWordBox.OwnerBox.Padding_Right, "FLOAT");
		if (num2 <= 0f)
		{
			return;
		}
		foreach (HtmlWordBox word in line.Words)
		{
			word.Left += num2;
		}
		foreach (HtmlBox key in line.Rectangles.Keys)
		{
			RectangleF rectangleF = key.Rectangles[line];
			key.Rectangles[line] = new RectangleF(rectangleF.X + num2, rectangleF.Y, rectangleF.Width, rectangleF.Height);
		}
	}

	internal static void SplitWords(HtmlBox Box, string WordText, List<HtmlWordBox> Words)
	{
		string text = WordText.Replace("\r", string.Empty);
		List<HtmlWordBox> list = new List<HtmlWordBox>();
		HtmlWordBox htmlWordBox = null;
		Words.Clear();
		if (string.IsNullOrEmpty(text))
		{
			return;
		}
		htmlWordBox = new HtmlWordBox(Box);
		bool flag = text[0] == ' ' || text[0] == '\t' || text[0] == '\n';
		for (int i = 0; i < text.Length; i++)
		{
			if (text[i] == ' ' || text[i] == '\t' || text[i] == '\n')
			{
				if (!flag)
				{
					if (htmlWordBox.Text.Length > 0)
					{
						list.Add(htmlWordBox);
					}
					htmlWordBox = new HtmlWordBox(Box);
				}
				if (text[i] == '\n' || text[i] == '\a')
				{
					htmlWordBox.AppendChar('\n');
					if (htmlWordBox.Text.Length > 0)
					{
						list.Add(htmlWordBox);
					}
					htmlWordBox = new HtmlWordBox(Box);
				}
				else if (text[i] == '\t')
				{
					htmlWordBox.AppendChar('\t');
					if (htmlWordBox.Text.Length > 0)
					{
						list.Add(htmlWordBox);
					}
					htmlWordBox = new HtmlWordBox(Box);
				}
				else
				{
					htmlWordBox.AppendChar(' ');
				}
				flag = true;
				continue;
			}
			if (flag)
			{
				if (htmlWordBox.Text.Length > 0)
				{
					list.Add(htmlWordBox);
				}
				htmlWordBox = new HtmlWordBox(Box);
			}
			htmlWordBox.AppendChar(text[i]);
			flag = false;
		}
		if (htmlWordBox.Text.Length > 0)
		{
			list.Add(htmlWordBox);
		}
		htmlWordBox = new HtmlWordBox(Box);
		Words.AddRange(list);
	}

	internal static string GetPropertyDefaultValue(string Value)
	{
		switch (Value.ToLower().Replace("_", "-"))
		{
		case "border-bottom-width":
		case "border-left-width":
		case "border-right-width":
		case "border-top-width":
		case "font-size":
			return "medium";
		case "border-bottom-style":
		case "border-left-style":
		case "float":
		case "border-right-style":
		case "border-top-style":
		case "background-image":
			return "none";
		case "line-height":
		case "white-space":
		case "word-spacing":
		case "font-style":
		case "font-variant":
		case "font-weight":
			return "normal";
		case "color":
		case "border-color":
		case "border-bottom-color":
		case "border-right-color":
		case "border-top-color":
		case "border-left-color":
			return "black";
		case "border-spacing":
		case "margin-bottom":
		case "margin-left":
		case "margin-top":
		case "margin-right":
		case "padding-bottom":
		case "padding-left":
		case "padding-right":
		case "padding-top":
		case "text-indent":
			return "0";
		case "width":
		case "height":
			return "auto";
		case "border-collapse":
			return "separate";
		case "background-color":
			return "transparent";
		case "background-repeat":
			return "repeat";
		case "display":
			return "inline";
		case "direction":
			return "ltr";
		case "empty-cells":
			return "show";
		case "position":
			return "static";
		case "vertical-align":
			return "baseline";
		case "font-family":
			return "serif";
		case "list-style-position":
			return "outside";
		case "list-style-type":
			return "disc";
		default:
			return "";
		}
	}

	internal static bool IsValidProperty(string Property, string sType)
	{
		bool result = false;
		if (sType == "inherited")
		{
			switch (Property.ToLower().Replace("_", "-"))
			{
			case "border-spacing":
			case "border-collapse":
			case "color":
			case "empty-cells":
			case "vertical-align":
			case "text-indent":
			case "text-align":
			case "white-space":
			case "font":
			case "font-style":
			case "font-family":
			case "font-variant":
			case "font-size":
			case "font-weight":
			case "list-style":
			case "list-style-position":
			case "list-style-image":
			case "list-style-type":
				result = true;
				break;
			}
		}
		if (sType != "inherited")
		{
			switch (Property.ToLower().Replace("_", "-"))
			{
			case "border-bottom-width":
			case "border-left-width":
			case "border-right-width":
			case "border-top-width":
			case "border-width":
			case "border-bottom-style":
			case "border-left-style":
			case "border-right-style":
			case "border-style":
			case "border-top-style":
			case "border-color":
			case "border-bottom-color":
			case "border-left-color":
			case "border-right-color":
			case "border-top-color":
			case "border":
			case "border-bottom":
			case "border-left":
			case "border-right":
			case "border-top":
			case "border-spacing":
			case "border-collapse":
			case "margin":
			case "margin-bottom":
			case "margin-left":
			case "margin-right":
			case "margin-top":
			case "padding":
			case "padding-bottom":
			case "padding-left":
			case "padding-right":
			case "padding-top":
			case "width":
			case "height":
			case "background-color":
			case "background-image":
			case "background-repeat":
			case "color":
			case "display":
			case "direction":
			case "empty-cells":
			case "float":
			case "position":
			case "line-height":
			case "vertical-align":
			case "text-indent":
			case "text-align":
			case "text-decoration":
			case "white-space":
			case "word-spacing":
			case "font":
			case "font-style":
			case "font-family":
			case "font-variant":
			case "font-size":
			case "font-weight":
			case "list-style":
			case "list-style-position":
			case "list-style-image":
			case "list-style-type":
				result = true;
				break;
			}
		}
		return result;
	}

	internal static Unit GetUnit(string length)
	{
		Unit result = Unit.None;
		if (string.IsNullOrEmpty(length) || length == "0")
		{
			return result;
		}
		if (length.EndsWith("%"))
		{
			return result;
		}
		if (length.Length < 3)
		{
			return result;
		}
		return length.Substring(length.Length - 2, 2) switch
		{
			"em" => Unit.Ems, 
			"ex" => Unit.Ex, 
			"px" => Unit.Pixels, 
			"mm" => Unit.Milimeters, 
			"cm" => Unit.Centimeters, 
			"in" => Unit.Inches, 
			"pt" => Unit.Points, 
			"pc" => Unit.Picas, 
			_ => Unit.None, 
		};
	}

	internal static float GetHtmlLengthNumber(string length)
	{
		float result = 0f;
		if (length.EndsWith("%"))
		{
			return ParseLength(length, 1f);
		}
		if (length.Length < 3)
		{
			float.TryParse(length, out result);
			return result;
		}
		string s = length.Substring(0, length.Length - 2);
		float.TryParse(s, NumberStyles.Number, NumberFormatInfo.InvariantInfo, out result);
		return result;
	}

	internal static bool IsHtmlLengthHasError(string length)
	{
		float result = 0f;
		bool result2 = false;
		if (length.EndsWith("%"))
		{
			result = ParseLength(length, 1f);
			return result2;
		}
		if (length.Length < 3)
		{
			float.TryParse(length, out result);
			return true;
		}
		string s = length.Substring(0, length.Length - 2);
		if (!float.TryParse(s, NumberStyles.Number, NumberFormatInfo.InvariantInfo, out result))
		{
			result2 = true;
		}
		return result2;
	}

	internal static string ConvertEmToPixels(float pixelFactor, string length, bool point)
	{
		float htmlLengthNumber = GetHtmlLengthNumber(length);
		if (length.EndsWith("%"))
		{
			return "";
		}
		if (GetUnit(length) != Unit.Ems)
		{
			return string.Format(NumberFormatInfo.InvariantInfo, "{0}%", new object[1] { htmlLengthNumber });
		}
		if (point)
		{
			return GetLengthString(string.Format("{0}pt", Convert.ToSingle(htmlLengthNumber * pixelFactor).ToString("0.0", NumberFormatInfo.InvariantInfo)));
		}
		return GetLengthString(string.Format("{0}px", Convert.ToSingle(htmlLengthNumber * pixelFactor).ToString("0.0", NumberFormatInfo.InvariantInfo)));
	}

	internal static string GetLengthString(string length)
	{
		string text = string.Empty;
		float htmlLengthNumber = GetHtmlLengthNumber(length);
		if (length.EndsWith("%"))
		{
			return "";
		}
		switch (GetUnit(length))
		{
		case Unit.Ems:
			text = "em";
			break;
		case Unit.Pixels:
			text = "px";
			break;
		case Unit.Ex:
			text = "ex";
			break;
		case Unit.Inches:
			text = "in";
			break;
		case Unit.Centimeters:
			text = "cm";
			break;
		case Unit.Milimeters:
			text = "mm";
			break;
		case Unit.Points:
			text = "pt";
			break;
		case Unit.Picas:
			text = "pc";
			break;
		}
		return string.Format(NumberFormatInfo.InvariantInfo, "{0}{1}", new object[2] { htmlLengthNumber, text });
	}
}
