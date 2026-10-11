/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.preferences;

import org.eclipse.ui.internal.preferences.IPropertyMapListener;

public abstract class AbstractPropertyListener
implements IPropertyMapListener {
    public void propertyChanged(String[] propertyIds) {
        this.update();
    }

    public void listenerAttached() {
        this.update();
    }

    protected abstract void update();
}

