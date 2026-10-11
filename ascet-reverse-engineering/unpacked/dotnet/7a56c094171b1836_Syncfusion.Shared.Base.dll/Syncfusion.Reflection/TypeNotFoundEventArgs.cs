using System;

namespace Syncfusion.Reflection;

public class TypeNotFoundEventArgs : EventArgs
{
	private TypeName typeName;

	public TypeName InvalidTypeName => typeName;

	public TypeNotFoundEventArgs(TypeName typeName)
	{
		this.typeName = typeName;
	}
}
