/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.launching;

import java.util.EventObject;

public class PropertyChangeEvent
extends EventObject {
    private static final long serialVersionUID = 1L;
    private String propertyName;
    private Object oldValue;
    private Object newValue;

    public PropertyChangeEvent(Object source, String property, Object oldValue, Object newValue) {
        super(source);
        if (property == null) {
            throw new IllegalArgumentException();
        }
        this.propertyName = property;
        this.oldValue = oldValue;
        this.newValue = newValue;
    }

    public String getProperty() {
        return this.propertyName;
    }

    public Object getNewValue() {
        return this.newValue;
    }

    public Object getOldValue() {
        return this.oldValue;
    }
}

