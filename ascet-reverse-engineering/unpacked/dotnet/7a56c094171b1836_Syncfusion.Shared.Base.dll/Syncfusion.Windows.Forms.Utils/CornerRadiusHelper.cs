using System;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Utils;

public sealed class CornerRadiusHelper : IDisposable
{
	private int _cornerRadius;

	private Control _owner;

	public int CornerRadius
	{
		get
		{
			return _cornerRadius;
		}
		set
		{
			if (value == _cornerRadius)
			{
				return;
			}
			if (_owner != null)
			{
				if (!IsCornerRadiusValid(value, out var minRadius))
				{
					throw new ArgumentException($"Invalid corner raduis value - radius can't be less than zero and greater than {minRadius}.");
				}
				_cornerRadius = value;
				_owner.MinimumSize = GetMinimalSize(_owner.MinimumSize);
				UpdateRegion();
			}
			else
			{
				_cornerRadius = value;
			}
		}
	}

	public CornerRadiusHelper(Control owner)
	{
		_owner = owner;
	}

	public GraphicsPath GetPath(RectangleF bounds)
	{
		int cornerRadius = CornerRadius;
		GraphicsPath graphicsPath = null;
		if (cornerRadius > 0)
		{
			float num = 2 * cornerRadius;
			float width = bounds.Width;
			float height = bounds.Height;
			RectangleF rect = new RectangleF(0f, 0f, num, num);
			graphicsPath = new GraphicsPath();
			graphicsPath.AddArc(rect, 180f, 90f);
			graphicsPath.AddLine(cornerRadius, 0f, width - (float)cornerRadius, 0f);
			rect.Offset(width - rect.Width, 0f);
			graphicsPath.AddArc(rect, 270f, 90f);
			graphicsPath.AddLine(width, cornerRadius, width, height - (float)cornerRadius);
			rect.Offset(0f, height - rect.Height);
			graphicsPath.AddArc(rect, 0f, 90f);
			graphicsPath.AddLine(width - (float)cornerRadius + 1f, height, cornerRadius - 1, height);
			rect.Offset(rect.Width - width, 0f);
			graphicsPath.AddArc(rect, 90f, 90f);
			graphicsPath.AddLine(0f, height - (float)cornerRadius, 0f, cornerRadius);
			Matrix matrix = new Matrix();
			matrix.Translate(bounds.X, bounds.Y);
			graphicsPath.Transform(matrix);
		}
		return graphicsPath;
	}

	public void UpdateRegion()
	{
		if (_owner != null)
		{
			_owner.Region = GetRegion();
			if (_owner.IsHandleCreated)
			{
				NativeMethodsHelper.RedrawWindow(_owner.Handle, 1281);
			}
		}
	}

	public Size GetMinimalSize(Size currentMinimalSize)
	{
		int num = currentMinimalSize.Width;
		int num2 = currentMinimalSize.Height;
		if (CornerRadius > 0)
		{
			num = Math.Max(2 * (CornerRadius + 2), num);
			num2 = Math.Max(2 * CornerRadius, num2);
		}
		return new Size(num, num2);
	}

	private bool IsCornerRadiusValid(int radius, out int minRadius)
	{
		int num = Math.Min(_owner.Width, _owner.Height);
		minRadius = num / 2;
		if (radius >= 0)
		{
			return 2 * radius <= num;
		}
		return false;
	}

	private Region GetRegion()
	{
		int cornerRadius = CornerRadius;
		_ = _owner.Width;
		_ = _owner.Height;
		Region region = null;
		if (cornerRadius > 0)
		{
			using GraphicsPath graphicsPath = GetPath(new Rectangle(0, 0, _owner.Size.Width, _owner.Size.Height));
			region = new Region(graphicsPath);
			graphicsPath.Reverse();
			using Region region2 = new Region(graphicsPath);
			region.Union(region2);
		}
		else
		{
			region = new Region(new Rectangle(0, 0, _owner.Width, _owner.Height));
		}
		return region;
	}

	public void Dispose()
	{
		_owner = null;
	}
}
