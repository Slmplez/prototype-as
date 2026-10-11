/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.core.internal.filesystem.local;

import java.io.File;
import java.net.URI;
import org.eclipse.core.filesystem.IFileStore;
import org.eclipse.core.filesystem.IFileSystem;
import org.eclipse.core.filesystem.provider.FileSystem;
import org.eclipse.core.internal.filesystem.local.LocalFile;
import org.eclipse.core.internal.filesystem.local.LocalFileNativesManager;
import org.eclipse.core.runtime.IPath;

public class LocalFileSystem
extends FileSystem {
    static final boolean MACOSX = LocalFileSystem.getOS().equals("macosx");
    private static final boolean caseSensitive = MACOSX ? false : new File("a").compareTo(new File("A")) != 0;
    private int attributes = -1;
    private static IFileSystem instance;

    public static IFileSystem getInstance() {
        return instance;
    }

    static String getOS() {
        return System.getProperty("osgi.os", "");
    }

    public LocalFileSystem() {
        instance = this;
    }

    public int attributes() {
        if (this.attributes != -1) {
            return this.attributes;
        }
        this.attributes = 0;
        if (!LocalFileNativesManager.isUsingNatives()) {
            return this.attributes;
        }
        int nativeAttributes = LocalFileNativesManager.getSupportedAttributes();
        if (nativeAttributes >= 0) {
            this.attributes = nativeAttributes;
            return this.attributes;
        }
        this.attributes |= 2;
        String os = LocalFileSystem.getOS();
        String arch = System.getProperty("osgi.arch", "");
        if (os.equals("win32")) {
            this.attributes |= 0x18;
        } else if (os.equals("linux") || os.equals("solaris") && arch.equals("sparc")) {
            this.attributes |= 0x64;
        } else if (os.equals("macosx") || os.equals("hpux") || os.equals("qnx")) {
            this.attributes |= 4;
        }
        return this.attributes;
    }

    public boolean canDelete() {
        return true;
    }

    public boolean canWrite() {
        return true;
    }

    public IFileStore fromLocalFile(File file) {
        return new LocalFile(file);
    }

    public IFileStore getStore(IPath path) {
        return new LocalFile(path.toFile());
    }

    public IFileStore getStore(URI uri) {
        return new LocalFile(new File(uri.getSchemeSpecificPart()));
    }

    public boolean isCaseSensitive() {
        return caseSensitive;
    }
}

