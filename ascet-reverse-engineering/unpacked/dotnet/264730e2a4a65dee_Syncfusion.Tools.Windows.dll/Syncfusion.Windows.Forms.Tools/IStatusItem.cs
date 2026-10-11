namespace Syncfusion.Windows.Forms.Tools;

public interface IStatusItem
{
	bool Active { get; set; }

	bool EndOfGroup { get; set; }

	string Text { get; }
}
