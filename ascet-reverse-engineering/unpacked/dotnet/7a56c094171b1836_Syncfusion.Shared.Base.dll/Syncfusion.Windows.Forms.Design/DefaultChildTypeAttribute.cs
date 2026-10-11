using System;

namespace Syncfusion.Windows.Forms.Design;

[AttributeUsage(AttributeTargets.Class | AttributeTargets.Interface, AllowMultiple = false, Inherited = true)]
public class DefaultChildTypeAttribute : Attribute
{
	private Type childType;

	public Type ChildType => childType;

	public DefaultChildTypeAttribute(Type childType)
	{
		this.childType = childType;
	}
}
