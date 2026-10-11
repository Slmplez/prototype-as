namespace Syncfusion.Windows.Forms.Grid;

public interface IGridRowColSizeDictionary
{
	int this[int index] { get; set; }

	bool Modified { get; }

	void MoveItems(int from, int count, int dest);

	void RemoveItems(int from, int count);

	void InsertItems(int index, int count);

	void ResetModified();
}
