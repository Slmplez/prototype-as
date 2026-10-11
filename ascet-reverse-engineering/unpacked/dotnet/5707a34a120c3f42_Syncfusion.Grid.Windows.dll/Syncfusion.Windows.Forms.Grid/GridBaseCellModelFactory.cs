namespace Syncfusion.Windows.Forms.Grid;

public class GridBaseCellModelFactory : IGridCellModelFactory
{
	private bool isDefault;

	public virtual bool IsDefault => isDefault;

	public GridBaseCellModelFactory()
	{
		isDefault = false;
	}

	public GridBaseCellModelFactory(bool isDefault)
	{
		this.isDefault = isDefault;
	}

	public virtual GridCellModelBase CreateCellModel(string cellTypeName, GridModel pGrid)
	{
		return cellTypeName switch
		{
			"Header" => new GridHeaderCellModel(pGrid), 
			"Static" => new GridStaticCellModel(pGrid), 
			"TextBox" => new GridTextBoxCellModel(pGrid), 
			"ComboBox" => new GridComboBoxCellModel(pGrid), 
			"PushButton" => new GridPushButtonCellModel(pGrid), 
			_ => new GridStaticCellModel(pGrid), 
		};
	}
}
