"""Read the local Windows IPv4 listener owner without launching PowerShell."""
import ctypes
from ctypes import wintypes
import struct

MAX_TABLE_BYTES = 16 * 1024 * 1024


def listener_pid(table, port):
    if type(port) is not int or not 1 <= port <= 65535:
        raise RuntimeError('Invalid ASCET endpoint port')
    if len(table) < 4 or len(table) > MAX_TABLE_BYTES:
        raise RuntimeError('Invalid listener table size')
    count, = struct.unpack_from('<I', table)
    if count > (len(table) - 4) // 24:
        raise RuntimeError('Truncated listener table')
    owners = set()
    for index in range(count):
        state, address, network_port, _, _, pid = struct.unpack_from('<6I', table, 4 + index * 24)
        local_port = ((network_port & 255) << 8) | ((network_port >> 8) & 255)
        if state == 2 and local_port == port and address in (0, 0x0100007f):
            if pid == 0:
                raise RuntimeError('Invalid ASCET listener owner')
            owners.add(pid)
    if not owners:
        raise RuntimeError('No ASCET loopback IPv4 listener at port ' + str(port))
    if len(owners) != 1:
        raise RuntimeError('Ambiguous ASCET listener owner')
    return owners.pop()


def endpoint_process(port=32503):
    api = ctypes.WinDLL('iphlpapi', use_last_error=True).GetExtendedTcpTable
    api.argtypes = (ctypes.c_void_p, ctypes.POINTER(wintypes.DWORD), wintypes.BOOL,
                    wintypes.ULONG, ctypes.c_int, wintypes.ULONG)
    api.restype = wintypes.DWORD
    size = wintypes.DWORD()
    code = api(None, ctypes.byref(size), False, 2, 3, 0)
    if code != 122 or not 4 <= size.value <= MAX_TABLE_BYTES:
        raise RuntimeError('Cannot size ASCET listener table: ' + str(code))
    for _ in range(3):
        allocated = size.value
        buffer = ctypes.create_string_buffer(allocated)
        code = api(buffer, ctypes.byref(size), False, 2, 3, 0)
        if code == 0:
            if not 4 <= size.value <= allocated:
                raise RuntimeError('Invalid native listener table length')
            return listener_pid(buffer.raw[:size.value], port)
        if code != 122 or not 4 <= size.value <= MAX_TABLE_BYTES:
            raise RuntimeError('Cannot read ASCET listener table: ' + str(code))
    raise RuntimeError('ASCET listener table changed repeatedly during query')
