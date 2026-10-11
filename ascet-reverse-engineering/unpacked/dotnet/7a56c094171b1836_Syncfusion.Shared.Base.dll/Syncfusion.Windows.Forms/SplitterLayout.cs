namespace Syncfusion.Windows.Forms;

public class SplitterLayout
{
	internal int _hSplitPos;

	internal int _vSplitPos;

	public int HSplitPos
	{
		get
		{
			return _hSplitPos;
		}
		set
		{
			_hSplitPos = value;
		}
	}

	public int VSplitPos
	{
		get
		{
			return _vSplitPos;
		}
		set
		{
			_vSplitPos = value;
		}
	}
}
