/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.internal.core.isite;

import org.eclipse.core.resources.IFile;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.internal.core.ifeature.IVersionable;
import org.eclipse.pde.internal.core.isite.ISiteCategory;
import org.eclipse.pde.internal.core.isite.ISiteObject;

public interface ISiteFeature
extends IVersionable,
ISiteObject {
    public static final String P_TYPE = "type";
    public static final String P_URL = "url";
    public static final String P_OS = "os";
    public static final String P_WS = "ws";
    public static final String P_NL = "nl";
    public static final String P_ARCH = "arch";
    public static final String P_PATCH = "patch";

    public void addCategories(ISiteCategory[] var1) throws CoreException;

    public void removeCategories(ISiteCategory[] var1) throws CoreException;

    public ISiteCategory[] getCategories();

    public String getType();

    public String getURL();

    public String getOS();

    public String getNL();

    public String getArch();

    public String getWS();

    public boolean isPatch();

    public void setType(String var1) throws CoreException;

    public void setURL(String var1) throws CoreException;

    public void setOS(String var1) throws CoreException;

    public void setWS(String var1) throws CoreException;

    public void setArch(String var1) throws CoreException;

    public void setNL(String var1) throws CoreException;

    public void setIsPatch(boolean var1) throws CoreException;

    public IFile getArchiveFile();
}

