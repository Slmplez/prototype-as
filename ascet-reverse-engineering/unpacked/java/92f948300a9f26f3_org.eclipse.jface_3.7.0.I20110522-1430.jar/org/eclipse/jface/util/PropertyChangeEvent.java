/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.jface.util;

import java.util.EventObject;
import org.eclipse.core.runtime.Assert;

public class PropertyChangeEvent
extends EventObject {
    private static final long serialVersionUID = 3256726173533811256L;
    private String propertyName;
    private Object oldValue;
    private Object newValue;

    public PropertyChangeEvent(Object source, String property, Object oldValue, Object newValue) {
        super(source);
        Assert.isNotNull((Object)property);
        this.propertyName = property;
        this.oldValue = oldValue;
        this.newValue = newValue;
    }

    public Object getNewValue() {
        return this.newValue;
    }

    public Object getOldValue() {
        return this.oldValue;
    }

    public String getProperty() {
        return this.propertyName;
    }
}

