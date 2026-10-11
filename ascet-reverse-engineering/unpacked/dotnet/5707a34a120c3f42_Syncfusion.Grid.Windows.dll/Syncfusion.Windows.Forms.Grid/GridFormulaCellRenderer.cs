using System;
using System.Collections;

namespace Syncfusion.Windows.Forms.Grid;

public class GridFormulaCellRenderer : GridTextBoxCellRenderer
{
	[ThreadStatic]
	private static bool forceEditWhenActivated = true;

	public static bool ForceEditWhenActivated
	{
		get
		{
			return forceEditWhenActivated;
		}
		set
		{
			forceEditWhenActivated = value;
		}
	}

	public GridFormulaCellRenderer(GridControlBase grid, GridCellModelBase cellModel)
		: base(grid, cellModel)
	{
	}

	protected override void OnActivated()
	{
		base.OnActivated();
		if (!base.CurrentCell.IsEditing && ForceEditWhenActivated)
		{
			base.CurrentCell.BeginEdit(focusRenderer: false);
		}
	}

	protected override void InitializeControlText(object controlValue)
	{
		string text = ((controlValue != null) ? controlValue.ToString() : string.Empty);
		GridCurrentCellInitializeControlTextEventArgs e = new GridCurrentCellInitializeControlTextEventArgs(base.RowIndex, base.ColIndex, base.StyleInfo, controlValue, text);
		if (base.Grid.RaiseCurrentCellInitializeControlText(e))
		{
			ControlText = e.ControlText;
		}
	}

	public override bool Copy()
	{
		return false;
	}

	public override bool Paste()
	{
		return false;
	}

	protected override bool OnValidate()
	{
		GridFormulaEngine engine = ((GridFormulaCellModel)base.Model).Engine;
		string s = base.Control.Text;
		engine.GetFormulaText(ref s);
		GridSheetFamilyItem sheetFamilyItem = GridFormulaEngine.GetSheetFamilyItem(base.Grid.Model);
		string text = ((sheetFamilyItem.GridModelToToken != null) ? (sheetFamilyItem.GridModelToToken[base.Grid.Model] as string) : string.Empty);
		int rowIndex = base.Grid.CurrentCell.RowIndex;
		int colIndex = base.Grid.CurrentCell.ColIndex;
		string text2 = text + GridRangeInfo.GetAlphaLabel(colIndex) + rowIndex;
		if (s.Length == 0 || (engine.formulaChar != 0 && s.Length > 0 && s[0] != engine.formulaChar))
		{
			Hashtable hashtable = (Hashtable)engine.DependentFormulaCells[text2];
			if (hashtable != null)
			{
				foreach (string key in hashtable.Keys)
				{
					Hashtable hashtable2 = (Hashtable)engine.DependentCells[key];
					if (hashtable2 != null)
					{
						hashtable2.Remove(text2);
						if (hashtable2.Count == 0)
						{
							engine.DependentCells.Remove(key);
						}
					}
				}
				engine.DependentFormulaCells.Remove(text2);
			}
			if (base.Grid.Model[rowIndex, colIndex].FormulaTag != null)
			{
				base.Grid.Model[rowIndex, colIndex].FormulaTag = null;
			}
			return true;
		}
		if (engine.formulaChar != 0 && s.Length > 0)
		{
			s = s.Substring(1);
		}
		bool lockDependencies = engine.lockDependencies;
		try
		{
			engine.cell = text2;
			string parsedFormula;
			if (engine.DoCircularCheckInValidating)
			{
				engine.lockDependencies = true;
				parsedFormula = engine.Parse(s);
				if (CircularCheckFailed(text2, parsedFormula))
				{
					base.Grid.CurrentCell.ErrorMessage = engine.FormulaErrorStrings[engine.circular_reference_] + text2;
					engine.lockDependencies = lockDependencies;
					return false;
				}
				engine.lockDependencies = lockDependencies;
			}
			parsedFormula = engine.Parse(s);
			if (engine.DependentFormulaCells.ContainsKey(text2))
			{
				Hashtable hashtable3 = (Hashtable)engine.DependentFormulaCells[engine.cell];
				foreach (object key2 in hashtable3.Keys)
				{
					Hashtable hashtable4 = (Hashtable)engine.DependentCells[(string)key2];
					hashtable4.Remove(engine.cell);
					if (hashtable4.Count == 0)
					{
						engine.DependentCells.Remove(key2);
					}
				}
				engine.DependentFormulaCells.Remove(engine.cell);
			}
			string text3 = engine.ComputedValue(parsedFormula);
			if (engine.IsCircularReference(text2))
			{
				Hashtable hashtable5 = (Hashtable)engine.DependentCells[text2];
				if (hashtable5 != null)
				{
					hashtable5.Remove(text2);
					engine.ClearFormulaDependentCells(engine.cell);
					throw new ArgumentException(engine.FormulaErrorStrings[engine.circular_reference_] + text2);
				}
			}
			if (engine.ReturnNAN)
			{
				if (text3 == "NaN")
				{
					text3 = "#Value!";
				}
				else if (text3 == "Infinity")
				{
					text3 = "#Div/0!";
				}
			}
			bool ignoreReadOnly = base.Grid.Model.IgnoreReadOnly;
			base.Grid.Model.IgnoreReadOnly = true;
			base.Grid.Model[rowIndex, colIndex].FormulaTag = new GridFormulaTag(parsedFormula, text3, rowIndex, colIndex);
			base.Grid.Model.IgnoreReadOnly = ignoreReadOnly;
		}
		catch (ArgumentException ex)
		{
			base.Grid.CurrentCell.ErrorMessage = ex.Message;
			return false;
		}
		finally
		{
			if (lockDependencies != engine.lockDependencies)
			{
				engine.lockDependencies = lockDependencies;
			}
		}
		return true;
	}

	internal bool CircularCheckFailed(string hostCell, string parsedFormula)
	{
		GridFormulaEngine engine = ((GridFormulaCellModel)base.Model).Engine;
		return engine.CircularCheckFailed(hostCell, parsedFormula);
	}
}
