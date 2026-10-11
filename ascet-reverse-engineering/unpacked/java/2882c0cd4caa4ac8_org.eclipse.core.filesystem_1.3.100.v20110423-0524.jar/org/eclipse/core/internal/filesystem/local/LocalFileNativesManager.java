/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.filesystem.local;

import org.eclipse.core.filesystem.IFileInfo;
import org.eclipse.core.filesystem.provider.FileInfo;
import org.eclipse.core.internal.filesystem.local.LocalFileNatives;
import org.eclipse.core.internal.filesystem.local.unix.UnixFileNatives;

public class LocalFileNativesManager {
    public static int getSupportedAttributes() {
        if (UnixFileNatives.isUsingNatives()) {
            return UnixFileNatives.getSupportedAttributes();
        }
        return LocalFileNatives.attributes();
    }

    public static FileInfo fetchFileInfo(String fileName) {
        if (UnixFileNatives.isUsingNatives()) {
            return UnixFileNatives.fetchFileInfo(fileName);
        }
        return LocalFileNatives.fetchFileInfo(fileName);
    }

    public static boolean putFileInfo(String fileName, IFileInfo info, int options) {
        if (UnixFileNatives.isUsingNatives()) {
            return UnixFileNatives.putFileInfo(fileName, info, options);
        }
        return LocalFileNatives.putFileInfo(fileName, info, options);
    }

    public static boolean isUsingNatives() {
        return UnixFileNatives.isUsingNatives() || LocalFileNatives.isUsingNatives();
    }
}

