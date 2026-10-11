using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("104300C3-72AE-11D5-B316-0800309CC2CE")]
[CoClass(typeof(RequirementDescriptionFactoryClass))]
public interface RequirementDescriptionFactory : IRequirementDescriptionFactory
{
}
