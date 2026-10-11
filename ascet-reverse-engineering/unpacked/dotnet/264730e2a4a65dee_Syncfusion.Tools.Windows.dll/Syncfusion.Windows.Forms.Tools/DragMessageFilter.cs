using System.Collections;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
public class DragMessageFilter : IMessageFilter
{
	internal ArrayList Provider = new ArrayList();

	public bool PreFilterMessage(ref Message m)
	{
		if (Provider.Count == 0)
		{
			return false;
		}
		if ((m.Msg >= 516 && m.Msg <= 521) || m.Msg == 20)
		{
			foreach (CustomDragProvider item in Provider)
			{
				if (item.DraggingControl != null)
				{
					return true;
				}
			}
			return false;
		}
		if (m.Msg == 256)
		{
			if ((int)m.WParam == 27)
			{
				foreach (CustomDragProvider item2 in Provider)
				{
					if (item2.DraggingControl != null)
					{
						if (!(item2 is BorderDragProvider) || !item2.DraggingControl.InternalController.DockingManager.DesignMode)
						{
							item2.DraggingControl.AbortDrag();
						}
					}
					else
					{
						item2.AllowDrag = false;
					}
				}
			}
			if ((int)m.WParam == 17)
			{
				foreach (CustomDragProvider item3 in Provider)
				{
					item3.ProcessCtrlKeyDown();
				}
			}
		}
		if (m.Msg == 257)
		{
			if ((int)m.WParam == 27)
			{
				foreach (CustomDragProvider item4 in Provider)
				{
					item4.AllowDrag = true;
				}
			}
			if ((int)m.WParam == 17)
			{
				foreach (CustomDragProvider item5 in Provider)
				{
					item5.ProcessCtrlKeyUp();
				}
			}
		}
		return false;
	}
}
