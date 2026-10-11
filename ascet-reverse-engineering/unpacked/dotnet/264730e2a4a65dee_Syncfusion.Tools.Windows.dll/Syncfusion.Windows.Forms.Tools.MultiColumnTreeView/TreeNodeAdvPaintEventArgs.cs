using System.Collections;
using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools.MultiColumnTreeView;

public class TreeNodeAdvPaintEventArgs : TreeNodeAdvBasePaintEventArgs
{
	private int level;

	private int indent;

	private Point textLocation;

	private Color foreColor = Color.Empty;

	private int rightMargin;

	private BitArray _bits = new BitArray(12, defaultValue: false);

	public int Level => level;

	public int Indent => indent;

	public Color ForeColor
	{
		get
		{
			return foreColor;
		}
		set
		{
			foreColor = value;
		}
	}

	public int RightMargin
	{
		get
		{
			return rightMargin;
		}
		set
		{
			rightMargin = value;
		}
	}

	public Point TextLocation => textLocation;

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

	public bool HandledPlusMinus
	{
		get
		{
			return _bits.Get(5);
		}
		set
		{
			_bits.Set(5, value);
		}
	}

	public bool HandledCheckBox
	{
		get
		{
			return _bits.Get(6);
		}
		set
		{
			_bits.Set(6, value);
		}
	}

	public bool HandledOptionButton
	{
		get
		{
			return _bits.Get(7);
		}
		set
		{
			_bits.Set(7, value);
		}
	}

	public bool HandledLeftImageList
	{
		get
		{
			return _bits.Get(8);
		}
		set
		{
			_bits.Set(8, value);
		}
	}

	public bool HandledStateImageList
	{
		get
		{
			return _bits.Get(9);
		}
		set
		{
			_bits.Set(9, value);
		}
	}

	public bool HandledText
	{
		get
		{
			return _bits.Get(11);
		}
		set
		{
			_bits.Set(11, value);
		}
	}

	public bool HandledRightImageList
	{
		get
		{
			return _bits.Get(10);
		}
		set
		{
			_bits.Set(10, value);
		}
	}

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

	public TreeNodeAdvPaintEventArgs(TreeNodeAdv node, Graphics g, Rectangle bounds, Point textLocation, int level, int indent, bool selected, bool active, bool fullRowSelect, bool hotTracked, Color foreColor)
		: base(g, node, bounds)
	{
		this.textLocation = textLocation;
		this.level = level;
		this.indent = indent;
		this.foreColor = foreColor;
		_bits.Set(0, selected);
		_bits.Set(1, active);
		_bits.Set(2, fullRowSelect);
		_bits.Set(3, hotTracked);
	}
}
