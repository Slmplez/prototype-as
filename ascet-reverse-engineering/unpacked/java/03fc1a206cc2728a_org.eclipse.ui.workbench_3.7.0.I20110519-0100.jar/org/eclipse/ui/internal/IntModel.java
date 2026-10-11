/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal;

import org.eclipse.ui.internal.IChangeListener;
import org.eclipse.ui.internal.Model;

public class IntModel
extends Model {
    public IntModel(int initialValue) {
        super(new Integer(initialValue));
    }

    public void set(int newValue, IChangeListener source) {
        this.setState(new Integer(newValue), source);
    }

    public void set(int newValue) {
        this.setState(new Integer(newValue), null);
    }

    public int get() {
        return (Integer)this.getState();
    }
}

