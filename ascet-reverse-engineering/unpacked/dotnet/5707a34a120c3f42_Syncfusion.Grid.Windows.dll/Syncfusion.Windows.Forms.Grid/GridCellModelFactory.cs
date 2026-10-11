namespace Syncfusion.Windows.Forms.Grid;

public class GridCellModelFactory : GridBaseCellModelFactory
{
	public override GridCellModelBase CreateCellModel(string cellTypeName, GridModel pGrid)
	{
		return cellTypeName switch
		{
			"Header" => new GridHeaderCellModel(pGrid), 
			"Static" => new GridStaticCellModel(pGrid), 
			"TextBox" => new GridTextBoxCellModel(pGrid), 
			"Image" => new GridImageCellModel(pGrid), 
			"CheckBox" => new GridCheckBoxCellModel(pGrid), 
			"PushButton" => new GridPushButtonCellModel(pGrid), 
			"NumericUpDown" => new GridNumericUpDownCellModel(pGrid), 
			"DropDownGrid" => new GridDropDownGridCellModel(pGrid), 
			"GridListControl" => new GridDropDownGridListControlCellModel(pGrid), 
			"ComboBox" => new GridComboBoxCellModel(pGrid), 
			"ColorEdit" => new GridDropDownColorUICellModel(pGrid), 
			"MonthCalendar" => new GridDropDownMonthCalendarCellModel(pGrid), 
			"FormulaCell" => new GridFormulaCellModel(pGrid), 
			"Currency" => new GridCurrencyTextBoxCellModel(pGrid), 
			"MaskEdit" => new GridMaskEditCellModel(pGrid), 
			"RichText" => new GridRichTextBoxCellModel(pGrid), 
			"Control" => new GridGenericControlCellModel(pGrid), 
			"OriginalTextBox" => new GridOriginalTextBoxCellModel(pGrid), 
			"ProgressBar" => new GridProgressBarCellModel(pGrid), 
			"RadioButton" => new GridRadioButtonCellModel(pGrid), 
			"StandardValuesCell" => new GridDropDownStandardValuesCellModel(pGrid), 
			"UITypeEditorCell" => new GridUITypeEditorCellModel(pGrid), 
			"PropertyGridCell" => new GridPropertyGridCellModel(pGrid), 
			_ => new GridStaticCellModel(pGrid), 
		};
	}
}
