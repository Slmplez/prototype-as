/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.adaptor;

import java.io.IOException;

public interface PermissionStorage {
    public String[] getLocations() throws IOException;

    public String[] getPermissionData(String var1) throws IOException;

    public void setPermissionData(String var1, String[] var2) throws IOException;

    public void saveConditionalPermissionInfos(String[] var1) throws IOException;

    public String[] getConditionalPermissionInfos() throws IOException;
}

