namespace Syncfusion.Windows.Forms.Tools;

internal interface ITreeNodeAdvPaintFilter
{
	bool OnBeforeNodePaint(TreeNodeAdvPaintEventArgs e);

	bool OnNodeBackgroundPaint(TreeNodeAdvPaintBackgroundEventArgs e);

	void OnAfterNodePaint(TreeNodeAdvPaintEventArgs e);
}
