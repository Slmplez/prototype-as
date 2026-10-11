namespace Syncfusion.Windows.Forms;

public interface IScrollBar
{
	int LargeChange { get; set; }

	int Maximum { get; set; }

	int Minimum { get; set; }

	int SmallChange { get; set; }

	int Value { get; set; }

	bool Enabled { get; set; }

	bool SupportsThumbTrack { get; set; }

	bool IsThumbTracking { get; }

	bool SupportsScrollTips { get; set; }

	void UpdateScrollInfo();
}
