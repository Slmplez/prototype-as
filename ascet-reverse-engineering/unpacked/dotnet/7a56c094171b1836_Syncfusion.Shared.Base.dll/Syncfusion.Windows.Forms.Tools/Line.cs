using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

internal struct Line
{
	private Point m_point1;

	private Point m_point2;

	public static Line Empty = new Line(Point.Empty, Point.Empty);

	public Point Point1
	{
		get
		{
			return m_point1;
		}
		set
		{
			if (value != m_point1)
			{
				m_point1 = value;
			}
		}
	}

	public Point Point2
	{
		get
		{
			return m_point2;
		}
		set
		{
			if (value != m_point2)
			{
				m_point2 = value;
			}
		}
	}

	public Line(Point point1, Point point2)
	{
		m_point1 = point1;
		m_point2 = point2;
	}

	public Size GetSize()
	{
		int num = Point2.X - Point1.X;
		if (num == 0)
		{
			num = 1;
		}
		int num2 = Point2.Y - Point1.Y;
		if (num2 == 0)
		{
			num2 = 1;
		}
		return new Size(num, num2);
	}
}
