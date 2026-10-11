/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.filesystem.local.unix;

import java.io.UnsupportedEncodingException;
import java.util.Enumeration;
import org.eclipse.core.filesystem.IFileInfo;
import org.eclipse.core.filesystem.provider.FileInfo;
import org.eclipse.core.internal.filesystem.Activator;
import org.eclipse.core.internal.filesystem.Messages;
import org.eclipse.core.internal.filesystem.Policy;
import org.eclipse.core.internal.filesystem.local.Convert;
import org.eclipse.core.internal.filesystem.local.unix.StructStat;
import org.eclipse.core.internal.filesystem.local.unix.UnixFileFlags;
import org.eclipse.osgi.util.NLS;

public abstract class UnixFileNatives {
    private static final String LIBRARY_NAME = "unixfile_1_0_0";
    private static final int UNICODE_SUPPORTED = 1;
    private static final int CHFLAGS_SUPPORTED = 2;
    private static final boolean usingNatives;
    private static final int libattr;

    static {
        boolean _usingNatives = false;
        int _libattr = 0;
        try {
            try {
                System.loadLibrary(LIBRARY_NAME);
                _usingNatives = true;
                _libattr = UnixFileNatives.libattr();
            }
            catch (UnsatisfiedLinkError e) {
                if (UnixFileNatives.isLibraryPresent()) {
                    UnixFileNatives.logMissingNativeLibrary(e);
                }
                usingNatives = _usingNatives;
                libattr = _libattr;
            }
        }
        finally {
            usingNatives = _usingNatives;
            libattr = _libattr;
        }
    }

    private static boolean isLibraryPresent() {
        String libName = System.mapLibraryName(LIBRARY_NAME);
        Enumeration entries = Activator.findEntries("/", libName, true);
        return entries != null && entries.hasMoreElements();
    }

    private static void logMissingNativeLibrary(UnsatisfiedLinkError e) {
        String libName = System.mapLibraryName(LIBRARY_NAME);
        String message = NLS.bind((String)Messages.couldNotLoadLibrary, (Object)libName);
        Policy.log(1, message, e);
    }

    public static int getSupportedAttributes() {
        if (!usingNatives) {
            return -1;
        }
        int ret = 2143289446;
        if (UnixFileNatives.isSupported(2)) {
            ret |= 0x200000;
        }
        return ret;
    }

    public static FileInfo fetchFileInfo(String fileName) {
        StructStat stat;
        FileInfo info = null;
        byte[] name = UnixFileNatives.fileNameToBytes(fileName);
        if (UnixFileNatives.lstat(name, stat = new StructStat()) == 0) {
            if ((stat.st_mode & UnixFileFlags.S_IFMT) == UnixFileFlags.S_IFLNK) {
                info = UnixFileNatives.stat(name, stat) == 0 ? stat.toFileInfo() : new FileInfo();
                info.setAttribute(32, true);
                byte[] target = new byte[UnixFileFlags.PATH_MAX];
                int length = UnixFileNatives.readlink(name, target, target.length);
                if (length > 0) {
                    info.setStringAttribute(64, UnixFileNatives.bytesToFileName(target, length));
                }
            } else {
                info = stat.toFileInfo();
            }
        } else {
            info = new FileInfo();
        }
        return info;
    }

    public static boolean putFileInfo(String fileName, IFileInfo info, int options) {
        StructStat stat;
        StructStat stat2;
        int code = 0;
        byte[] name = UnixFileNatives.fileNameToBytes(fileName);
        if (name == null) {
            return false;
        }
        if (!info.getAttribute(0x200000) && UnixFileNatives.isSupported(2) && UnixFileNatives.stat(name, stat2 = new StructStat()) == 0) {
            long flags = stat2.st_flags;
            flags &= (long)(~UnixFileFlags.SF_IMMUTABLE);
            code |= UnixFileNatives.chflags(name, (int)(flags &= (long)(~UnixFileFlags.UF_IMMUTABLE)));
        }
        int mode = 0;
        if (info.getAttribute(0x400000)) {
            mode |= UnixFileFlags.S_IRUSR;
        }
        if (info.getAttribute(0x800000)) {
            mode |= UnixFileFlags.S_IWUSR;
        }
        if (info.getAttribute(0x1000000)) {
            mode |= UnixFileFlags.S_IXUSR;
        }
        if (info.getAttribute(0x2000000)) {
            mode |= UnixFileFlags.S_IRGRP;
        }
        if (info.getAttribute(0x4000000)) {
            mode |= UnixFileFlags.S_IWGRP;
        }
        if (info.getAttribute(0x8000000)) {
            mode |= UnixFileFlags.S_IXGRP;
        }
        if (info.getAttribute(0x10000000)) {
            mode |= UnixFileFlags.S_IROTH;
        }
        if (info.getAttribute(0x20000000)) {
            mode |= UnixFileFlags.S_IWOTH;
        }
        if (info.getAttribute(0x40000000)) {
            mode |= UnixFileFlags.S_IXOTH;
        }
        code |= UnixFileNatives.chmod(name, mode);
        if (info.getAttribute(0x200000) && UnixFileNatives.isSupported(2) && UnixFileNatives.stat(name, stat = new StructStat()) == 0) {
            long flags = stat.st_flags;
            code |= UnixFileNatives.chflags(name, (int)(flags |= (long)UnixFileFlags.UF_IMMUTABLE));
        }
        return code == 0;
    }

    public static boolean isUsingNatives() {
        return usingNatives;
    }

    public static int getErrno() {
        return UnixFileNatives.errno();
    }

    public static int getFlag(String flag) {
        if (!usingNatives) {
            return -1;
        }
        try {
            return UnixFileNatives.getflag(flag.getBytes("ASCII"));
        }
        catch (UnsupportedEncodingException unsupportedEncodingException) {
            return -1;
        }
    }

    private static byte[] fileNameToBytes(String fileName) {
        if (UnixFileNatives.isSupported(1)) {
            return UnixFileNatives.tounicode(fileName.toCharArray());
        }
        return Convert.toPlatformBytes(fileName);
    }

    private static String bytesToFileName(byte[] buf, int length) {
        if (UnixFileNatives.isSupported(1)) {
            return new String(buf, 0, length);
        }
        return Convert.fromPlatformBytes(buf, length);
    }

    private static boolean isSupported(int attr) {
        return (libattr & attr) != 0;
    }

    private static final native int chmod(byte[] var0, int var1);

    private static final native int chflags(byte[] var0, int var1);

    private static final native int stat(byte[] var0, StructStat var1);

    private static final native int lstat(byte[] var0, StructStat var1);

    private static final native int readlink(byte[] var0, byte[] var1, long var2);

    private static final native int errno();

    private static final native int libattr();

    private static final native byte[] tounicode(char[] var0);

    private static final native int getflag(byte[] var0);
}

