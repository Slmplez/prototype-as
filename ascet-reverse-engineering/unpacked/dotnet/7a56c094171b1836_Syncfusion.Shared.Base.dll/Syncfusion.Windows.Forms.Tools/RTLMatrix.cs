using System.Drawing;
using System.Drawing.Drawing2D;

namespace Syncfusion.Windows.Forms.Tools;

internal class RTLMatrix
{
	private Matrix mirrorMatrix;

	private int leftMargin;

	private int rightMargin;

	public RTLMatrix(int leftMargin, int rightMargin, int containerWidth)
	{
		this.leftMargin = leftMargin;
		this.rightMargin = rightMargin;
		mirrorMatrix = new Matrix(-1f, 0f, 0f, 1f, (float)containerWidth - (float)this.leftMargin, 0f);
	}

	public Point TransformPoint(Point pt)
	{
		pt.X -= leftMargin;
		Point[] array = new Point[1] { pt };
		mirrorMatrix.TransformPoints(array);
		array[0].X = array[0].X + rightMargin;
		return array[0];
	}
}
