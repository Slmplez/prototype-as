using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("10430091-72AE-11D5-B316-0800309CC2CE")]
[CoClass(typeof(GroupIDFactoryClass))]
public interface GroupIDFactory : IGroupIDFactory
{
}
