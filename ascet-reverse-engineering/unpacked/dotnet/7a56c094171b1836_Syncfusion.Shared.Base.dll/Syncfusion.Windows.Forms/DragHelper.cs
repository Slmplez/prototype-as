using System;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms;

[DocumentationExclude]
public class DragHelper : IDisposable
{
	internal DragDropEffects lastDragDropEffect;

	internal DragWindow dragWindow = new DragWindow();

	private bool m_bIsDragging;

	private Cursor m_parentCursor = Cursors.Default;

	public DragWindow DragWindow => dragWindow;

	public DragDropEffects LastDragDropEffect => lastDragDropEffect;

	public bool IsDragging => m_bIsDragging;

	public void Dispose()
	{
		if (dragWindow != null && !dragWindow.IsDisposed)
		{
			dragWindow.Dispose();
			dragWindow = null;
		}
	}

	public void StartDrag(Bitmap bmp, Point startPoint, DragDropEffects effects)
	{
		StopDrag();
		m_bIsDragging = true;
		lastDragDropEffect = effects;
		DragWindow.DragBitmap = bmp;
		DragWindow.Invalidate();
		DragWindow.StartDrag(startPoint);
		CheckDragCursor(effects);
	}

	public void DoDrag(Point p, DragDropEffects e)
	{
		if (m_bIsDragging)
		{
			lastDragDropEffect = e;
			CheckDragCursor(e);
			DragWindow.MoveTo(p);
			DragWindow.ShowWindowTopMost();
		}
	}

	public void CancelDrag()
	{
		if (m_bIsDragging)
		{
			StopDrag();
		}
	}

	public void EndDrag()
	{
		if (m_bIsDragging)
		{
			StopDrag();
		}
	}

	protected void CheckDragCursor(DragDropEffects e)
	{
		m_parentCursor = Cursor.Current;
		if (e == DragDropEffects.None)
		{
			Cursor.Current = Cursors.No;
		}
		else
		{
			Cursor.Current = m_parentCursor;
		}
	}

	protected void StopDrag()
	{
		m_bIsDragging = false;
		lastDragDropEffect = DragDropEffects.None;
		dragWindow.StopDrag();
	}
}
