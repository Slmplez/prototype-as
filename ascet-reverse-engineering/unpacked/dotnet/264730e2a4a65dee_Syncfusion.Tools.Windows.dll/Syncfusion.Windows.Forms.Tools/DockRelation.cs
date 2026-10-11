using System;
using System.Collections;
using System.Runtime.Serialization;

namespace Syncfusion.Windows.Forms.Tools;

[Serializable]
internal class DockRelation : ISerializable
{
	protected ArrayList m_relatedControllers;

	protected DockInfo m_relation;

	public ArrayList RelatedControllers
	{
		get
		{
			return m_relatedControllers;
		}
		set
		{
			if (m_relatedControllers != value)
			{
				m_relatedControllers = value;
			}
		}
	}

	public DockInfo Relation
	{
		get
		{
			return m_relation;
		}
		set
		{
			if (m_relation != value)
			{
				m_relation = value;
			}
		}
	}

	public DockRelation()
	{
		m_relatedControllers = new ArrayList();
	}

	public DockRelation(ArrayList controllers, DockInfo relation)
	{
		RelatedControllers = controllers;
		Relation = relation;
	}

	protected DockRelation(SerializationInfo info, StreamingContext context)
	{
		m_relation = (DockInfo)info.GetValue("DockRelation", typeof(DockInfo));
	}

	public void GetObjectData(SerializationInfo info, StreamingContext context)
	{
		info.AddValue("DockRelation", m_relation);
	}
}
