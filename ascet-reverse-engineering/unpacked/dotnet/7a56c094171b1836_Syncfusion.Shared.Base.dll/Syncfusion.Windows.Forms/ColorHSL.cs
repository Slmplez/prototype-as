using System;
using System.Drawing;

namespace Syncfusion.Windows.Forms;

public class ColorHSL
{
	private int m_iH;

	private int m_iS;

	private int m_iL;

	public int H
	{
		get
		{
			return m_iH;
		}
		set
		{
			if (value > 240)
			{
				value = 240;
			}
			else if (value < 0)
			{
				value = 0;
			}
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
			if (value > 240)
			{
				value = 240;
			}
			else if (value < 0)
			{
				value = 0;
			}
			m_iS = value;
		}
	}

	public int L
	{
		get
		{
			return m_iL;
		}
		set
		{
			if (value > 240)
			{
				value = 240;
			}
			else if (value < 0)
			{
				value = 0;
			}
			m_iL = value;
		}
	}

	public ColorHSL(int h, int s, int l)
	{
		m_iH = h;
		m_iS = s;
		m_iL = l;
	}

	public ColorHSL(Color pColor)
	{
		Initialize(pColor);
	}

	public void Modify(int hue, int sat, int lum)
	{
		m_iH += hue;
		m_iS += sat;
		m_iL += lum;
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
		if (m_iL < 0)
		{
			m_iL = 0;
		}
		if (m_iL > 240)
		{
			m_iL = 240;
		}
	}

	private void Initialize(Color pColor)
	{
		double num = 0.0;
		double num2 = 0.0;
		double num3 = 0.0;
		double num4 = (double)(int)pColor.R / 255.0;
		double num5 = (double)(int)pColor.G / 255.0;
		double num6 = (double)(int)pColor.B / 255.0;
		double num7 = Math.Max(num4, Math.Max(num5, num6));
		double num8 = Math.Min(num4, Math.Min(num5, num6));
		if (num7 == num8)
		{
			num = 0.0;
		}
		else if (num7 == num4 && num5 >= num6)
		{
			num = 60.0 * (num5 - num6) / (num7 - num8);
		}
		else if (num7 == num4 && num5 < num6)
		{
			num = 60.0 * (num5 - num6) / (num7 - num8) + 360.0;
		}
		else if (num7 == num5)
		{
			num = 60.0 * (num6 - num4) / (num7 - num8) + 120.0;
		}
		else if (num7 == num6)
		{
			num = 60.0 * (num4 - num5) / (num7 - num8) + 240.0;
		}
		num3 = (num7 + num8) / 2.0;
		if (num3 == 0.0 || num7 == num8)
		{
			num2 = 0.0;
		}
		else if (0.0 < num3 && num3 <= 0.5)
		{
			num2 = (num7 - num8) / (num7 + num8);
		}
		else if (num3 > 0.5)
		{
			num2 = (num7 - num8) / (2.0 - (num7 + num8));
		}
		m_iH = (int)(num * 240.0 / 360.0);
		m_iS = (int)(num2 * 240.0);
		m_iL = (int)(num3 * 240.0);
	}

	public Color ToRGB()
	{
		double num = (double)m_iH * 360.0 / 240.0;
		double num2 = (double)m_iS / 240.0;
		double num3 = (double)m_iL / 240.0;
		double num4 = ((num3 < 0.5) ? (num3 * (1.0 + num2)) : (num3 + num2 - num3 * num2));
		double num5 = 2.0 * num3 - num4;
		double num6 = num / 360.0;
		double[] array = new double[3]
		{
			num6 + 1.0 / 3.0,
			num6,
			num6 - 1.0 / 3.0
		};
		for (int i = 0; i < 3; i++)
		{
			if (array[i] < 0.0)
			{
				array[i] += 1.0;
			}
			if (array[i] > 1.0)
			{
				array[i] -= 1.0;
			}
			if (array[i] * 6.0 < 1.0)
			{
				array[i] = num5 + (num4 - num5) * 6.0 * array[i];
			}
			else if (array[i] * 2.0 < 1.0)
			{
				array[i] = num4;
			}
			else if (array[i] * 3.0 < 2.0)
			{
				array[i] = num5 + (num4 - num5) * (2.0 / 3.0 - array[i]) * 6.0;
			}
			else
			{
				array[i] = num5;
			}
		}
		return Color.FromArgb((int)(array[0] * 255.0), (int)(array[1] * 255.0), (int)(array[2] * 255.0));
	}
}
