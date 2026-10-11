using System;
using System.Reflection;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[Serializable]
[DocumentationExclude]
public sealed class DCRelationship
{
	public int nRelation;

	public bool bChild;

	public DockPreference DP;

	public int nIndex;

	private DCRelationship()
	{
	}

	public DCRelationship(int relation, bool child, DockPreference priority, int index)
	{
		nRelation = relation;
		bChild = child;
		DP = priority;
		nIndex = index;
	}

	internal static DCRelationship CloneByReflection(object objthis)
	{
		DCRelationship dCRelationship = new DCRelationship();
		FieldInfo[] fields = objthis.GetType().GetFields();
		FieldInfo[] array = fields;
		foreach (FieldInfo fieldInfo in array)
		{
			switch (fieldInfo.Name)
			{
			case "nRelation":
				dCRelationship.nRelation = (int)fieldInfo.GetValue(objthis);
				break;
			case "bChild":
				dCRelationship.bChild = (bool)fieldInfo.GetValue(objthis);
				break;
			case "DP":
				dCRelationship.DP = (DockPreference)fieldInfo.GetValue(objthis);
				break;
			case "nIndex":
				dCRelationship.nIndex = (int)fieldInfo.GetValue(objthis);
				break;
			}
		}
		return dCRelationship;
	}
}
