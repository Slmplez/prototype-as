using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("104300D1-72AE-11D5-B316-0800309CC2CE")]
[CoClass(typeof(RequirementIDFactoryClass))]
public interface RequirementIDFactory : IRequirementIDFactory
{
}
