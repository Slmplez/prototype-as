namespace Syncfusion.Windows.Forms.Grid;

public class GridModelSetCoveredRangesCommand : GridModelCommand
{
	private GridRangeInfoList ranges;

	private bool setOrReset;

	private GridModelCoveredRanges cr;

	public GridModelSetCoveredRangesCommand(GridModelCoveredRanges cr, GridRangeInfoList ranges, bool setOrReset)
		: base(cr.model)
	{
		if (setOrReset)
		{
			SetDescription(SR.GetString("CommandAddCoveredRanges", ranges.ToString()));
		}
		else
		{
			SetDescription(SR.GetString("CommandRemoveCoveredRanges", ranges.ToString()));
		}
		this.cr = cr;
		this.ranges = ranges;
		this.setOrReset = setOrReset;
	}

	public override void Execute()
	{
		cr.SetCoveredRanges(ranges, setOrReset);
		base.Grid.ScrollCellInView(ranges.ActiveRange, GridScrollCurrentCellReason.Command);
	}
}
