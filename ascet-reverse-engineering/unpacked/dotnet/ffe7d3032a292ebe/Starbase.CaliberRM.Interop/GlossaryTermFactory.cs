using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("1043007B-72AE-11D5-B316-0800309CC2CE")]
[CoClass(typeof(GlossaryTermFactoryClass))]
public interface GlossaryTermFactory : IGlossaryTermFactory
{
}
