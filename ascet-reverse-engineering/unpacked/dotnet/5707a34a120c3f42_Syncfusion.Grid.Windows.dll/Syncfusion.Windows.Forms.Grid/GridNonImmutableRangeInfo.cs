using System;
using System.ComponentModel;
using System.Runtime.Serialization;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
[ImmutableObject(false)]
[DocumentationExclude]
public sealed class GridNonImmutableRangeInfo : GridRangeInfo
{
	public new GridRangeInfoType RangeType
	{
		get
		{
			return base.RangeType;
		}
		set
		{
			_rangeType = value;
		}
	}

	public new int Top
	{
		get
		{
			return base.Top;
		}
		set
		{
			_top = value;
		}
	}

	public new int Left
	{
		get
		{
			return base.Left;
		}
		set
		{
			_left = value;
		}
	}

	public new int Bottom
	{
		get
		{
			return base.Bottom;
		}
		set
		{
			_bottom = value;
		}
	}

	public new int Right
	{
		get
		{
			return base.Right;
		}
		set
		{
			_right = value;
		}
	}

	private GridNonImmutableRangeInfo(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
	}

	public override object Clone()
	{
		GridNonImmutableRangeInfo gridNonImmutableRangeInfo = new GridNonImmutableRangeInfo();
		CopyAllMembers(gridNonImmutableRangeInfo);
		return gridNonImmutableRangeInfo;
	}

	public GridRangeInfo ToRangeInfo()
	{
		GridRangeInfo gridRangeInfo = new GridRangeInfo();
		CopyAllMembers(gridRangeInfo);
		return gridRangeInfo;
	}

	public GridNonImmutableRangeInfo()
	{
	}

	public GridNonImmutableRangeInfo(GridRangeInfo range)
	{
		_top = range.Top;
		_bottom = range.Bottom;
		_left = range.Left;
		_right = range.Right;
		_rangeType = range.RangeType;
	}
}
