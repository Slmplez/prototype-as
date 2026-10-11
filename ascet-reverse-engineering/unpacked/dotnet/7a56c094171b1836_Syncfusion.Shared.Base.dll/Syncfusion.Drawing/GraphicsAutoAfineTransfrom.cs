using System;
using System.Drawing;
using System.Drawing.Drawing2D;

namespace Syncfusion.Drawing;

public class GraphicsAutoAfineTransfrom : IDisposable
{
	private Graphics m_gph;

	private Matrix m_matrixPrev;

	public GraphicsAutoAfineTransfrom(Graphics gph, float fRatioX, float fRatioY, float fOffsetX, float fOffsetY)
	{
		if (gph != null)
		{
			m_gph = gph;
			m_matrixPrev = gph.Transform;
			m_gph.MultiplyTransform(new Matrix(fRatioX, 0f, 0f, fRatioY, fOffsetX, fOffsetY));
		}
	}

	void IDisposable.Dispose()
	{
		if (m_gph != null && m_matrixPrev != null)
		{
			m_gph.Transform = m_matrixPrev;
			m_matrixPrev = null;
			m_gph = null;
		}
	}
}
