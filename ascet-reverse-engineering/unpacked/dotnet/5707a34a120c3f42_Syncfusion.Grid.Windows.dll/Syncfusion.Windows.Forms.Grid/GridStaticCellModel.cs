using System;
using System.Drawing;
using System.Runtime.Serialization;
using System.Security.Permissions;
using System.Windows.Forms;
using Syncfusion.Diagnostics;
using Syncfusion.Drawing;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
public class GridStaticCellModel : GridCellModelBase
{
	private bool allowFloating;

	private bool allowMerging;

	public bool AllowFloating
	{
		get
		{
			return allowFloating;
		}
		set
		{
			allowFloating = value;
		}
	}

	public bool AllowMerging
	{
		get
		{
			return allowMerging;
		}
		set
		{
			allowMerging = value;
		}
	}

	public GridStaticCellModel(GridModel grid)
		: base(grid)
	{
		allowMerging = GetType().IsAssignableFrom(typeof(GridStaticCellModel));
	}

	protected GridStaticCellModel(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
		allowFloating = info.GetBoolean("AllowFloating");
		if (base.SerializeSchemeVersion > 0)
		{
			allowMerging = info.GetBoolean("AllowMerging");
		}
	}

	[SecurityPermission(SecurityAction.Demand, SerializationFormatter = true)]
	[SecurityPermission(SecurityAction.LinkDemand, SerializationFormatter = true)]
	public override void GetObjectData(SerializationInfo info, StreamingContext context)
	{
		info.AddValue("AllowFloating", allowFloating);
		info.AddValue("AllowMerging", allowMerging);
		base.GetObjectData(info, context);
	}

	public override GridCellRendererBase CreateRenderer(GridControlBase control)
	{
		return new GridStaticCellRenderer(control, this);
	}

	protected override Size OnQueryPrefferedClientSize(Graphics g, int rowIndex, int colIndex, GridStyleInfo style, GridQueryBounds queryBounds)
	{
		string text = string.Empty;
		try
		{
			text = GetFormattedOrActiveTextAt(rowIndex, colIndex, style);
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
		}
		Font gdipFont = style.GdipFont;
		Size cellClientSize = GetCellClientSize(rowIndex, colIndex, style);
		GridMargins margins = style.ReadOnlyTextMargins.ToMargins();
		Size result = GridMargins.RemoveMargins(cellClientSize, margins);
		if (GridUtil.IsEmpty(text))
		{
			result = WinFormsUtils.MeasureSampleWString(g, gdipFont);
		}
		else
		{
			StringFormat stringFormat = new StringFormat();
			stringFormat.LineAlignment = GridUtil.ConvertToStringAlignment(style.VerticalAlignment);
			stringFormat.Alignment = GridUtil.ConvertToStringAlignment(style.HorizontalAlignment);
			bool wrapText = style.WrapText;
			if (!wrapText)
			{
				stringFormat.FormatFlags = StringFormatFlags.NoWrap;
			}
			int orientation = style.ReadOnlyFont.Orientation;
			Size size = WinFormsUtils.MeasureSampleWString(g, gdipFont);
			if (queryBounds == GridQueryBounds.Height)
			{
				if (GridUtil.IsEmpty(text))
				{
					result.Height = size.Height;
				}
				else if (orientation != 0)
				{
					result = RotatePaint.MeasureStringBounds(g, text, gdipFont, int.MaxValue, stringFormat, orientation).ToSize();
				}
				else
				{
					result.Height = (int)g.MeasureString(text, gdipFont, result.Width, stringFormat).Height;
				}
			}
			else
			{
				int height = result.Height;
				result = g.MeasureString(text, gdipFont, result.Width, stringFormat).ToSize();
				int num = 0;
				int num2 = 0;
				if (!wrapText || result.Height > height)
				{
					string[] array = text.Split('\r', '\n');
					string[] array2 = array;
					foreach (string text2 in array2)
					{
						Size size2 = g.MeasureString(text2, gdipFont, Point.Empty, stringFormat).ToSize();
						num2 = Math.Max(num2, size2.Width);
						num += size2.Height;
					}
					result.Width = num2;
				}
				if (orientation != 0)
				{
					result = RotatePaint.MeasureStringBounds(new SizeF(result.Width, result.Height), orientation).ToSize();
				}
			}
			stringFormat.Dispose();
		}
		GridMargins gridMargins = style.ReadOnlyTextMargins.ToMargins();
		result.Width += gridMargins.Width + 1;
		result.Height += gridMargins.Height + 1;
		int imageIndex = style.ImageIndex;
		ImageList imageList = style.ImageList;
		if (imageIndex != -1 && imageList != null && imageIndex < imageList.Images.Count)
		{
			result.Height = Math.Max(result.Height, imageList.ImageSize.Height);
			result.Width += imageList.ImageSize.Width + 2;
		}
		return result;
	}

	public override bool OnQueryCanMergeCell(int rowIndex, int colIndex, GridStyleInfo style, GridMergeCellDirection mergeCellDirection)
	{
		if (!AllowMerging)
		{
			return false;
		}
		return true;
	}

	public override bool OnQueryCanFloatCell(int rowIndex, int colIndex, GridStyleInfo style, GridQueryFloatCell query)
	{
		if (!AllowFloating)
		{
			return false;
		}
		string formattedOrActiveTextAt = GetFormattedOrActiveTextAt(rowIndex, colIndex, style);
		if (query == GridQueryFloatCell.FloatCell)
		{
			return formattedOrActiveTextAt.Length > 0;
		}
		int imageIndex = style.ImageIndex;
		ImageList imageList = style.ImageList;
		if (imageIndex != -1 && imageList != null && imageIndex < imageList.Images.Count)
		{
			return false;
		}
		if (GridUtil.IsEmpty(formattedOrActiveTextAt))
		{
			return GetActiveText(rowIndex, colIndex) == null;
		}
		return false;
	}
}
