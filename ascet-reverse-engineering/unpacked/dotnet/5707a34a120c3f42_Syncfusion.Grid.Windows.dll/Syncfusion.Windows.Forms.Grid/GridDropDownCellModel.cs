using System;
using System.Collections.Specialized;
using System.ComponentModel;
using System.Drawing;
using System.Runtime.Serialization;
using System.Security.Permissions;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
public class GridDropDownCellModel : GridTextBoxCellModel
{
	private bool supportsChoiceList;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool SupportsChoiceList
	{
		get
		{
			return supportsChoiceList;
		}
		set
		{
			supportsChoiceList = value;
		}
	}

	public GridDropDownCellModel(GridModel grid)
		: base(grid)
	{
		base.AllowFloating = false;
		base.AllowMerging = false;
		base.ButtonBarSize = new Size(15, 18);
	}

	[SecurityPermission(SecurityAction.Demand, SerializationFormatter = true)]
	[SecurityPermission(SecurityAction.LinkDemand, SerializationFormatter = true)]
	public override void GetObjectData(SerializationInfo info, StreamingContext context)
	{
		info.AddValue("SupportsChoiceList", supportsChoiceList);
		base.GetObjectData(info, context);
	}

	protected GridDropDownCellModel(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
		supportsChoiceList = info.GetBoolean("SupportsChoiceList");
	}

	public override GridCellRendererBase CreateRenderer(GridControlBase control)
	{
		throw new NotImplementedException("GridCellRenderer is not implemented in derived class");
	}

	protected override Size OnQueryPrefferedClientSize(Graphics g, int rowIndex, int colIndex, GridStyleInfo style, GridQueryBounds queryBounds)
	{
		Size size = base.OnQueryPrefferedClientSize(g, rowIndex, colIndex, style, queryBounds);
		Size size2 = Size.Empty;
		Font gdipFont = style.GdipFont;
		if (queryBounds == GridQueryBounds.Height)
		{
			size2 = GridMargins.AddMargins(WinFormsUtils.MeasureSampleWString(g, gdipFont), style.ReadOnlyTextMargins.ToMargins());
			if (base.ButtonBarSize.Height > size2.Height && base.ButtonBarSize.Height < int.MaxValue)
			{
				size2.Height = base.ButtonBarSize.Height;
			}
			size2.Height++;
		}
		else if (supportsChoiceList && style.ChoiceList != null)
		{
			StringEnumerator enumerator = style.ChoiceList.GetEnumerator();
			try
			{
				while (enumerator.MoveNext())
				{
					string current = enumerator.Current;
					Size size3 = GridMargins.AddMargins(g.MeasureString(current, gdipFont).ToSize(), style.ReadOnlyTextMargins.ToMargins());
					size2.Width = Math.Max(size2.Width, size3.Width);
				}
			}
			finally
			{
				if (enumerator is IDisposable disposable)
				{
					disposable.Dispose();
				}
			}
			size2.Width++;
		}
		return GridUtil.Max(size2, size);
	}
}
