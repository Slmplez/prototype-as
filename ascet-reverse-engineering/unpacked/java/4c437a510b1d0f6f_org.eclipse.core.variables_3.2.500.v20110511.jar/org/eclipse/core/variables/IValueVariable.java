/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.variables;

import org.eclipse.core.variables.IStringVariable;

public interface IValueVariable
extends IStringVariable {
    public void setValue(String var1);

    public String getValue();

    public boolean isContributed();

    public boolean isReadOnly();

    public void setDescription(String var1);
}

