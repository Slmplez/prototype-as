/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.core.plugin;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.core.plugin.IPluginAttribute;
import org.eclipse.pde.core.plugin.IPluginParent;

public interface IPluginElement
extends IPluginParent {
    public static final String P_TEXT = "text";
    public static final String P_ATTRIBUTES = "attributes";
    public static final String P_ATTRIBUTE = "attribute";

    public IPluginElement createCopy();

    public IPluginAttribute getAttribute(String var1);

    public IPluginAttribute[] getAttributes();

    public int getAttributeCount();

    public String getText();

    public Object getElementInfo();

    public void setAttribute(String var1, String var2) throws CoreException;

    public void setText(String var1) throws CoreException;
}

