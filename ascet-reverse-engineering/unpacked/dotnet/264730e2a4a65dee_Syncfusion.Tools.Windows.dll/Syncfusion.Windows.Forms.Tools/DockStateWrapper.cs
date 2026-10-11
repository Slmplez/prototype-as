using System;
using System.Collections;
using System.Drawing;
using System.Runtime.Serialization;

namespace Syncfusion.Windows.Forms.Tools;

[Serializable]
internal class DockStateWrapper : LayoutControllerWrapper, ISerializable
{
	private ArrayList m_internalController;

	private Hashtable m_relations;

	private Size m_storedLayoutSize = Size.Empty;

	public Size StoredLayoutSize
	{
		get
		{
			return m_storedLayoutSize;
		}
		set
		{
			if (m_storedLayoutSize != value)
			{
				m_storedLayoutSize = value;
			}
		}
	}

	public ArrayList InternalController
	{
		get
		{
			return m_internalController;
		}
		set
		{
			if (m_internalController != value)
			{
				m_internalController = value;
			}
		}
	}

	public Hashtable Relations
	{
		get
		{
			return m_relations;
		}
		set
		{
			if (m_relations != value)
			{
				m_relations = value;
			}
		}
	}

	public override void GetObjectData(SerializationInfo info, StreamingContext context)
	{
		base.GetObjectData(info, context);
		info.AddValue(SerializationConsts.INTERNAL_CONTROL, m_internalController);
		info.AddValue(SerializationConsts.RELATIONS, m_relations);
		info.AddValue(SerializationConsts.STORED_LAYOUT_SIZE, m_storedLayoutSize);
	}

	protected DockStateWrapper(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
		Hashtable hashtable = new Hashtable();
		SerializationInfoEnumerator enumerator = info.GetEnumerator();
		while (enumerator.MoveNext())
		{
			hashtable[enumerator.Current.Name] = null;
		}
		m_internalController = (ArrayList)info.GetValue(SerializationConsts.INTERNAL_CONTROL, typeof(ArrayList));
		m_relations = (Hashtable)info.GetValue(SerializationConsts.RELATIONS, typeof(Hashtable));
		if (hashtable.Contains(SerializationConsts.STORED_LAYOUT_SIZE))
		{
			m_storedLayoutSize = (Size)info.GetValue(SerializationConsts.STORED_LAYOUT_SIZE, typeof(Size));
		}
	}

	public DockStateWrapper()
	{
	}
}
