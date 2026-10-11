namespace Syncfusion.Windows.Forms.Grid;

public interface IGridWindowlessObject : IFindParentForm
{
	bool IsWindowless { get; set; }

	IGridWindowlessSite ParentSite { get; set; }
}
