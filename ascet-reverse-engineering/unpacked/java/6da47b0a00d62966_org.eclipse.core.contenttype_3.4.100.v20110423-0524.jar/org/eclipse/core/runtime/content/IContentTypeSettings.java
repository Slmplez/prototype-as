/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.core.runtime.content;

import org.eclipse.core.runtime.CoreException;

public interface IContentTypeSettings {
    public static final int FILE_EXTENSION_SPEC = 8;
    public static final int FILE_NAME_SPEC = 4;

    public void addFileSpec(String var1, int var2) throws CoreException;

    public String getDefaultCharset();

    public String[] getFileSpecs(int var1);

    public String getId();

    public void removeFileSpec(String var1, int var2) throws CoreException;

    public void setDefaultCharset(String var1) throws CoreException;
}

