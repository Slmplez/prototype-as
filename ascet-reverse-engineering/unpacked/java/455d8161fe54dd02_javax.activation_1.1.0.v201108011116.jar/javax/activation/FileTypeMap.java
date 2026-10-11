/*
 * Decompiled with CFR 0.152.
 */
package javax.activation;

import java.io.File;
import javax.activation.MimetypesFileTypeMap;

public abstract class FileTypeMap {
    private static FileTypeMap defaultFileTypeMap = null;

    public static void setDefaultFileTypeMap(FileTypeMap fileMap) {
        SecurityManager sm = System.getSecurityManager();
        if (sm != null) {
            sm.checkSetFactory();
        }
        defaultFileTypeMap = fileMap;
    }

    public static synchronized FileTypeMap getDefaultFileTypeMap() {
        if (defaultFileTypeMap == null) {
            defaultFileTypeMap = new MimetypesFileTypeMap();
        }
        return defaultFileTypeMap;
    }

    public abstract String getContentType(File var1);

    public abstract String getContentType(String var1);
}

