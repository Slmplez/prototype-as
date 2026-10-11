/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.filesystem.local;

import java.util.Enumeration;
import org.eclipse.core.filesystem.IFileInfo;
import org.eclipse.core.filesystem.provider.FileInfo;
import org.eclipse.core.internal.filesystem.Activator;
import org.eclipse.core.internal.filesystem.Messages;
import org.eclipse.core.internal.filesystem.Policy;
import org.eclipse.core.internal.filesystem.local.Convert;
import org.eclipse.osgi.util.NLS;

abstract class LocalFileNatives {
    private static boolean hasNatives;
    private static boolean isUnicode;
    private static final String LIBRARY_NAME = "localfile_1_0_0";

    static {
        block2: {
            hasNatives = false;
            isUnicode = false;
            try {
                System.loadLibrary(LIBRARY_NAME);
                hasNatives = true;
                isUnicode = LocalFileNatives.internalIsUnicode();
            }
            catch (UnsatisfiedLinkError e) {
                if (!LocalFileNatives.isLibraryPresent()) break block2;
                LocalFileNatives.logMissingNativeLibrary(e);
            }
        }
    }

    LocalFileNatives() {
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

    private static final native int nativeAttributes();

    public static int attributes() {
        try {
            return LocalFileNatives.nativeAttributes();
        }
        catch (UnsatisfiedLinkError unsatisfiedLinkError) {
            return -1;
        }
    }

    public static boolean copyAttributes(String source, String destination, boolean copyLastModified) {
        if (hasNatives) {
            return isUnicode ? LocalFileNatives.internalCopyAttributesW(Convert.toPlatformChars(source), Convert.toPlatformChars(destination), copyLastModified) : LocalFileNatives.internalCopyAttributes(Convert.toPlatformBytes(source), Convert.toPlatformBytes(destination), copyLastModified);
        }
        return false;
    }

    public static FileInfo fetchFileInfo(String fileName) {
        FileInfo info = new FileInfo();
        if (isUnicode) {
            LocalFileNatives.internalGetFileInfoW(Convert.toPlatformChars(fileName), info);
        } else {
            LocalFileNatives.internalGetFileInfo(Convert.toPlatformBytes(fileName), info);
        }
        return info;
    }

    private static final native boolean internalCopyAttributes(byte[] var0, byte[] var1, boolean var2);

    private static final native boolean internalCopyAttributesW(char[] var0, char[] var1, boolean var2);

    private static final native boolean internalGetFileInfo(byte[] var0, IFileInfo var1);

    private static final native boolean internalGetFileInfoW(char[] var0, IFileInfo var1);

    private static final native boolean internalIsUnicode();

    private static final native boolean internalSetFileInfo(byte[] var0, IFileInfo var1);

    private static final native boolean internalSetFileInfoW(char[] var0, IFileInfo var1, int var2);

    public static boolean putFileInfo(String fileName, IFileInfo info, int options) {
        if (isUnicode) {
            return LocalFileNatives.internalSetFileInfoW(Convert.toPlatformChars(fileName), info, options);
        }
        return LocalFileNatives.internalSetFileInfo(Convert.toPlatformBytes(fileName), info);
    }

    public static boolean isUsingNatives() {
        return hasNatives;
    }
}

