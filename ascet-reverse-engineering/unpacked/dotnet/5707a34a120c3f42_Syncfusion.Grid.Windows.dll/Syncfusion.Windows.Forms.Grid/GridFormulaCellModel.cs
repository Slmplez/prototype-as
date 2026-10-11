using System;
using System.Collections;
using System.Drawing;
using System.Globalization;
using System.Runtime.Serialization;
using System.Security.Permissions;
using System.Windows.Forms;
using Syncfusion.Styles;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
public class GridFormulaCellModel : GridTextBoxCellModel
{
	private const string validLeadingChars = "=(*&+-/^ ,";

	private const string validTrailingChars = ")*&+-/^ ,";

	private GridFormulaEngine engine;

	private GridModel gridModel;

	private char formulaChar;

	private bool copyFormulasToClipboard;

	private string lastCopiedSheetName = string.Empty;

	private bool isPaste;

	internal bool allowAdjustReferences;

	public GridFormulaEngine Engine => engine;

	public bool CalculatingSuspended
	{
		get
		{
			return Engine.CalculatingSuspended;
		}
		set
		{
			Engine.CalculatingSuspended = value;
		}
	}

	public GridFormulaCellModel(GridModel grid)
		: this(grid, '=')
	{
		gridModel = grid;
	}

	public GridFormulaCellModel(GridModel grid, char formulaChar)
		: base(grid)
	{
		gridModel = grid;
		this.formulaChar = formulaChar;
		engine = new GridFormulaEngine(grid);
		Engine.formulaChar = formulaChar;
		base.Grid.CellsChanged += GridCellsChanged;
		base.Grid.ClipboardPasted += GridClipboardPasted;
		base.Grid.ClipboardPaste += GridClipboardPaste;
		base.Grid.ColsInserted += GridColsInserted;
		base.Grid.ColsRemoved += GridColsRemoved;
		base.Grid.RowsInserted += GridRowsInserted;
		base.Grid.RowsRemoved += GridRowsRemoved;
		base.Grid.ClipboardCopy += GridClipboardCopy;
		if (base.Grid.ActiveGridView != null)
		{
			base.Grid.ActiveGridView.DragDrop += GridDragDrop;
		}
	}

	protected GridFormulaCellModel(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
		formulaChar = (char)info.GetValue("FormulaChar", typeof(char));
	}

	public GridFormulaCellModel(GridModel grid, GridFormulaEngine engine, char formulaChar)
		: this(grid, formulaChar)
	{
		base.Grid.CellsChanged -= GridCellsChanged;
		base.Grid.ClipboardPasted -= GridClipboardPasted;
		base.Grid.ClipboardPaste -= GridClipboardPaste;
		base.Grid.ColsInserted -= GridColsInserted;
		base.Grid.ColsRemoved -= GridColsRemoved;
		base.Grid.RowsInserted -= GridRowsInserted;
		base.Grid.RowsRemoved -= GridRowsRemoved;
		base.Grid.ClipboardCopy -= GridClipboardCopy;
		if (base.Grid.ActiveGridView != null)
		{
			base.Grid.ActiveGridView.DragDrop -= GridDragDrop;
		}
		this.engine = null;
		this.engine = engine;
	}

	protected override void OnModelDeserialization(object sender, GridModel model)
	{
		base.OnModelDeserialization(sender, model);
		engine = new GridFormulaEngine(model);
		Engine.formulaChar = formulaChar;
		model.CellsChanged += GridCellsChanged;
		model.ClipboardPasted += GridClipboardPasted;
		model.ClipboardPaste += GridClipboardPaste;
		model.ColsInserted += GridColsInserted;
		model.ColsRemoved += GridColsRemoved;
		model.RowsInserted += GridRowsInserted;
		model.RowsRemoved += GridRowsRemoved;
		model.ClipboardCopy += GridClipboardCopy;
		if (model.ActiveGridView != null)
		{
			model.ActiveGridView.DragDrop += GridDragDrop;
		}
	}

	[SecurityPermission(SecurityAction.LinkDemand, SerializationFormatter = true)]
	[SecurityPermission(SecurityAction.Demand, SerializationFormatter = true)]
	public override void GetObjectData(SerializationInfo info, StreamingContext context)
	{
		info.AddValue("FormulaChar", formulaChar);
		base.GetObjectData(info, context);
	}

	public void RefreshCells(int row, int col)
	{
		if (!CalculatingSuspended)
		{
			GridSheetFamilyItem sheetFamilyItem = GridFormulaEngine.GetSheetFamilyItem(gridModel);
			string text = ((sheetFamilyItem.GridModelToToken != null) ? (sheetFamilyItem.GridModelToToken[base.Grid] as string) : string.Empty);
			string s = text + GridRangeInfo.GetAlphaLabel(col) + row;
			Engine.Refresh(s);
		}
	}

	public void RefreshRange(GridRangeInfo range)
	{
		Engine.RefreshRange(range);
	}

	public void RecalculateRange(GridRangeInfo range)
	{
		Engine.RecalculateRange(range, forceCalculations: false);
	}

	public void RecalculateRange(GridRangeInfo range, bool forceCalculations)
	{
		Engine.RecalculateRange(range, forceCalculations);
	}

	private void GridClipboardCopy(object sender, GridCutPasteEventArgs e)
	{
		if ((Engine.FormulaCopyFlags & GridFormulaCopyFlags.ClipBoardFormula) != GridFormulaCopyFlags.None && !copyFormulasToClipboard)
		{
			copyFormulasToClipboard = true;
			base.Grid.Model.CutPaste.Copy();
			copyFormulasToClipboard = false;
			e.Handled = true;
			e.Result = true;
		}
		if (Engine.IsSheeted)
		{
			GridSheetFamilyItem sheetFamilyItem = GridFormulaEngine.GetSheetFamilyItem(gridModel);
			string key = sheetFamilyItem.GridModelToToken[sender as GridModel] as string;
			lastCopiedSheetName = sheetFamilyItem.TokenToSheetName[key] as string;
		}
	}

	private void GridDragDrop(object sender, DragEventArgs e)
	{
		if ((Engine.FormulaCopyFlags & GridFormulaCopyFlags.UpdateReferencesDuringDnD) == 0 || !(sender is GridControlBase gridControlBase) || !gridControlBase.Model.DragDropData.dndSource)
		{
			return;
		}
		GridModel model = gridControlBase.Model;
		Point point = model.ActiveGridView.PointToClient(Control.MousePosition);
		if (!model.ActiveGridView.PointToRowCol(point, out var rowIndex, out var colIndex))
		{
			return;
		}
		if (model.SelectedRanges.ActiveRange.IsCols)
		{
			rowIndex = model.Model.Rows.HeaderCount + 1;
			colIndex = model.SelectedRanges.ActiveRange.Left;
		}
		else if (model.SelectedRanges.ActiveRange.IsRows)
		{
			rowIndex = model.SelectedRanges.ActiveRange.Top;
			colIndex = model.Model.Cols.HeaderCount + 1;
		}
		else
		{
			rowIndex -= model.DragDropData.dndRowOffset;
			colIndex -= model.DragDropData.dndColOffset;
		}
		foreach (GridRangeInfo dndSel in model.DragDropData.dndSelList)
		{
			if (dndSel.GetFirstCell(out var top, out var left))
			{
				int rowOffSet = rowIndex - top;
				int colOffSet = colIndex - left;
				AdjustFormulasForDnD(model, top, left, rowOffSet, colOffSet);
				while (dndSel.GetNextCell(ref top, ref left))
				{
					AdjustFormulasForDnD(model, top, left, rowOffSet, colOffSet);
				}
			}
		}
		model.Refresh();
	}

	private void AdjustFormulasForDnD(GridModel grid2, int row, int col, int rowOffSet, int colOffSet)
	{
		GridSheetFamilyItem sheetFamilyItem = GridFormulaEngine.GetSheetFamilyItem(grid2);
		string text = (sheetFamilyItem.isSheeted ? sheetFamilyItem.GridModelToToken[grid2].ToString() : string.Empty);
		string text2 = string.Format("{0}{1}", GridRangeInfo.GetAlphaLabel(col), row, text);
		string key = ((text.Length > 0) ? (text + text2) : text2);
		if (!engine.DependentCells.ContainsKey(key))
		{
			return;
		}
		string text3 = $"{GridRangeInfo.GetAlphaLabel(col + colOffSet)}{row + rowOffSet}";
		Hashtable hashtable = engine.DependentCells[key] as Hashtable;
		engine.DependentCells.Remove(key);
		Hashtable hashtable2 = new Hashtable();
		foreach (string key2 in hashtable.Keys)
		{
			if (engine.DependentFormulaCells.ContainsKey(key2))
			{
				Hashtable hashtable3 = (Hashtable)engine.DependentFormulaCells[key2];
				if (hashtable3 != null && hashtable3.ContainsKey(key))
				{
					hashtable3.Remove(key);
				}
			}
			string text5 = engine.SheetToken(key2);
			GridModel gridModel = ((text5.Length == 0) ? grid2 : (sheetFamilyItem.TokenToGridModel[text5] as GridModel));
			int num = engine.RowIndex(key2);
			int num2 = engine.ColIndex(key2);
			string text6 = gridModel[num, num2].Text;
			if (text6.Length <= 0 || text6[0] != formulaChar)
			{
				continue;
			}
			string text7 = text6.ToUpper();
			int num3 = -1;
			int num4 = 0;
			if (text.Length > 0)
			{
				string text8 = sheetFamilyItem.TokenToSheetName[text].ToString();
				string text9 = text8.ToUpper() + '!' + text2;
				_ = text8.ToUpper() + '!' + text3;
				for (num3 = text7.IndexOf(text9); num3 > -1; num3 = text7.IndexOf(text9, num3 + 1))
				{
					bool flag = true;
					if (num3 > 0)
					{
						flag = "=(*&+-/^ ,".IndexOf(text7[num3 - 1]) > -1;
					}
					if (flag && num3 + text9.Length < text7.Length)
					{
						flag = ")*&+-/^ ,".IndexOf(text7[num3 + text9.Length]) > -1;
					}
					if (flag)
					{
						text6 = text6.Substring(0, num3 + text8.Length + 1 + num4) + text3 + ((num3 + text9.Length < text6.Length) ? text6.Substring(num3 + text9.Length + num4) : string.Empty);
						num4 += text3.Length - text2.Length;
					}
				}
			}
			num3 = text7.IndexOf(text2);
			num4 = 0;
			while (text == text5 && num3 > -1)
			{
				bool flag2 = true;
				if (num3 > 0)
				{
					flag2 = "=(*&+-/^ ,".IndexOf(text7[num3 - 1]) > -1;
				}
				if (flag2 && num3 + text2.Length < text7.Length)
				{
					flag2 = ")*&+-/^ ,".IndexOf(text7[num3 + text2.Length]) > -1;
				}
				if (flag2)
				{
					text6 = text6.Substring(0, num3 + num4) + text3 + ((num3 + text2.Length < text6.Length) ? text6.Substring(num3 + text2.Length + num4) : string.Empty);
					num4 += text3.Length - text2.Length;
				}
				num3 = text7.IndexOf(text2, num3 + 1);
			}
			gridModel[num, num2].Text = text6;
			gridModel[num, num2].FormulaTag = null;
			if (!hashtable2.ContainsKey(GridRangeInfo.Cell(num, num2)))
			{
				hashtable2.Add(GridRangeInfo.Cell(num, num2), gridModel);
			}
		}
		if (engine.DependentFormulaCells.ContainsKey(key))
		{
			engine.DependentFormulaCells.Remove(key);
		}
		foreach (GridRangeInfo key3 in hashtable2.Keys)
		{
			GridModel grd = hashtable2[key3] as GridModel;
			Engine.RecalculateRange(key3, grd, forceCalculations: true, forceParsing: true, useBeginUpdate: false);
		}
		hashtable2.Clear();
	}

	private void GridColsInserted(object sender, GridRangeInsertedEventArgs e)
	{
		Engine.AdjustReferencesForRangeChange(sender as GridModel, isCols: true, isInsert: true, e.InsertAt, e.InsertAt + e.Count - 1, isDelete: false);
	}

	private void GridColsRemoved(object sender, GridRangeRemovedEventArgs e)
	{
		Engine.AdjustReferencesForRangeChange(sender as GridModel, isCols: true, isInsert: false, e.From, e.To, isDelete: true);
	}

	private void GridRowsInserted(object sender, GridRangeInsertedEventArgs e)
	{
		Engine.AdjustReferencesForRangeChange(sender as GridModel, isCols: false, isInsert: true, e.InsertAt, e.InsertAt + e.Count - 1, isDelete: false);
	}

	private void GridRowsRemoved(object sender, GridRangeRemovedEventArgs e)
	{
		Engine.AdjustReferencesForRangeChange(sender as GridModel, isCols: false, isInsert: false, e.From, e.To, isDelete: true);
	}

	private void GridClipboardPasted(object sender, GridCutPasteEventArgs e)
	{
		if (base.Grid != null && base.Grid.ActiveGridView != null)
		{
			GridCurrentCell currentCell = base.Grid.ActiveGridView.CurrentCell;
			if (currentCell.HasCurrentCell && currentCell.IsEditing)
			{
				currentCell.Renderer.ResetControlText();
				_ = currentCell.Renderer.ControlText;
				base.Grid.ActiveGridView.RefreshRange(currentCell.RangeInfo, forceRefreshCurrentCell: true);
			}
		}
		((IDataObject)e.DataObject)?.GetData(typeof(string));
		isPaste = false;
		Engine.inPaste = false;
	}

	private void GridClipboardPaste(object sender, GridCutPasteEventArgs e)
	{
		isPaste = true;
		Engine.inPaste = true;
	}

	private void GridCellsChanged(object sender, GridCellsChangedEventArgs e)
	{
		if (e.Range.Info.IndexOf(":") > 1 && !gridModel.ActiveGridView.IsVisibleCell(e.Range.Bottom, e.Range.Right))
		{
			gridModel.ActiveGridView.ScrollCellInView(e.Range.Bottom, e.Range.Right);
		}
		if (e.Range.IsCells && e.Range.GetFirstCell(out var top, out var left))
		{
			RefreshCells(top, left);
			while (e.Range.GetNextCell(ref top, ref left, bSortByRow: false))
			{
				RefreshCells(top, left);
			}
		}
	}

	public override string GetFormattedText(GridStyleInfo style, object value, int textInfo)
	{
		string s = style.Text;
		Engine.GetFormulaText(ref s);
		if (copyFormulasToClipboard)
		{
			return s;
		}
		bool flag = formulaChar != 0 && s.Length > 0 && s[0] == formulaChar;
		if (formulaChar == '\0' || flag)
		{
			if (flag)
			{
				s = s.Substring(1);
			}
			if (GridUtil.IsEmpty(s.Trim()))
			{
				return string.Empty;
			}
			GridStyleInfoIdentity gridStyleInfoIdentity = style.Identity as GridStyleInfoIdentity;
			bool flag2 = false;
			if (style.FormulaTag == null)
			{
				Engine.cell = GridRangeInfo.GetAlphaLabel(gridStyleInfoIdentity.ColIndex) + gridStyleInfoIdentity.RowIndex;
				style.FormulaTag = new GridFormulaTag(Engine.Parse(s), null, gridStyleInfoIdentity.RowIndex, gridStyleInfoIdentity.ColIndex);
				flag2 = true;
			}
			GridFormulaTag formulaTag = style.FormulaTag;
			if (formulaTag != null)
			{
				bool flag3 = NeedToAdjustReferences(gridStyleInfoIdentity, formulaTag);
				if (flag3 && (isPaste || Engine.inPaste) && (Engine.FormulaCopyFlags & GridFormulaCopyFlags.ClipBoardReferencesAdjusted) != GridFormulaCopyFlags.None)
				{
					allowAdjustReferences = true;
					AdjustReferences(gridStyleInfoIdentity, formulaTag, style);
					allowAdjustReferences = false;
					formulaTag.Formula = Engine.Parse(style.Text);
					flag2 = true;
				}
				else if (flag3)
				{
					formulaTag.ParsedRow = gridStyleInfoIdentity.RowIndex;
					formulaTag.ParsedCol = gridStyleInfoIdentity.ColIndex;
					flag2 = true;
					Engine.SetDirty(formulaTag);
				}
				if (Engine.IsDirty(formulaTag))
				{
					Engine.cell = GridRangeInfo.GetAlphaLabel(gridStyleInfoIdentity.ColIndex) + gridStyleInfoIdentity.RowIndex;
					try
					{
						formulaTag.Text = Engine.ComputedValue(formulaTag.Formula);
						flag2 = true;
					}
					catch (Exception ex)
					{
						return ex.Message;
					}
				}
				if (flag2)
				{
					if (Engine.ReturnNAN)
					{
						if (formulaTag.Text == "NaN")
						{
							formulaTag.Text = "#Value!";
						}
						else if (formulaTag.Text == "Infinity")
						{
							formulaTag.Text = "#Div/0!";
						}
					}
					bool ignoreReadOnly = base.Grid.IgnoreReadOnly;
					base.Grid.IgnoreReadOnly = true;
					base.Grid[gridStyleInfoIdentity.RowIndex, gridStyleInfoIdentity.ColIndex].FormulaTag = formulaTag;
					base.Grid.IgnoreReadOnly = ignoreReadOnly;
				}
				char value2 = '\u007f';
				if (formulaTag.Text != null && formulaTag.Text.IndexOf(value2) == 0)
				{
					return formulaTag.Text.Remove(0, 1);
				}
				CultureInfo culture = style.GetCulture(useCurrentCultureIfNull: true);
				if (formulaTag.Text != null && double.TryParse(formulaTag.Text, NumberStyles.Number | NumberStyles.AllowExponent, culture.NumberFormat, out var result))
				{
					if (!GridUtil.IsEmpty(style.Format))
					{
						return ValueConvert.FormatValue(result, typeof(double), style.Format, culture, culture.NumberFormat);
					}
					return formulaTag.Text;
				}
				if (formulaTag.Text == null)
				{
					return string.Empty;
				}
				return formulaTag.Text;
			}
			return string.Empty;
		}
		if (!GridUtil.IsEmpty(style.Format))
		{
			CultureInfo culture2 = style.GetCulture(useCurrentCultureIfNull: true);
			if (double.TryParse(style.Text, NumberStyles.Number | NumberStyles.AllowExponent, culture2.NumberFormat, out var result2))
			{
				return ValueConvert.FormatValue(result2, typeof(double), style.Format, culture2, culture2.NumberFormat);
			}
		}
		return base.GetFormattedText(style, value, textInfo);
	}

	private void AdjustReferences(GridStyleInfoIdentity id, GridFormulaTag tag, GridStyleInfo style)
	{
		if (allowAdjustReferences)
		{
			string currentSheetName = string.Empty;
			if (Engine.IsSheeted)
			{
				GridSheetFamilyItem sheetFamilyItem = GridFormulaEngine.GetSheetFamilyItem(gridModel);
				string key = sheetFamilyItem.GridModelToToken[gridModel] as string;
				currentSheetName = sheetFamilyItem.TokenToSheetName[key] as string;
			}
			style.Text = Engine.AdjustReferences(style.Text, id.RowIndex - tag.ParsedRow, id.ColIndex - tag.ParsedCol, lastCopiedSheetName, currentSheetName);
		}
		tag.ParsedRow = id.RowIndex;
		tag.ParsedCol = id.ColIndex;
		base.Grid.SuspendChangeEvents();
		bool ignoreReadOnly = base.Grid.IgnoreReadOnly;
		base.Grid.IgnoreReadOnly = true;
		base.Grid[id.RowIndex, id.ColIndex].Text = style.Text;
		Engine.SetDirty(tag);
		base.Grid[id.RowIndex, id.ColIndex].FormulaTag = tag;
		base.Grid.IgnoreReadOnly = ignoreReadOnly;
		base.Grid.ResumeChangeEvents();
	}

	private bool NeedToAdjustReferences(GridStyleInfoIdentity id, GridFormulaTag tag)
	{
		if (id.RowIndex == tag.ParsedRow || tag.ParsedRow == -1)
		{
			if (id.ColIndex != tag.ParsedCol)
			{
				return tag.ParsedCol != -1;
			}
			return false;
		}
		return true;
	}

	public override GridCellRendererBase CreateRenderer(GridControlBase control)
	{
		return new GridFormulaCellRenderer(control, this);
	}
}
