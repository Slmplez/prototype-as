using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("10430055-72AE-11D5-B316-0800309CC2CE")]
[CoClass(typeof(DepartmentIDFactoryClass))]
public interface DepartmentIDFactory : IDepartmentIDFactory
{
}
