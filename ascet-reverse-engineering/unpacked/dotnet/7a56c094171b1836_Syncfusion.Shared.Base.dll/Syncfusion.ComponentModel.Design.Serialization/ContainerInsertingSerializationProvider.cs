using System;
using System.ComponentModel.Design.Serialization;
using Syncfusion.Documentation;

namespace Syncfusion.ComponentModel.Design.Serialization;

[DocumentationExclude]
public class ContainerInsertingSerializationProvider : IDesignerSerializationProvider
{
	private ContainerInsertingCodeDomSerializer serializer;

	private Type sourceType;

	private bool applyOnDerivedClasses;

	public ContainerInsertingSerializationProvider(Type sourceType, bool applyOnDerivedClasses)
	{
		serializer = new ContainerInsertingCodeDomSerializer();
		this.sourceType = sourceType;
		this.applyOnDerivedClasses = applyOnDerivedClasses;
	}

	public virtual object GetSerializer(IDesignerSerializationManager manager, object currentSerializer, Type objectType, Type serializerType)
	{
		if (objectType != null && (objectType == sourceType || (applyOnDerivedClasses && objectType.IsSubclassOf(sourceType))))
		{
			return serializer;
		}
		return null;
	}

	public void Dispose()
	{
		serializer = null;
	}
}
