using System;
using System.Collections;
using System.Windows.Forms;
using System.Windows.Forms.Design.Behavior;

namespace Syncfusion.Windows.Forms.Tools.Design;

public class ToolStripExGlyphCollection : GlyphCollection, IList, ICollection, IEnumerable
{
	private static Type m_tMiniLockedBorderGlyph;

	private static Type m_tToolStripItemGlyph;

	static ToolStripExGlyphCollection()
	{
		m_tMiniLockedBorderGlyph = Type.GetType("System.Windows.Forms.Design.Behavior.MiniLockedBorderGlyph, System.Design");
		m_tToolStripItemGlyph = Type.GetType("System.Windows.Forms.Design.ToolStripItemGlyph, System.Design");
	}

	protected override void OnClear()
	{
		int i = 0;
		for (int count = base.InnerList.Count; i < count; i++)
		{
			if (base.InnerList[i] is ToolStripExItemGlyph toolStripExItemGlyph)
			{
				toolStripExItemGlyph.OnRemove();
			}
		}
		base.OnClear();
	}

	protected override void OnInsertComplete(int index, object value)
	{
		if (value is ToolStripExItemGlyph)
		{
			(value as ToolStripExItemGlyph).OnInsert();
		}
		base.OnInsertComplete(index, value);
	}

	protected override void OnRemoveComplete(int index, object value)
	{
		if (value is ToolStripExItemGlyph)
		{
			(value as ToolStripExItemGlyph).OnRemove();
		}
		base.OnRemoveComplete(index, value);
	}

	int IList.Add(object value)
	{
		int num = -1;
		object validObject = GetValidObject(value);
		if (validObject != null)
		{
			num = base.InnerList.Add(validObject);
			OnInsertComplete(num, validObject);
		}
		return num;
	}

	void IList.Insert(int index, object value)
	{
		if (index >= 0 && index <= base.InnerList.Count)
		{
			object validObject = GetValidObject(value);
			if (validObject != null)
			{
				base.InnerList.Insert(index, validObject);
				OnInsertComplete(index, validObject);
			}
		}
	}

	void IList.Remove(object value)
	{
		OnValidate(value);
		int indexOf = GetIndexOf(value);
		if (indexOf >= 0)
		{
			object value2 = base.InnerList[indexOf];
			base.InnerList.RemoveAt(indexOf);
			OnRemoveComplete(indexOf, value2);
		}
	}

	int IList.IndexOf(object value)
	{
		return GetIndexOf(value);
	}

	bool IList.Contains(object value)
	{
		int i = 0;
		for (int count = base.InnerList.Count; i < count; i++)
		{
			object obj = base.InnerList[i];
			if (obj == value || GetBaseGlyph(obj) == value)
			{
				return true;
			}
		}
		return false;
	}

	private object GetValidObject(object value)
	{
		if (!(value is ToolStripExItemGlyph))
		{
			if (IsPanelItemGlyph(value as ComponentGlyph))
			{
				return new ToolStripPanelItemGlyph(value as ComponentGlyph, this);
			}
			if (m_tToolStripItemGlyph != null && m_tToolStripItemGlyph.IsInstanceOfType(value))
			{
				return new ToolStripExItemGlyph(value as ComponentGlyph);
			}
			if (m_tMiniLockedBorderGlyph != null && m_tMiniLockedBorderGlyph.IsInstanceOfType(value))
			{
				return null;
			}
		}
		return value;
	}

	private ComponentGlyph GetBaseGlyph(object value)
	{
		if (!(value is ToolStripExItemGlyph toolStripExItemGlyph))
		{
			return null;
		}
		return toolStripExItemGlyph.BaseGlyph;
	}

	private int GetIndexOf(object value)
	{
		int num = base.InnerList.IndexOf(value);
		if (num < 0 && m_tToolStripItemGlyph.IsInstanceOfType(value))
		{
			int i = 0;
			for (int count = base.InnerList.Count; i < count; i++)
			{
				if (GetBaseGlyph(base.InnerList[i]) == value)
				{
					num = i;
					break;
				}
			}
		}
		return num;
	}

	private bool IsPanelItemGlyph(object value)
	{
		bool result = false;
		if (value is ComponentGlyph && ((ComponentGlyph)value).RelatedComponent is ToolStripControlHost toolStripControlHost)
		{
			result = toolStripControlHost.Control is ToolStrip;
		}
		return result;
	}
}
