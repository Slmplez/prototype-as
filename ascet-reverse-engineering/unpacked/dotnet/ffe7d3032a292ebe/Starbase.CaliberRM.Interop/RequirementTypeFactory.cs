using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[CoClass(typeof(RequirementTypeFactoryClass))]
[Guid("104300E3-72AE-11D5-B316-0800309CC2CE")]
public interface RequirementTypeFactory : IRequirementTypeFactory
{
}
