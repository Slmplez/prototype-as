using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[CoClass(typeof(GlossaryTermColorFactoryClass))]
[Guid("10430081-72AE-11D5-B316-0800309CC2CE")]
public interface GlossaryTermColorFactory : IGlossaryTermColorFactory
{
}
