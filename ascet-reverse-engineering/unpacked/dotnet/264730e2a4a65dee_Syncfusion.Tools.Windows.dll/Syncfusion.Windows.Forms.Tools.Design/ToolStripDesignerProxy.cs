using System;
using System.Reflection;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools.Design;

internal class ToolStripDesignerProxy
{
	private static Type m_baseType;

	private static FieldInfo m_fiDragItem;

	public static ToolStripItem DragItem
	{
		get
		{
			if (m_fiDragItem != null)
			{
				return m_fiDragItem.GetValue(null) as ToolStripItem;
			}
			return null;
		}
		set
		{
			if (m_fiDragItem != null)
			{
				m_fiDragItem.SetValue(null, value);
			}
		}
	}

	static ToolStripDesignerProxy()
	{
		m_baseType = Type.GetType("System.Windows.Forms.Design.ToolStripDesigner, System.Design");
		if (m_baseType != null)
		{
			m_fiDragItem = m_baseType.GetField("dragItem", BindingFlags.Static | BindingFlags.NonPublic);
		}
	}
}
