/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.filesystem.local.unix;

import org.eclipse.core.internal.filesystem.local.unix.UnixFileNatives;

public class UnixFileFlags {
    public static final int PATH_MAX = UnixFileNatives.getFlag("PATH_MAX");
    public static final int S_IFMT = UnixFileNatives.getFlag("S_IFMT");
    public static final int S_IFLNK = UnixFileNatives.getFlag("S_IFLNK");
    public static final int S_IFDIR = UnixFileNatives.getFlag("S_IFDIR");
    public static final int S_IRUSR = UnixFileNatives.getFlag("S_IRUSR");
    public static final int S_IWUSR = UnixFileNatives.getFlag("S_IWUSR");
    public static final int S_IXUSR = UnixFileNatives.getFlag("S_IXUSR");
    public static final int S_IRGRP = UnixFileNatives.getFlag("S_IRGRP");
    public static final int S_IWGRP = UnixFileNatives.getFlag("S_IWGRP");
    public static final int S_IXGRP = UnixFileNatives.getFlag("S_IXGRP");
    public static final int S_IROTH = UnixFileNatives.getFlag("S_IROTH");
    public static final int S_IWOTH = UnixFileNatives.getFlag("S_IWOTH");
    public static final int S_IXOTH = UnixFileNatives.getFlag("S_IXOTH");
    public static final int UF_IMMUTABLE = UnixFileNatives.getFlag("UF_IMMUTABLE");
    public static final int SF_IMMUTABLE = UnixFileNatives.getFlag("SF_IMMUTABLE");
}

