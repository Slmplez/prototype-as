using System;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Design;

[DocumentationExclude]
[AttributeUsage(AttributeTargets.Class, AllowMultiple = true)]
public class CollectionItemTypesAttribute : Attribute
{
	private Type collectionType;

	public Type CollectionType => collectionType;

	public CollectionItemTypesAttribute(Type collectionType)
	{
		this.collectionType = collectionType;
	}
}
