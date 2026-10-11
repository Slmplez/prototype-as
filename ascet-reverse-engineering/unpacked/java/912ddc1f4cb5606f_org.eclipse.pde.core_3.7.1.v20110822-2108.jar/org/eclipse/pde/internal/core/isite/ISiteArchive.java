/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.internal.core.isite;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.internal.core.isite.ISiteObject;

public interface ISiteArchive
extends ISiteObject {
    public static final String P_URL = "url";
    public static final String P_PATH = "path";

    public String getURL();

    public void setURL(String var1) throws CoreException;

    public String getPath();

    public void setPath(String var1) throws CoreException;
}

