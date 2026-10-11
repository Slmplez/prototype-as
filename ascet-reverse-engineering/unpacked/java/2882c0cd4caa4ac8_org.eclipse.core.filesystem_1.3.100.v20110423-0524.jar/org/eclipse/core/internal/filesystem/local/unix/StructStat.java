/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.filesystem.local.unix;

import org.eclipse.core.filesystem.provider.FileInfo;
import org.eclipse.core.internal.filesystem.local.unix.UnixFileFlags;

public class StructStat {
    public int st_mode;
    public long st_size;
    public long st_mtime;
    public long st_flags;

    public FileInfo toFileInfo() {
        FileInfo info = new FileInfo();
        info.setExists(true);
        info.setLength(this.st_size);
        info.setLastModified(this.st_mtime * 1000L);
        if ((this.st_mode & UnixFileFlags.S_IFMT) == UnixFileFlags.S_IFDIR) {
            info.setDirectory(true);
        }
        if ((this.st_flags & (long)(UnixFileFlags.UF_IMMUTABLE | UnixFileFlags.SF_IMMUTABLE)) != 0L) {
            info.setAttribute(0x200000, true);
        }
        if ((this.st_mode & UnixFileFlags.S_IRUSR) == 0) {
            info.setAttribute(0x400000, false);
        }
        if ((this.st_mode & UnixFileFlags.S_IWUSR) == 0) {
            info.setAttribute(0x800000, false);
        }
        if ((this.st_mode & UnixFileFlags.S_IXUSR) != 0) {
            info.setAttribute(0x1000000, true);
        }
        if ((this.st_mode & UnixFileFlags.S_IRGRP) != 0) {
            info.setAttribute(0x2000000, true);
        }
        if ((this.st_mode & UnixFileFlags.S_IWGRP) != 0) {
            info.setAttribute(0x4000000, true);
        }
        if ((this.st_mode & UnixFileFlags.S_IXGRP) != 0) {
            info.setAttribute(0x8000000, true);
        }
        if ((this.st_mode & UnixFileFlags.S_IROTH) != 0) {
            info.setAttribute(0x10000000, true);
        }
        if ((this.st_mode & UnixFileFlags.S_IWOTH) != 0) {
            info.setAttribute(0x20000000, true);
        }
        if ((this.st_mode & UnixFileFlags.S_IXOTH) != 0) {
            info.setAttribute(0x40000000, true);
        }
        return info;
    }
}

