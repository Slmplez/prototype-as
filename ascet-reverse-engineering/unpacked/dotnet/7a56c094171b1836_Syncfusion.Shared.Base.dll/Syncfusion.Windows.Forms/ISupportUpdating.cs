namespace Syncfusion.Windows.Forms;

public interface ISupportUpdating
{
	bool Updating { get; }

	void BeginUpdate();

	void EndUpdate();
}
