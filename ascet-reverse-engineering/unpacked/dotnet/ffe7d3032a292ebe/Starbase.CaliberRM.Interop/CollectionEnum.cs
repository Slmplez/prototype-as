using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("E5724A3E-4F78-11D3-8055-00A0C9AC24E9")]
[CoClass(typeof(CollectionEnumClass))]
public interface CollectionEnum : IStCollectionEnum
{
}
