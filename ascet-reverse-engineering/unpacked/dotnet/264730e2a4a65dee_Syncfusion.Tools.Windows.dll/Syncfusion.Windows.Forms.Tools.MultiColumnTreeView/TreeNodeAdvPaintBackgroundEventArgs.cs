using System.Collections;
using System.Drawing;
using Syncfusion.Drawing;

namespace Syncfusion.Windows.Forms.Tools.MultiColumnTreeView;

public class TreeNodeAdvPaintBackgroundEventArgs : TreeNodeAdvBasePaintEventArgs
{
	private BrushInfo brushInfo;

	private BitArray _bits = new BitArray(5, defaultValue: false);

	public bool Selected
	{
		get
		{
			return _bits.Get(0);
		}
		set
		{
			_bits.Set(0, value);
		}
	}

	public bool Active
	{
		get
		{
			return _bits.Get(1);
		}
		set
		{
			_bits.Set(1, value);
		}
	}

	public bool FullRowSelect => _bits.Get(2);

	public bool HotTracked
	{
		get
		{
			return _bits.Get(3);
		}
		set
		{
			_bits.Set(3, value);
		}
	}

	public bool Handled
	{
		get
		{
			return _bits.Get(4);
		}
		set
		{
			_bits.Set(4, value);
		}
	}

	public BrushInfo BrushInfo
	{
		get
		{
			return brushInfo;
		}
		set
		{
			brushInfo = value;
		}
	}

	public TreeNodeAdvPaintBackgroundEventArgs(TreeNodeAdv node, Graphics g, bool selected, bool active, bool fullRowSelect, bool hotTracked, BrushInfo brushInfo)
		: base(g, node)
	{
		this.brushInfo = brushInfo;
		_bits.Set(0, selected);
		_bits.Set(1, active);
		_bits.Set(2, fullRowSelect);
		_bits.Set(3, hotTracked);
	}
}
