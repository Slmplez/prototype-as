/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.ui.views;

import org.eclipse.core.runtime.IPath;
import org.eclipse.ui.views.IViewDescriptor;

public interface IViewCategory {
    public IViewDescriptor[] getViews();

    public String getId();

    public String getLabel();

    public IPath getPath();
}

