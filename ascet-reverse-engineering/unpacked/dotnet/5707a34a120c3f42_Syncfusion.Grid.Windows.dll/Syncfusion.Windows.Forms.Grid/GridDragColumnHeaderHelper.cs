using System;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Grid;

public class GridDragColumnHeaderHelper : IDisposable
{
	private bool isDragging;

	internal DragDropEffects lastDragDropEffect;

	internal GridDragColumnHeaderWindow dragWindow = new GridDragColumnHeaderWindow();

	[DocumentationExclude]
	public GridDragColumnHeaderWindow DragWindow => dragWindow;

	[DocumentationExclude]
	public DragDropEffects LastDragDropEffect => lastDragDropEffect;

	[DocumentationExclude]
	public bool IsDragging => isDragging;

	public void StartDrag(Bitmap bmp, Point startPoint, DragDropEffects effects)
	{
		StopDrag();
		isDragging = true;
		lastDragDropEffect = effects;
		dragWindow.DragBitmap = bmp;
		dragWindow.Invalidate();
		dragWindow.StartDrag(startPoint);
		CheckDragCursor(effects);
	}

	[DocumentationExclude]
	protected void CheckDragCursor(DragDropEffects e)
	{
	}

	[DocumentationExclude]
	protected void StopDrag()
	{
		isDragging = false;
		lastDragDropEffect = DragDropEffects.None;
		dragWindow.StopDrag();
	}

	public void DoDrag(Point p, DragDropEffects e)
	{
		if (isDragging)
		{
			lastDragDropEffect = e;
			CheckDragCursor(e);
			dragWindow.MoveTo(p);
		}
	}

	public void CancelDrag()
	{
		if (isDragging)
		{
			StopDrag();
		}
	}

	public void EndDrag()
	{
		if (isDragging)
		{
			StopDrag();
		}
	}

	public void Dispose()
	{
		dragWindow.Dispose();
		dragWindow = null;
	}
}
