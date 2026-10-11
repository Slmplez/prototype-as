using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[CoClass(typeof(BaselineFactoryClass))]
[Guid("1043000F-72AE-11D5-B316-0800309CC2CE")]
public interface BaselineFactory : IBaselineFactory
{
}
