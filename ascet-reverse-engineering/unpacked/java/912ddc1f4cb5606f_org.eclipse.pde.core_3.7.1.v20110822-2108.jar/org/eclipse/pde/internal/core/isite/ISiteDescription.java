/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.internal.core.isite;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.internal.core.isite.ISiteObject;

public interface ISiteDescription
extends ISiteObject {
    public static final String P_NAME = "name";
    public static final String P_URL = "url";
    public static final String P_TEXT = "text";

    public String getName();

    public String getURL();

    public String getText();

    public void setName(String var1) throws CoreException;

    public void setURL(String var1) throws CoreException;

    public void setText(String var1) throws CoreException;
}

