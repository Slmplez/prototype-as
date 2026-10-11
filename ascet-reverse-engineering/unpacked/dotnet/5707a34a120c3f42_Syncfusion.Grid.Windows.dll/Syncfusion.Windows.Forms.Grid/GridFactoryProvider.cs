namespace Syncfusion.Windows.Forms.Grid;

public class GridFactoryProvider
{
	private static IGridCellModelFactory cellModelFactory;

	public static IGridCellModelFactory CellModelFactory => cellModelFactory;

	static GridFactoryProvider()
	{
	}

	public static void Init(IGridCellModelFactory pFactory)
	{
		cellModelFactory = pFactory;
	}
}
