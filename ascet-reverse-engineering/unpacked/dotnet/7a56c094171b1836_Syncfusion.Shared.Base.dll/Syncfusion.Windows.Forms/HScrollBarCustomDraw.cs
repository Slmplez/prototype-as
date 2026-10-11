using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms;

[ToolboxItem(false)]
public class HScrollBarCustomDraw : ScrollBarCustomDraw
{
	private const int DEF_MINTHUMB_WIDTH = 7;

	private int m_deltaX;

	private bool m_bIsControlsVisible = true;

	private Size m_defaultSize = new Size(80, 17);

	public new int Width
	{
		get
		{
			return base.Width;
		}
		set
		{
			if (!base.KeepSystemMetrics && Width != value)
			{
				base.Width = value;
			}
		}
	}

	public new Size Size
	{
		get
		{
			return base.Size;
		}
		set
		{
			if (Size != value)
			{
				base.Size = value;
			}
		}
	}

	internal HScrollBarCustomDraw(ScrollersFrame owner)
		: base(owner)
	{
		Size = m_defaultSize;
		int num = Accumulate(base.ControlsAfter).Width + Accumulate(base.ControlsBefore).Width;
		if (num > Width - 7 - 4 && Width > 0)
		{
			m_IsSetControlsVisiblity = true;
			SetControlsLayoutVisibility(hide: true);
			m_IsSetControlsVisiblity = false;
			m_bIsControlsVisible = false;
		}
		else
		{
			m_IsSetControlsVisiblity = true;
			SetControlsLayoutVisibility(hide: false);
			m_IsSetControlsVisiblity = false;
			m_bIsControlsVisible = true;
		}
	}

	public HScrollBarCustomDraw()
		: this(null)
	{
	}

	protected override void OnSizeChanged(EventArgs e)
	{
		ValidateControlsVisibility();
		base.OnSizeChanged(e);
	}

	protected override void ValidateControlsVisibility()
	{
		int num = Accumulate(base.ControlsAfter).Width + Accumulate(base.ControlsBefore).Width;
		if (num > Width - 7 - 4 && Width > 0)
		{
			m_IsSetControlsVisiblity = true;
			SetControlsLayoutVisibility(hide: true);
			m_IsSetControlsVisiblity = false;
			m_bIsControlsVisible = false;
		}
		else
		{
			m_IsSetControlsVisiblity = true;
			SetControlsLayoutVisibility(hide: false);
			m_IsSetControlsVisiblity = false;
			m_bIsControlsVisible = true;
		}
	}

	protected override void ResetToSystemMetrics()
	{
		base.Height = SystemInformation.HorizontalScrollBarHeight;
	}

	protected override DockStyle GetAfterControlsDockStyle()
	{
		if (!base.IsRtl)
		{
			return DockStyle.Right;
		}
		return DockStyle.Left;
	}

	protected override DockStyle GetBeforeControlsDockStyle()
	{
		if (!base.IsRtl)
		{
			return DockStyle.Left;
		}
		return DockStyle.Right;
	}

	public override int PointToValue(int x, int y)
	{
		if (m_max == m_min)
		{
			return m_min;
		}
		int num;
		int num2;
		if (base.IsRtl)
		{
			num = m_rects[4].X;
			num2 = m_rects[0].X;
		}
		else
		{
			num = m_rects[3].X;
			num2 = m_rects[1].X;
		}
		double num3 = (double)(num2 - num) / (double)(m_max - m_min + 1);
		double num4 = x - num;
		return (int)Math.Round(num4 / num3 + (double)m_min);
	}

	protected override void RecalculateArrow()
	{
		CalculateArrowsPositions();
	}

	protected override void RecalculateThumb()
	{
		CalculateThumbSize();
	}

	protected override ScrollButton GetMaxButton()
	{
		if (!base.IsRtl)
		{
			return ScrollButton.Right;
		}
		return ScrollButton.Left;
	}

	protected override ScrollButton GetMinButton()
	{
		if (!base.IsRtl)
		{
			return ScrollButton.Left;
		}
		return ScrollButton.Right;
	}

	protected override void OnMovedPositionChanged(int x, int y)
	{
		int num;
		int num2;
		if (!base.IsRtl)
		{
			num = m_rects[0].X + m_rects[0].Width;
			num2 = m_rects[1].X;
		}
		else
		{
			num = m_rects[1].X + m_rects[1].Width;
			num2 = m_rects[0].X;
		}
		if (x - m_deltaX < num)
		{
			m_rects[2].X = num;
		}
		else if (x - m_deltaX + m_rects[2].Width > num2)
		{
			int num3 = m_rects[2].Width;
			if (m_rects[2].Width == 7)
			{
				num3 = 0;
			}
			m_rects[2].X = num2 - num3;
		}
		else
		{
			int num4 = 0;
			if (m_rects[2].Width == 7)
			{
				num4 = m_rects[2].Width;
			}
			m_rects[2].X = x - m_deltaX + num4;
		}
		CalculateThumbLeftAndRightZone();
	}

	protected override void CalculatedDelta(int x, int y)
	{
		m_deltaX = x - m_rects[2].X;
	}

	protected bool ShouldSerializeSize()
	{
		return Size != m_defaultSize;
	}

	public void ResetSize()
	{
		Size = m_defaultSize;
	}

	private void CalculateArrowsPositions()
	{
		Size size = Accumulate(base.ControlsAfter);
		Size size2 = Accumulate(base.ControlsBefore);
		if (!m_bIsControlsVisible)
		{
			size.Width = 0;
			size2.Width = 0;
		}
		int horizontalScrollBarArrowWidth = SystemInformation.HorizontalScrollBarArrowWidth;
		int num = Width - size.Width - size2.Width;
		int num2 = ((num / 2 < horizontalScrollBarArrowWidth) ? (num / 2) : horizontalScrollBarArrowWidth);
		if (base.IsRtl)
		{
			int num3 = Width - size2.Width - num2;
			ref Rectangle reference = ref m_rects[0];
			reference = new Rectangle(num3, 0, num2, base.Height);
			num3 = size.Width;
			ref Rectangle reference2 = ref m_rects[1];
			reference2 = new Rectangle(num3, 0, num2, base.Height);
		}
		else
		{
			int num3 = size2.Width;
			ref Rectangle reference3 = ref m_rects[0];
			reference3 = new Rectangle(num3, 0, num2, base.Height);
			num3 = Width - size.Width - num2;
			ref Rectangle reference4 = ref m_rects[1];
			reference4 = new Rectangle(num3, 0, num2, base.Height);
		}
	}

	private void CalculateThumbSize()
	{
		int num = m_max - m_min + 1;
		int num2 = Math.Abs(m_rects[1].X - m_rects[0].X) - m_rects[0].Width;
		double num3 = (double)num2 / (double)num;
		int num4 = ((m_largeChange > 0) ? ((int)Math.Round((double)m_largeChange * num3)) : SystemInformation.HorizontalScrollBarThumbWidth);
		int num5 = (int)Math.Round(num3 * (double)(m_value - m_min));
		if (num4 < 7)
		{
			num4 = ((num2 > 8) ? 7 : 0);
		}
		num5 = ((!base.IsRtl) ? (num5 + m_rects[0].Right) : (num5 + m_rects[1].Right));
		ref Rectangle reference = ref m_rects[2];
		reference = new Rectangle(num5, 0, num4, base.Height);
		CalculateThumbLeftAndRightZone();
	}

	private void CalculateThumbLeftAndRightZone()
	{
		if (base.IsRtl)
		{
			int num = m_rects[2].X;
			int num2 = num + m_rects[2].Width;
			int num3 = m_rects[0].X - num2;
			ref Rectangle reference = ref m_rects[3];
			reference = new Rectangle(num2, 0, num3, base.Height);
			num2 = m_rects[1].X + m_rects[1].Width;
			ref Rectangle reference2 = ref m_rects[4];
			reference2 = new Rectangle(num2, 0, num - num2, base.Height);
		}
		else
		{
			int num4 = m_rects[2].X;
			int num5 = m_rects[0].X + m_rects[0].Width;
			ref Rectangle reference3 = ref m_rects[3];
			reference3 = new Rectangle(num5, 0, num4 - num5, base.Height);
			num5 = num4 + m_rects[2].Width;
			int num6 = m_rects[1].X - num5;
			ref Rectangle reference4 = ref m_rects[4];
			reference4 = new Rectangle(num5, 0, num6, base.Height);
		}
	}

	protected override void OnScrollHereClick(object sender, EventArgs e)
	{
		int num = m_rects[2].Width;
		int num2 = num + m_rects[3].Width + m_rects[4].Width;
		Point ptLocation = m_ptLocation;
		int num3 = 0;
		num3 = ((m_min <= 1) ? (ptLocation.X - m_rects[3].X - num / 2) : ptLocation.X);
		if (num2 > 0)
		{
			base.Value = num3 * (m_max - m_min + 1) / num2;
			OnScroll(new ScrollEventArgs(ScrollEventType.ThumbPosition, m_value));
		}
	}

	protected override void OnPageDownRightClick(object sender, EventArgs e)
	{
		base.Value += base.LargeChange;
		base.OnPageDownRightClick(sender, e);
	}

	protected override void OnPageUpLeftClick(object sender, EventArgs e)
	{
		base.Value -= base.LargeChange;
		base.OnPageUpLeftClick(sender, e);
	}
}
