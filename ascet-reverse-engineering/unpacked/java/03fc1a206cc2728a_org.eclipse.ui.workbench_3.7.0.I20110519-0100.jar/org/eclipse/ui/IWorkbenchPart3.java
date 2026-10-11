/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.util.IPropertyChangeListener
 */
package org.eclipse.ui;

import java.util.Map;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.ui.IWorkbenchPart2;

public interface IWorkbenchPart3
extends IWorkbenchPart2 {
    public void addPartPropertyListener(IPropertyChangeListener var1);

    public void removePartPropertyListener(IPropertyChangeListener var1);

    public String getPartProperty(String var1);

    public void setPartProperty(String var1, String var2);

    public Map getPartProperties();
}

