using System;
using System.Collections;
using System.Runtime.Serialization;

namespace Syncfusion.Windows.Forms.Tools;

[Serializable]
public class InternalDockStateWrapper : ISerializable
{
	private ArrayList m_internalController;

	private Hashtable m_relations;

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

	public void GetObjectData(SerializationInfo info, StreamingContext context)
	{
		info.AddValue(SerializationConsts.INTERNAL_CONTROL, m_internalController);
		info.AddValue(SerializationConsts.RELATIONS, m_relations);
	}

	protected InternalDockStateWrapper(SerializationInfo info, StreamingContext context)
	{
		m_internalController = (ArrayList)info.GetValue(SerializationConsts.INTERNAL_CONTROL, typeof(ArrayList));
		m_relations = (Hashtable)info.GetValue(SerializationConsts.RELATIONS, typeof(Hashtable));
	}

	public InternalDockStateWrapper()
	{
	}
}
