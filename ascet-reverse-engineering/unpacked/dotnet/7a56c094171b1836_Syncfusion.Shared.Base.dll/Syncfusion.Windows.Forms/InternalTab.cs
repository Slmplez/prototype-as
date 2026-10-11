using System;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Design;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Design;
using Syncfusion.Windows.Forms.Localization;

namespace Syncfusion.Windows.Forms;

[ToolboxItem(false)]
public class InternalTab : InternalButton
{
	private string label;

	private int imageIndex = -1;

	private TabsRendererBase m_renderer;

	public string Label
	{
		get
		{
			return label;
		}
		set
		{
			if (label != value)
			{
				label = value;
				base.Dirty = true;
				if (base.Owner is Control control)
				{
					control.PerformLayout();
				}
			}
		}
	}

	[Editor(typeof(ImageIndexEditor), typeof(UITypeEditor))]
	[DefaultValue(-1)]
	[Category("Appearance")]
	[TypeConverter(typeof(ImageIndexConverter))]
	public int ImageIndex
	{
		get
		{
			return imageIndex;
		}
		set
		{
			if (value < -1)
			{
				throw new ArgumentException(SR.GetString("InvalidLowBoundArgumentEx", "imageIndex", value, -1));
			}
			imageIndex = value;
		}
	}

	public Region GetTabRegion
	{
		get
		{
			if (m_renderer != null)
			{
				return m_renderer.GetTabRegion;
			}
			return new Region(base.Bounds);
		}
	}

	internal TabsRendererBase Renderer => m_renderer;

	public InternalTab()
	{
	}

	public InternalTab(string label)
		: this(null, label)
	{
		this.label = label;
	}

	public InternalTab(object cookie)
		: this(null, cookie)
	{
	}

	public InternalTab(object owner, object cookie)
		: base(owner, cookie)
	{
		if (cookie != null)
		{
			if (cookie is Control control)
			{
				label = control.Text;
			}
			else
			{
				label = cookie.ToString();
			}
		}
		if (owner != null)
		{
			OnOwnerChanged();
		}
		m_renderer = new Office2007TabsRenderer(this);
	}

	public override string ToString()
	{
		if (label.Length > 0)
		{
			return label;
		}
		return cookie.ToString();
	}

	public override void OnOwnerChanged()
	{
	}

	public override Size GetPreferredSize(Size maxSize)
	{
		return base.Size;
	}

	public void AdjustSize(Graphics g, Font font, int delta)
	{
		if (!(base.Owner is IInternalTabParent internalTabParent))
		{
			return;
		}
		if (internalTabParent.Style == TabBarSplitterStyle.Default)
		{
			Size size = ((!base.Pushed) ? TextRenderer.MeasureText(Label, new Font(font, FontStyle.Regular)) : TextRenderer.MeasureText(Label, font));
			IInternalTabParent internalTabParent2 = base.Owner as IInternalTabParent;
			if (internalTabParent2.ImageList != null && imageIndex >= 0 && imageIndex < internalTabParent2.ImageList.Images.Count)
			{
				int num = internalTabParent2.ImageList.ImageSize.Width + 5;
				size.Width += num;
				size.Height = Math.Max(internalTabParent2.ImageList.ImageSize.Height, size.Height);
			}
			base.Size = new Size(size.Width + delta * 2, size.Height + 2);
		}
		else if (m_renderer != null)
		{
			base.Size = m_renderer.GetItemPreferredSize();
		}
	}

	public override void AdjustSize()
	{
		if (base.Owner is IInternalTabParent internalTabParent)
		{
			internalTabParent.GetMeasureTools(out var g, out var font, out var delta);
			try
			{
				AdjustSize(g, font, delta);
			}
			finally
			{
				internalTabParent.DisposeMeasureTools();
			}
		}
	}

	public virtual Bitmap CreateBitmap(Size size, bool flatLook)
	{
		Bitmap bitmap = null;
		Graphics graphics = null;
		if (base.Owner is IInternalTabParent internalTabParent)
		{
			try
			{
				bitmap = new Bitmap(size.Width, size.Height);
				graphics = Graphics.FromImage(bitmap);
				if (base.Style == TabBarSplitterStyle.Default)
				{
					internalTabParent.GetDrawingTools(this, out var fillBrush, out var textColor, out var font, out var delta);
					Rectangle rectangle = new Rectangle(0, 0, size.Width, size.Height);
					TabPaint.DrawTab(graphics, rectangle, internalTabParent.ImageList, ImageIndex, Label, fillBrush, textColor, font, base.Enabled, delta, overlapping: true);
				}
				else
				{
					m_renderer.Bounds = new Rectangle(0, 0, size.Width, size.Height);
					m_renderer.DrawTab(graphics);
				}
			}
			finally
			{
				internalTabParent.DisposeMeasureTools();
				graphics?.Dispose();
			}
		}
		return bitmap;
	}

	public override void Paint(Graphics g, Rectangle bounds, bool flatLook, Rectangle barArea)
	{
		try
		{
			InitToolTip(Rectangle.Intersect(bounds, barArea));
			if (g.ClipBounds.IntersectsWith(bounds) && base.Owner is IInternalTabParent internalTabParent)
			{
				if (base.Style == TabBarSplitterStyle.Default)
				{
					internalTabParent.GetDrawingTools(this, out var fillBrush, out var textColor, out var font, out var delta);
					TabPaint.DrawTab(g, bounds, internalTabParent.ImageList, imageIndex, Label, fillBrush, textColor, font, base.Enabled, delta, base.Checked || bounds.Left == 0);
				}
				else
				{
					m_renderer.Bounds = bounds;
					m_renderer.DrawTab(g);
				}
			}
		}
		finally
		{
			base.Dirty = false;
		}
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing && m_renderer != null)
		{
			m_renderer.Dispose();
			m_renderer = null;
		}
		base.Dispose(disposing);
	}
}
