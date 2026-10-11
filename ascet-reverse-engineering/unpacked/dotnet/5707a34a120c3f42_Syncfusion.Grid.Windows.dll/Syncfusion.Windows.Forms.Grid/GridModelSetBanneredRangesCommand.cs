namespace Syncfusion.Windows.Forms.Grid;

public class GridModelSetBanneredRangesCommand : GridModelCommand
{
	private GridRangeInfoList ranges;

	private bool setOrReset;

	private GridModelBanneredRanges cr;

	public GridModelSetBanneredRangesCommand(GridModelBanneredRanges cr, GridRangeInfoList ranges, bool setOrReset)
		: base(cr.model)
	{
		if (setOrReset)
		{
			SetDescription(SR.GetString("CommandAddBanneredRanges", ranges.ToString()));
		}
		else
		{
			SetDescription(SR.GetString("CommandRemoveBanneredRanges", ranges.ToString()));
		}
		this.cr = cr;
		this.ranges = ranges;
		this.setOrReset = setOrReset;
	}

	public override void Execute()
	{
		cr.SetBanneredRanges(ranges, setOrReset);
		base.Grid.ScrollCellInView(ranges.ActiveRange, GridScrollCurrentCellReason.Command);
	}
}
