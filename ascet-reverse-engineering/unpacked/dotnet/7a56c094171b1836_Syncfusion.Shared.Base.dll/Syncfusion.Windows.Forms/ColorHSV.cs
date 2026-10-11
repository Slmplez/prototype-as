using System;
using System.Drawing;

namespace Syncfusion.Windows.Forms;

public class ColorHSV
{
	private int m_iH;

	private int m_iS;

	private int m_iV;

	public int H
	{
		get
		{
			return m_iH;
		}
		set
		{
			m_iH = value;
		}
	}

	public int S
	{
		get
		{
			return m_iS;
		}
		set
		{
			m_iS = value;
		}
	}

	public int V
	{
		get
		{
			return m_iV;
		}
		set
		{
			m_iV = value;
		}
	}

	public ColorHSV(int h, int s, int v)
	{
		m_iH = h;
		m_iS = s;
		m_iV = v;
	}

	public ColorHSV(Color pColor)
	{
		Initialize(pColor);
	}

	public void Modify(int hue, int sat, int val)
	{
		m_iH += hue;
		m_iS += sat;
		m_iV += val;
		if (m_iH < 0)
		{
			m_iH = 0;
		}
		if (m_iH > 240)
		{
			m_iH = 240;
		}
		if (m_iS < 0)
		{
			m_iS = 0;
		}
		if (m_iS > 240)
		{
			m_iS = 240;
		}
		if (m_iV < 0)
		{
			m_iV = 0;
		}
		if (m_iV > 240)
		{
			m_iV = 240;
		}
	}

	private void Initialize(Color pColor)
	{
		double num = (double)(int)pColor.R / 255.0;
		double num2 = (double)(int)pColor.G / 255.0;
		double num3 = (double)(int)pColor.B / 255.0;
		double num4 = Math.Max(num, Math.Max(num2, num3));
		double num5 = Math.Min(num, Math.Min(num2, num3));
		double num6 = num4 - num5;
		double num7 = num4;
		if (num4 != 0.0)
		{
			double num8 = num6 / num4;
			double num9 = ((num6 == 0.0) ? 0.0 : ((num == num4) ? ((num2 - num3) / num6) : ((num2 != num4) ? (4.0 + (num - num2) / num6) : (2.0 + (num3 - num) / num6))));
			num9 *= 60.0;
			if (num9 < 0.0)
			{
				num9 += 360.0;
			}
			m_iH = (int)(num9 + 0.5);
			m_iS = (int)(num8 * 255.0 + 0.5);
			m_iV = (int)(num7 * 255.0 + 0.5);
		}
		else
		{
			double num8 = 0.0;
			double num9 = -1.0;
		}
	}

	public Color ToRGB()
	{
		double num = m_iH;
		double num2 = (double)m_iS / 255.0;
		double num3 = (double)m_iV / 255.0;
		if (num2 == 0.0)
		{
			return Color.FromArgb(m_iV, m_iV, m_iV);
		}
		num /= 60.0;
		int num4 = (int)Math.Floor(num);
		double num5 = num - (double)num4;
		double num6 = num3 * (1.0 - num2);
		double num7 = num3 * (1.0 - num2 * num5);
		double num8 = num3 * (1.0 - num2 * (1.0 - num5));
		double num9;
		double num10;
		double num11;
		switch (num4)
		{
		case 0:
			num9 = num3;
			num10 = num8;
			num11 = num6;
			break;
		case 1:
			num9 = num7;
			num10 = num3;
			num11 = num6;
			break;
		case 2:
			num9 = num6;
			num10 = num3;
			num11 = num8;
			break;
		case 3:
			num9 = num6;
			num10 = num7;
			num11 = num3;
			break;
		case 4:
			num9 = num8;
			num10 = num6;
			num11 = num3;
			break;
		default:
			num9 = num3;
			num10 = num6;
			num11 = num7;
			break;
		}
		return Color.FromArgb((int)(num9 * 255.0 + 0.5), (int)(num10 * 255.0 + 0.5), (int)(num11 * 255.0 + 0.5));
	}
}
