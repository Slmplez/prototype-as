using System;

namespace Syncfusion.Documentation;

[DocumentationExclude]
[AttributeUsage(AttributeTargets.Assembly, AllowMultiple = false)]
public class DocumentationNamespaceExcludeAttribute : Attribute
{
	private string namespaces;

	public string Namespaces => namespaces;

	public DocumentationNamespaceExcludeAttribute(string namespaces)
	{
		this.namespaces = namespaces;
	}

	public override string ToString()
	{
		return Namespaces;
	}
}
