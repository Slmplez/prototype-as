using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[CoClass(typeof(RequirementDescriptionMappedFactoryClass))]
[Guid("104300C7-72AE-11D5-B316-0800309CC2CE")]
public interface RequirementDescriptionMappedFactory : IRequirementDescriptionMappedFactory
{
}
