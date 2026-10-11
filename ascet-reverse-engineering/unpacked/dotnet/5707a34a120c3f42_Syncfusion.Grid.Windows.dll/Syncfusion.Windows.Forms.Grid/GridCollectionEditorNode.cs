namespace Syncfusion.Windows.Forms.Grid;

internal class GridCollectionEditorNode
{
	private string text;

	private object o;

	internal object Value => o;

	internal GridCollectionEditorNode(string text, object o)
	{
		this.text = text;
		this.o = o;
	}

	public override string ToString()
	{
		return text;
	}
}
