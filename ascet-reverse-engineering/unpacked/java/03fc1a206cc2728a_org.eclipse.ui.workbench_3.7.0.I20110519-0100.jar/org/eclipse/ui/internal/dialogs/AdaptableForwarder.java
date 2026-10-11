/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IAdaptable
 */
package org.eclipse.ui.internal.dialogs;

import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.ui.internal.util.Util;

public class AdaptableForwarder
implements IAdaptable {
    private Object element;

    public AdaptableForwarder(Object element) {
        this.element = element;
    }

    public Object getAdapter(Class adapter) {
        return Util.getAdapter(this.element, adapter);
    }
}

