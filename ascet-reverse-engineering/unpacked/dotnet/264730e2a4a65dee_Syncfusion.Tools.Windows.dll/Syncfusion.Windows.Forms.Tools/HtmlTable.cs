using System;
using System.Collections.Generic;
using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

internal class HtmlTable
{
	internal class HtmlSpanBox : HtmlBox
	{
		internal readonly HtmlBox ExtendedBox;

		private int startRow;

		private int endRow;

		public int EndRowIndex => endRow;

		internal HtmlSpanBox(HtmlBox tableBox, ref HtmlBox extendedBox, int startRow)
			: base(tableBox, new HtmlTag("<none colspan=" + extendedBox.GetAttribute("colspan", "1") + ">"))
		{
			ExtendedBox = extendedBox;
			base.Display = "none";
			this.startRow = startRow;
			endRow = startRow + int.Parse(extendedBox.GetAttribute("rowspan", "1")) - 1;
		}
	}

	private HtmlBox tableBox;

	private int rowCount;

	private int columnCount;

	private List<HtmlBox> bodyrows;

	private HtmlBox caption;

	private List<HtmlBox> columns;

	private HtmlBox headerBox;

	private HtmlBox footerBox;

	private List<HtmlBox> allRows;

	private float[] columnWidths;

	private bool isWidthCalculated;

	private float[] columnMinWidths;

	public bool IsWidthCalculated => isWidthCalculated;

	public List<HtmlBox> GetAllRows => allRows;

	public int GetColCount => columnCount;

	public float[] ColMinWidths
	{
		get
		{
			if (columnMinWidths == null)
			{
				columnMinWidths = new float[ColWidths.Length];
				foreach (HtmlBox getAllRow in GetAllRows)
				{
					foreach (HtmlBox box in getAllRow.Boxes)
					{
						int columnSpan = GetColumnSpan(box);
						int cellIndex = GetCellIndex(getAllRow, box);
						int num = cellIndex + columnSpan - 1;
						float num2 = GetSpanMinWidth(getAllRow, box, cellIndex, columnSpan) + (float)(columnSpan - 1) * HorizontalSpacing;
						columnMinWidths[num] = Math.Max(columnMinWidths[num], box.GetMinWidth() - num2);
					}
				}
			}
			return columnMinWidths;
		}
	}

	public List<HtmlBox> Columns => columns;

	public float[] ColWidths => columnWidths;

	public List<HtmlBox> BodyRows => bodyrows;

	public HtmlBox FooterBox => footerBox;

	public HtmlBox HeaderBox => headerBox;

	public float HorizontalSpacing
	{
		get
		{
			if (TableBox.Border_Collapse == "collapse")
			{
				return -1f;
			}
			return TableBox.ParseFloat(TableBox.Border_Spacing, "HORIZONTAL");
		}
	}

	public float VerticalSpacing
	{
		get
		{
			if (TableBox.Border_Collapse == "collapse")
			{
				return -1f;
			}
			return TableBox.ParseFloat(TableBox.Border_Spacing, "VERTICAL");
		}
	}

	public HtmlBox TableBox => tableBox;

	private HtmlTable()
	{
		bodyrows = new List<HtmlBox>();
		columns = new List<HtmlBox>();
		allRows = new List<HtmlBox>();
	}

	public HtmlTable(HtmlBox tableBox, Graphics g)
		: this()
	{
		if (!(tableBox.Display == "table") && !(tableBox.Display == "inline-table"))
		{
			throw new ArgumentException("Box is not a table", "tableBox");
		}
		this.tableBox = tableBox;
		CalculateWords(tableBox, g);
		ConstructHtmlTable(g);
	}

	private void ConstructHtmlTable(Graphics g)
	{
		GetAvailableWidth();
		float num = float.NaN;
		foreach (HtmlBox box in TableBox.Boxes)
		{
			box.RemoveAnonymousSpaces();
			switch (box.Display)
			{
			case "table-caption":
				caption = box;
				break;
			case "table-column":
			{
				for (int k = 0; k < GetSpan(box); k++)
				{
					Columns.Add(box);
				}
				break;
			}
			case "table-column-group":
				if (box.Boxes.Count == 0)
				{
					int span = GetSpan(box);
					for (int i = 0; i < span; i++)
					{
						Columns.Add(box);
					}
					break;
				}
				foreach (HtmlBox box2 in box.Boxes)
				{
					int span2 = GetSpan(box2);
					for (int j = 0; j < span2; j++)
					{
						Columns.Add(box2);
					}
				}
				break;
			case "table-footer-group":
				if (FooterBox != null)
				{
					BodyRows.Add(box);
				}
				else
				{
					footerBox = box;
				}
				break;
			case "table-header-group":
				if (HeaderBox != null)
				{
					BodyRows.Add(box);
				}
				else
				{
					headerBox = box;
				}
				break;
			case "table-row":
				BodyRows.Add(box);
				break;
			case "table-row-group":
				foreach (HtmlBox box3 in box.Boxes)
				{
					_ = box3;
					if (box.Display == "table-row")
					{
						BodyRows.Add(box);
					}
				}
				break;
			}
		}
		if (HeaderBox != null)
		{
			allRows.AddRange(HeaderBox.Boxes);
		}
		allRows.AddRange(BodyRows);
		if (FooterBox != null)
		{
			allRows.AddRange(FooterBox.Boxes);
		}
		if (!TableBox.TableFixed)
		{
			int num2 = 0;
			int num3 = 0;
			List<HtmlBox> bodyRows = BodyRows;
			foreach (HtmlBox item in bodyRows)
			{
				item.RemoveAnonymousSpaces();
				num3 = 0;
				for (int l = 0; l < item.Boxes.Count; l++)
				{
					HtmlBox extendedBox = item.Boxes[l];
					int rowSpan = GetRowSpan(extendedBox);
					int num4 = GetCellIndex(item, extendedBox);
					for (int m = num2 + 1; m < num2 + rowSpan; m++)
					{
						int num5 = 0;
						for (int n = 0; n <= bodyRows[m].Boxes.Count; n++)
						{
							if (num5 == num4)
							{
								bodyRows[m].Boxes.Insert(num5, new HtmlSpanBox(TableBox, ref extendedBox, num2));
								break;
							}
							num5++;
							num4 -= GetColumnSpan(bodyRows[m].Boxes[n]) - 1;
						}
					}
					num3++;
				}
				num2++;
			}
			TableBox.TableFixed = true;
		}
		rowCount = BodyRows.Count + ((HeaderBox != null) ? HeaderBox.Boxes.Count : 0) + ((FooterBox != null) ? FooterBox.Boxes.Count : 0);
		if (Columns.Count > 0)
		{
			columnCount = Columns.Count;
		}
		else
		{
			foreach (HtmlBox getAllRow in GetAllRows)
			{
				columnCount = Math.Max(columnCount, getAllRow.Boxes.Count);
			}
		}
		columnWidths = new float[columnCount];
		for (int num6 = 0; num6 < columnWidths.Length; num6++)
		{
			columnWidths[num6] = float.NaN;
		}
		num = GetAvailableCellWidth();
		if (Columns.Count > 0)
		{
			for (int num7 = 0; num7 < Columns.Count; num7++)
			{
				if (Do.GetHtmlLengthNumber(Columns[num7].Width) > 0f)
				{
					if (Columns[num7].Width.EndsWith("%"))
					{
						ColWidths[num7] = Do.ParseLength(Columns[num7].Width, num);
					}
					else if (Do.GetUnit(Columns[num7].Width) == Do.Unit.Pixels || Do.GetUnit(Columns[num7].Width) == Do.Unit.None)
					{
						ColWidths[num7] = Do.GetHtmlLengthNumber(Columns[num7].Width);
					}
				}
			}
		}
		else
		{
			foreach (HtmlBox getAllRow2 in GetAllRows)
			{
				for (int num8 = 0; num8 < columnCount; num8++)
				{
					if (float.IsNaN(ColWidths[num8]) && num8 < getAllRow2.Boxes.Count && getAllRow2.Boxes[num8].Display == "table-cell" && Do.GetHtmlLengthNumber(getAllRow2.Boxes[num8].Width) > 0f)
					{
						int columnSpan = GetColumnSpan(getAllRow2.Boxes[num8]);
						float num9 = 0f;
						if (getAllRow2.Boxes[num8].Width.EndsWith("%"))
						{
							num9 = Do.ParseLength(getAllRow2.Boxes[num8].Width, num);
						}
						else if (Do.GetUnit(getAllRow2.Boxes[num8].Width) == Do.Unit.Pixels || Do.GetUnit(getAllRow2.Boxes[num8].Width) == Do.Unit.None)
						{
							num9 = Do.GetHtmlLengthNumber(getAllRow2.Boxes[num8].Width);
						}
						num9 /= Convert.ToSingle(columnSpan);
						for (int num10 = num8; num10 < num8 + columnSpan; num10++)
						{
							ColWidths[num10] = num9;
						}
					}
				}
			}
		}
		if (IsWidthCalculated)
		{
			int num11 = 0;
			float num12 = 0f;
			for (int num13 = 0; num13 < ColWidths.Length; num13++)
			{
				if (float.IsNaN(ColWidths[num13]))
				{
					num11++;
				}
				else
				{
					num12 += ColWidths[num13];
				}
			}
			float num14 = (num - num12) / Convert.ToSingle(num11);
			for (int num15 = 0; num15 < ColWidths.Length; num15++)
			{
				if (float.IsNaN(ColWidths[num15]))
				{
					ColWidths[num15] = num14;
				}
			}
		}
		else
		{
			float[] array = new float[ColWidths.Length];
			foreach (HtmlBox getAllRow3 in GetAllRows)
			{
				for (int num16 = 0; num16 < getAllRow3.Boxes.Count; num16++)
				{
					int cellIndex = GetCellIndex(getAllRow3, getAllRow3.Boxes[num16]);
					if (float.IsNaN(ColWidths[cellIndex]) && num16 < getAllRow3.Boxes.Count && GetColumnSpan(getAllRow3.Boxes[num16]) == 1)
					{
						array[cellIndex] = Math.Max(array[cellIndex], getAllRow3.Boxes[num16].GetWidth(g));
					}
				}
			}
			for (int num17 = 0; num17 < ColWidths.Length; num17++)
			{
				if (float.IsNaN(ColWidths[num17]))
				{
					ColWidths[num17] = array[num17];
				}
			}
		}
		int num18 = 0;
		float num19 = 1f;
		while (GetWidthSum() > GetAvailableWidth() && IsWidthReducable())
		{
			for (; !IsWidthReducable(num18); num18++)
			{
			}
			ColWidths[num18] -= num19;
			num18++;
			if (num18 >= ColWidths.Length)
			{
				num18 = 0;
			}
		}
		foreach (HtmlBox getAllRow4 in GetAllRows)
		{
			foreach (HtmlBox box4 in getAllRow4.Boxes)
			{
				int columnSpan2 = GetColumnSpan(box4);
				int cellIndex2 = GetCellIndex(getAllRow4, box4);
				int num20 = cellIndex2 + columnSpan2 - 1;
				if (ColWidths[cellIndex2] < ColMinWidths[cellIndex2])
				{
					float num21 = ColMinWidths[cellIndex2] - ColWidths[cellIndex2];
					ColWidths[num20] = ColMinWidths[num20];
					if (cellIndex2 < ColWidths.Length - 1)
					{
						ColWidths[cellIndex2 + 1] -= num21;
					}
				}
			}
		}
		TableBox.Padding = "0";
		float num22 = TableBox.ClientLeft + HorizontalSpacing;
		float num23 = TableBox.ClientTop + VerticalSpacing;
		float num24 = num22;
		float y = num23;
		float num25 = num22;
		float num26 = 0f;
		int num27 = 0;
		foreach (HtmlBox getAllRow5 in GetAllRows)
		{
			if (getAllRow5.IsAnonymousSpaceBlock || getAllRow5.IsAnonymousSpace)
			{
				continue;
			}
			num24 = num22;
			num18 = 0;
			foreach (HtmlBox box5 in getAllRow5.Boxes)
			{
				if (num18 >= ColWidths.Length)
				{
					break;
				}
				int rowSpan2 = GetRowSpan(box5);
				float cellWidth = GetCellWidth(GetCellIndex(getAllRow5, box5), box5);
				box5.Location = new PointF(num24, y);
				box5.Size = new SizeF(cellWidth, 0f);
				box5.CalcBoxBounds(g);
				if (box5 is HtmlSpanBox htmlSpanBox)
				{
					if (htmlSpanBox.EndRowIndex == num27)
					{
						num26 = Math.Max(num26, htmlSpanBox.ExtendedBox.ActualBottom);
					}
				}
				else if (rowSpan2 == 1)
				{
					num26 = Math.Max(num26, box5.ActualBottom);
				}
				num25 = Math.Max(num25, box5.ActualRight);
				num18++;
				num24 = box5.ActualRight + HorizontalSpacing;
			}
			foreach (HtmlBox box6 in getAllRow5.Boxes)
			{
				HtmlSpanBox htmlSpanBox2 = box6 as HtmlSpanBox;
				if (htmlSpanBox2 == null && GetRowSpan(box6) == 1)
				{
					box6.ActualBottom = num26;
					Do.CellVerticalAlign(g, box6);
				}
				else if (htmlSpanBox2 != null && htmlSpanBox2.EndRowIndex == num27)
				{
					htmlSpanBox2.ExtendedBox.ActualBottom = num26;
					Do.CellVerticalAlign(g, htmlSpanBox2.ExtendedBox);
				}
			}
			y = num26 + VerticalSpacing;
			num27++;
		}
		TableBox.ActualRight = num25 + HorizontalSpacing + TableBox.ParseFloat(TableBox.Border_Right_Width, "BORDER");
		TableBox.ActualBottom = num26 + VerticalSpacing + TableBox.ParseFloat(TableBox.Bottom_Border_Width, "BORDER");
	}

	private float GetSpanMinWidth(HtmlBox row, HtmlBox cell, int realcolindex, int colspan)
	{
		float num = 0f;
		for (int i = realcolindex; i < row.Boxes.Count || i < realcolindex + colspan - 1; i++)
		{
			num += ColMinWidths[i];
		}
		return num;
	}

	private int GetCellIndex(HtmlBox row, HtmlBox cell)
	{
		int num = 0;
		foreach (HtmlBox box in row.Boxes)
		{
			if (!box.Equals(cell))
			{
				num += GetColumnSpan(box);
				continue;
			}
			break;
		}
		return num;
	}

	private float GetCellWidth(int column, HtmlBox box)
	{
		float num = Convert.ToSingle(GetColumnSpan(box));
		float num2 = 0f;
		for (int i = column; (float)i < (float)column + num; i++)
		{
			if (column >= ColWidths.Length)
			{
				break;
			}
			if (ColWidths.Length <= i)
			{
				break;
			}
			num2 += ColWidths[i];
		}
		return num2 + (num - 1f) * HorizontalSpacing;
	}

	private int GetColumnSpan(HtmlBox box)
	{
		string attribute = box.GetAttribute("colspan", "1");
		if (!int.TryParse(attribute, out var result))
		{
			return 1;
		}
		return result;
	}

	private int GetRowSpan(HtmlBox box)
	{
		string attribute = box.GetAttribute("rowspan", "1");
		if (!int.TryParse(attribute, out var result))
		{
			return 1;
		}
		return result;
	}

	private void Calculate(HtmlBox box, Graphics g)
	{
		if (box == null)
		{
			return;
		}
		foreach (HtmlBox box2 in box.Boxes)
		{
			box2.CalcBoxBounds(g);
			Calculate(box2, g);
		}
	}

	private void CalculateWords(HtmlBox box, Graphics g)
	{
		if (box == null)
		{
			return;
		}
		foreach (HtmlBox box2 in box.Boxes)
		{
			box2.CalculateWordsSize(g);
			CalculateWords(box2, g);
		}
	}

	private bool IsWidthReducable()
	{
		for (int i = 0; i < ColWidths.Length; i++)
		{
			if (IsWidthReducable(i))
			{
				return true;
			}
		}
		return false;
	}

	private bool IsWidthReducable(int columnIndex)
	{
		if (ColWidths.Length >= columnIndex || ColMinWidths.Length >= columnIndex)
		{
			return false;
		}
		return ColWidths[columnIndex] > ColMinWidths[columnIndex];
	}

	private float GetAvailableWidth()
	{
		if (Do.GetHtmlLengthNumber(TableBox.Width) > 0f)
		{
			isWidthCalculated = true;
			if (TableBox.Width.EndsWith("%"))
			{
				return Do.ParseLength(TableBox.Width, TableBox.ParentBox.AvailableWidth);
			}
			return Do.GetHtmlLengthNumber(TableBox.Width);
		}
		return TableBox.ParentBox.AvailableWidth;
	}

	private float GetAvailableCellWidth()
	{
		return GetAvailableWidth() - HorizontalSpacing * (float)(GetColCount + 1) - TableBox.ParseFloat(TableBox.Border_Left_Width, "BORDER") - TableBox.ParseFloat(TableBox.Border_Right_Width, "BORDER");
	}

	private float GetWidthSum()
	{
		float num = 0f;
		for (int i = 0; i < ColWidths.Length; i++)
		{
			if (float.IsNaN(ColWidths[i]))
			{
				throw new Exception("HtmlTable error: There's a NaN in column widths");
			}
			num += ColWidths[i];
		}
		num += HorizontalSpacing * (float)(ColWidths.Length + 1);
		return num + (TableBox.ParseFloat(TableBox.Border_Left_Width, "BORDER") + TableBox.ParseFloat(TableBox.Border_Right_Width, "BORDER"));
	}

	private int GetSpan(HtmlBox b)
	{
		float value = Do.ParseLength(b.GetAttribute("span"), 1f);
		return Math.Max(1, Convert.ToInt32(value));
	}
}
