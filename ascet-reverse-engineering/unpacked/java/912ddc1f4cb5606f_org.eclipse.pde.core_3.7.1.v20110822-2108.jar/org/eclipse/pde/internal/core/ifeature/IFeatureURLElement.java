/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.internal.core.ifeature;

import java.net.URL;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.internal.core.ifeature.IFeatureObject;

public interface IFeatureURLElement
extends IFeatureObject {
    public static final int UPDATE = 1;
    public static final int DISCOVERY = 2;
    public static final int UPDATE_SITE = 0;
    public static final int WEB_SITE = 1;
    public static final String P_URL = "url";
    public static final String P_SITE_TYPE = "siteType";

    public int getElementType();

    public int getSiteType();

    public URL getURL();

    public void setURL(URL var1) throws CoreException;

    public void setSiteType(int var1) throws CoreException;
}

