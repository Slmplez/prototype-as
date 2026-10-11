using System;
using System.Collections.Generic;
using System.Runtime.Serialization;
using Syncfusion.Windows.Forms.Grid;

namespace Syncfusion.Windows.Forms.Tools;

internal class GridRangeInfoAdv : GridRangeInfo
{
	public List<DateTime> Dates = new List<DateTime>();

	public GridRangeInfoAdv()
	{
	}

	protected GridRangeInfoAdv(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
	}

	public static GridRangeInfoAdv FromGridRangeInfo(GridRangeInfo range)
	{
		SerializationInfo info = new SerializationInfo(typeof(GridRangeInfo), new FormatterConverter());
		StreamingContext context = new StreamingContext(StreamingContextStates.Clone);
		range.GetObjectData(info, context);
		return new GridRangeInfoAdv(info, context);
	}
}
