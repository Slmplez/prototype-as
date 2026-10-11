/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd.core.util;

import com.etas.amd.core.component.AmdMainFragment;
import com.etas.amd.core.serializer.ComponentMainSerializer;
import java.io.File;
import java.io.IOException;

public abstract class AbstractAmdItem {
    private AmdMainFragment amdMainFragment = new AmdMainFragment();

    public String getName() {
        return this.getAmdMainFragment().getName();
    }

    public String getUUID() {
        return this.getAmdMainFragment().getUUID();
    }

    public void setPackageName(String packageRef) {
    }

    public String getNameSpace() {
        return this.getAmdMainFragment().getNameSpace();
    }

    public void save(String rootPath) {
        File folder = this.getFolderPath(rootPath);
        String fileName = this.getAmdMainFragment().getName();
        try {
            ComponentMainSerializer.save(folder, this.getAmdMainFragment().getDocumentRoot(), fileName);
        }
        catch (IOException ex) {
            throw new IllegalStateException(String.format("Problem occur during writing the file %s in %s", fileName, folder), ex);
        }
    }

    protected File getFolderPath(String rootPath) {
        String nameSpace = this.getAmdMainFragment().getNameSpace();
        File folderPath = new File(rootPath, AbstractAmdItem.convertNameSpaceToPath(nameSpace));
        if (!folderPath.exists()) {
            folderPath.mkdir();
        }
        return folderPath;
    }

    public static String convertNameSpaceToPath(String nameSpace) {
        if (nameSpace.isEmpty()) {
            return nameSpace;
        }
        String[] nameSpaceParts = AbstractAmdItem.trimNameSpace(nameSpace).split("/");
        String nameSpaceFilePart = "";
        String[] stringArray = nameSpaceParts;
        int n = nameSpaceParts.length;
        int n2 = 0;
        while (n2 < n) {
            String part = stringArray[n2];
            if (!part.isEmpty()) {
                nameSpaceFilePart = String.valueOf(nameSpaceFilePart) + File.separator + part;
            }
            ++n2;
        }
        return nameSpaceFilePart;
    }

    private static String trimNameSpace(String nameSpace) {
        if (nameSpace.charAt(0) == '/') {
            return nameSpace.substring(1);
        }
        return nameSpace;
    }

    public AmdMainFragment getAmdMainFragment() {
        return this.amdMainFragment;
    }
}

