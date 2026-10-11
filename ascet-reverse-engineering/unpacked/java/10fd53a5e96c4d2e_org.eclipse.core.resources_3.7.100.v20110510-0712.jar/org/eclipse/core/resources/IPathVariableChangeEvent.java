/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.core.resources;

import org.eclipse.core.runtime.IPath;

public interface IPathVariableChangeEvent {
    public static final int VARIABLE_CHANGED = 1;
    public static final int VARIABLE_CREATED = 2;
    public static final int VARIABLE_DELETED = 3;

    public IPath getValue();

    public String getVariableName();

    public Object getSource();

    public int getType();
}

