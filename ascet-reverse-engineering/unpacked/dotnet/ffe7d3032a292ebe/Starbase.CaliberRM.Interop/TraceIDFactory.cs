using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[CoClass(typeof(TraceIDFactoryClass))]
[Guid("104300FF-72AE-11D5-B316-0800309CC2CE")]
public interface TraceIDFactory : ITraceIDFactory
{
}
