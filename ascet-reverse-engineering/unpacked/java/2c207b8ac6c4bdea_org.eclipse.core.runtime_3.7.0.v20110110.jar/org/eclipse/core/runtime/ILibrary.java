/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.core.runtime;

import org.eclipse.core.runtime.IPath;

public interface ILibrary {
    public static final String CODE = "code";
    public static final String RESOURCE = "resource";

    public String[] getContentFilters();

    public IPath getPath();

    public String getType();

    public boolean isExported();

    public boolean isFullyExported();

    public String[] getPackagePrefixes();
}

