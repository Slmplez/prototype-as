using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[CoClass(typeof(BaselineIDFactoryClass))]
[Guid("10430019-72AE-11D5-B316-0800309CC2CE")]
public interface BaselineIDFactory : IBaselineIDFactory
{
}
