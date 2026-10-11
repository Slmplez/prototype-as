using System;

namespace Syncfusion.Windows.Forms.Tools;

[Serializable]
internal struct RelationNamePair
{
	public string Name;

	public float Relation;

	public RelationNamePair(string name, float relation)
	{
		Name = name;
		Relation = relation;
	}
}
