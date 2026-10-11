using System;
using System.Runtime.Serialization;

namespace Syncfusion.Windows.Forms.Grid.Design;

internal sealed class GridControlDesignerBinder : SerializationBinder
{
	public override Type BindToType(string assemblyName, string typeName)
	{
		Type type = Type.GetType(typeName);
		if (type != null)
		{
			return type;
		}
		return null;
	}
}
