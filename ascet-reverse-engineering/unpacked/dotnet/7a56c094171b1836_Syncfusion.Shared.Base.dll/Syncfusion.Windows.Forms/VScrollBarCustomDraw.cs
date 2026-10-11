using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms;

[ToolboxItem(false)]
public class VScrollBarCustomDraw : ScrollBarCustomDraw
{
	private const int DEF_MINTHUMB_HEIGHT = 7;

	private int m_deltaY;

	private bool m_bIsControlsVisible = true;

	private Size m_defaultSize = new Size(17, 80);

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

	internal VScrollBarCustomDraw(ScrollersFrame owner)
		: base(owner)
	{
		Size = m_defaultSize;
		int num = Accumulate(base.ControlsAfter).Height + Accumulate(base.ControlsBefore).Height;
		if (num > base.Height - 7 - 4 && base.Height > 0)
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

	public VScrollBarCustomDraw()
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
		int num = Accumulate(base.ControlsAfter).Height + Accumulate(base.ControlsBefore).Height;
		if (num > base.Height - 7 - 4 && base.Height > 0)
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
		base.Width = SystemInformation.VerticalScrollBarWidth;
	}

	protected override DockStyle GetAfterControlsDockStyle()
	{
		if (!base.IsRtl)
		{
			return DockStyle.Bottom;
		}
		return DockStyle.Top;
	}

	protected override DockStyle GetBeforeControlsDockStyle()
	{
		if (!base.IsRtl)
		{
			return DockStyle.Top;
		}
		return DockStyle.Bottom;
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
			num = m_rects[4].Y;
			num2 = m_rects[0].Y;
		}
		else
		{
			num = m_rects[3].Y;
			num2 = m_rects[1].Y;
		}
		double num3 = (double)(num2 - num) / (double)(m_max - m_min + 1);
		double num4 = y - num;
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
			return ScrollButton.Down;
		}
		return ScrollButton.Up;
	}

	protected override ScrollButton GetMinButton()
	{
		if (!base.IsRtl)
		{
			return ScrollButton.Up;
		}
		return ScrollButton.Down;
	}

	protected override void CalculatedDelta(int x, int y)
	{
		m_deltaY = y - m_rects[2].Y;
	}

	protected override void OnMovedPositionChanged(int x, int y)
	{
		int num;
		int num2;
		if (!base.IsRtl)
		{
			num = m_rects[0].Y + m_rects[0].Height;
			num2 = m_rects[1].Y;
		}
		else
		{
			num = m_rects[1].Y + m_rects[1].Height;
			num2 = m_rects[0].Y;
		}
		if (y - m_deltaY < num)
		{
			m_rects[2].Y = num;
		}
		else if (y - m_deltaY + m_rects[2].Height > num2)
		{
			int num3 = 1;
			int num4 = m_rects[2].Height - num3;
			if (m_rects[2].Height == 7)
			{
				num4 = 0;
			}
			m_rects[2].Y = num2 - num4;
		}
		else
		{
			int num5 = 0;
			if (m_rects[2].Height == 7)
			{
				num5 = m_rects[2].Height;
			}
			m_rects[2].Y = y - m_deltaY + num5;
		}
		CalculateThumbLeftAndRightZone();
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
			size.Height = 0;
			size2.Height = 0;
		}
		int verticalScrollBarArrowHeight = SystemInformation.VerticalScrollBarArrowHeight;
		int num = base.Height - size.Height - size2.Height;
		int num2 = ((num / 2 < verticalScrollBarArrowHeight) ? (num / 2) : verticalScrollBarArrowHeight);
		if (base.IsRtl)
		{
			int num3 = base.Height - size2.Height - num2;
			ref Rectangle reference = ref m_rects[0];
			reference = new Rectangle(0, num3, base.Width, num2);
			num3 = size.Height;
			ref Rectangle reference2 = ref m_rects[1];
			reference2 = new Rectangle(0, num3, base.Width, num2);
		}
		else
		{
			int num3 = size2.Height;
			ref Rectangle reference3 = ref m_rects[0];
			reference3 = new Rectangle(0, num3, base.Width, num2);
			num3 = base.Height - size.Height - num2;
			ref Rectangle reference4 = ref m_rects[1];
			reference4 = new Rectangle(0, num3, base.Width, num2);
		}
	}

	private void CalculateThumbSize()
	{
		int num = m_max - m_min + 1;
		int num2 = Math.Abs(m_rects[1].Y - m_rects[0].Y) - m_rects[0].Height;
		double num3 = (double)num2 / (double)num;
		int num4 = ((m_largeChange > 0) ? ((int)Math.Round((double)m_largeChange * num3)) : SystemInformation.VerticalScrollBarThumbHeight);
		if (num4 < 7)
		{
			int num5 = 1;
			num4 = ((num2 > 8) ? 7 : 0);
			num2 = Math.Abs(m_rects[1].Y - 7 + num5 - m_rects[0].Y) - m_rects[0].Height;
			num3 = (double)num2 / (double)num;
		}
		int num6 = (int)Math.Round(num3 * (double)(m_value - m_min));
		num6 = ((!base.IsRtl) ? (num6 + m_rects[0].Bottom) : (num6 + m_rects[1].Bottom));
		ref Rectangle reference = ref m_rects[2];
		reference = new Rectangle(0, num6, base.Width, num4);
		CalculateThumbLeftAndRightZone();
	}

	private void CalculateThumbLeftAndRightZone()
	{
		if (!base.IsRtl)
		{
			int num = m_rects[2].Y;
			int num2 = m_rects[0].Y + m_rects[0].Height;
			ref Rectangle reference = ref m_rects[3];
			reference = new Rectangle(0, num2, base.Width, num - num2);
			num2 = num + m_rects[2].Height;
			int num3 = m_rects[1].Y - num2;
			ref Rectangle reference2 = ref m_rects[4];
			reference2 = new Rectangle(0, num2, base.Width, num3);
		}
		else
		{
			int num4 = m_rects[2].Y;
			int num5 = num4 + m_rects[2].Height;
			int num6 = m_rects[0].Y - num5;
			ref Rectangle reference3 = ref m_rects[3];
			reference3 = new Rectangle(0, num5, base.Width, num6);
			num5 = m_rects[1].Y + m_rects[1].Height;
			ref Rectangle reference4 = ref m_rects[4];
			reference4 = new Rectangle(0, num5, base.Width, num4 - num5);
		}
	}

	protected override void OnScrollHereClick(object sender, EventArgs e)
	{
		int num = m_rects[2].Height;
		int num2 = num + m_rects[3].Height + m_rects[4].Height;
		Point ptLocation = m_ptLocation;
		int num3 = 0;
		num3 = ((m_min <= 1) ? (ptLocation.Y - m_rects[3].Y - num / 2) : ptLocation.Y);
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
