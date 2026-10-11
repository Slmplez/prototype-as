/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.variables;

import org.eclipse.core.variables.IValueVariable;

public interface IValueVariableListener {
    public void variablesAdded(IValueVariable[] var1);

    public void variablesRemoved(IValueVariable[] var1);

    public void variablesChanged(IValueVariable[] var1);
}

