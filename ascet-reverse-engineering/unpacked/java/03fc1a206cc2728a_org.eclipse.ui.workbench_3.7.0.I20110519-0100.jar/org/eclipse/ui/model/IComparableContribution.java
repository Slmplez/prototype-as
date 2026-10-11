/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IAdaptable
 */
package org.eclipse.ui.model;

import org.eclipse.core.runtime.IAdaptable;

public interface IComparableContribution
extends IAdaptable {
    public static final int PRIORITY_DEFAULT = 0;

    public int getPriority();

    public String getLabel();

    public Object getAdapter(Class var1);
}

