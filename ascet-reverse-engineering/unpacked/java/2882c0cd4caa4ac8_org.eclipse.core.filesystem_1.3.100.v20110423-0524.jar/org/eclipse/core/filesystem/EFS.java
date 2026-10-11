/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.core.filesystem;

import java.net.URI;
import org.eclipse.core.filesystem.IFileInfo;
import org.eclipse.core.filesystem.IFileStore;
import org.eclipse.core.filesystem.IFileSystem;
import org.eclipse.core.filesystem.provider.FileInfo;
import org.eclipse.core.internal.filesystem.InternalFileSystemCore;
import org.eclipse.core.runtime.CoreException;

public class EFS {
    public static final String PI_FILE_SYSTEM = "org.eclipse.core.filesystem";
    public static final String PT_FILE_SYSTEMS = "filesystems";
    public static final int NONE = 0;
    public static final int APPEND = 1;
    public static final int OVERWRITE = 2;
    public static final int SHALLOW = 4;
    public static final int SET_ATTRIBUTES = 1024;
    public static final int SET_LAST_MODIFIED = 2048;
    public static final int CACHE = 4096;
    public static final int ATTRIBUTE_READ_ONLY = 2;
    public static final int ATTRIBUTE_IMMUTABLE = 0x200000;
    public static final int ATTRIBUTE_OWNER_READ = 0x400000;
    public static final int ATTRIBUTE_OWNER_WRITE = 0x800000;
    public static final int ATTRIBUTE_OWNER_EXECUTE = 0x1000000;
    public static final int ATTRIBUTE_GROUP_READ = 0x2000000;
    public static final int ATTRIBUTE_GROUP_WRITE = 0x4000000;
    public static final int ATTRIBUTE_GROUP_EXECUTE = 0x8000000;
    public static final int ATTRIBUTE_OTHER_READ = 0x10000000;
    public static final int ATTRIBUTE_OTHER_WRITE = 0x20000000;
    public static final int ATTRIBUTE_OTHER_EXECUTE = 0x40000000;
    public static final int ATTRIBUTE_EXECUTABLE = 4;
    public static final int ATTRIBUTE_ARCHIVE = 8;
    public static final int ATTRIBUTE_HIDDEN = 16;
    public static final int ATTRIBUTE_SYMLINK = 32;
    public static final int ATTRIBUTE_LINK_TARGET = 64;
    public static final String SCHEME_FILE = "file";
    public static final String SCHEME_NULL = "null";
    public static final int ERROR_EXISTS = 268;
    public static final int ERROR_NOT_EXISTS = 269;
    public static final int ERROR_NO_LOCATION = 270;
    public static final int ERROR_READ = 271;
    public static final int ERROR_WRITE = 272;
    public static final int ERROR_DELETE = 273;
    public static final int ERROR_CASE_VARIANT_EXISTS = 275;
    public static final int ERROR_WRONG_TYPE = 276;
    public static final int ERROR_PARENT_READ_ONLY = 277;
    public static final int ERROR_READ_ONLY = 279;
    public static final int ERROR_INTERNAL = 566;

    public static IFileInfo createFileInfo() {
        return new FileInfo();
    }

    public static IFileSystem getFileSystem(String scheme) throws CoreException {
        return InternalFileSystemCore.getInstance().getFileSystem(scheme);
    }

    public static IFileSystem getLocalFileSystem() {
        return InternalFileSystemCore.getInstance().getLocalFileSystem();
    }

    public static IFileSystem getNullFileSystem() {
        return InternalFileSystemCore.getInstance().getNullFileSystem();
    }

    public static IFileStore getStore(URI uri) throws CoreException {
        return InternalFileSystemCore.getInstance().getStore(uri);
    }

    private EFS() {
    }
}

