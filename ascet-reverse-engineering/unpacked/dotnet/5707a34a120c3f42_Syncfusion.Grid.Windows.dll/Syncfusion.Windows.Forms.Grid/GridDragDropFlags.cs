using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Grid;

public class GridDragDropFlags
{
	public const int Disabled = 0;

	public const int ColHeader = 1;

	public const int RowHeader = 2;

	public const int Multiple = 4;

	public const int Text = 8;

	public const int Styles = 16;

	public const int Compose = 32;

	public const int AutoScroll = 64;

	public const int EdgeScroll = 128;

	public const int NoAppendRows = 512;

	public const int NoAppendCols = 1024;

	public const int OutlineAppendRows = 2048;

	public const int OutlineAppendCols = 4096;

	internal const int CheckRangeDim = 256;

	[DocumentationExclude]
	public const int EgdeScroll = 128;

	private GridDragDropFlags()
	{
	}
}
