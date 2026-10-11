/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.variables;

import org.eclipse.core.internal.variables.StringVariable;
import org.eclipse.core.internal.variables.StringVariableManager;
import org.eclipse.core.variables.IValueVariable;

public class ValueVariable
extends StringVariable
implements IValueVariable {
    private String fValue;
    private boolean fReadOnly;

    public ValueVariable(String name, String description, boolean readOnly, String value) {
        super(name, description, null);
        this.fReadOnly = readOnly;
        this.fValue = value;
    }

    public void setValue(String value) {
        if (!this.isReadOnly()) {
            this.fValue = value;
            StringVariableManager.getDefault().notifyChanged(this);
        }
    }

    public String getValue() {
        return this.fValue;
    }

    public boolean isReadOnly() {
        return this.fReadOnly;
    }

    public boolean isContributed() {
        return false;
    }
}

