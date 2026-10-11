using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[CoClass(typeof(GlossaryTermIDFactoryClass))]
[Guid("10430085-72AE-11D5-B316-0800309CC2CE")]
public interface GlossaryTermIDFactory : IGlossaryTermIDFactory
{
}
