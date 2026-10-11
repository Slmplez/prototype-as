/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.list.ListDiff
 *  org.eclipse.core.databinding.property.INativePropertyListener
 *  org.eclipse.core.databinding.property.ISimplePropertyListener
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.jface.internal.databinding.swt;

import java.util.Arrays;
import java.util.List;
import org.eclipse.core.databinding.observable.list.ListDiff;
import org.eclipse.core.databinding.property.INativePropertyListener;
import org.eclipse.core.databinding.property.ISimplePropertyListener;
import org.eclipse.jface.databinding.swt.WidgetListProperty;
import org.eclipse.swt.widgets.Control;

public abstract class ControlStringListProperty
extends WidgetListProperty {
    static /* synthetic */ Class class$0;

    public Object getElementType() {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("java.lang.String");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return clazz;
    }

    protected void doSetList(Object source, List list, ListDiff diff) {
        this.doUpdateList(source, diff);
    }

    protected void doUpdateList(Object source, ListDiff diff) {
        this.doUpdateStringList((Control)source, diff);
    }

    abstract void doUpdateStringList(Control var1, ListDiff var2);

    protected List doGetList(Object source) {
        String[] list = this.doGetStringList((Control)source);
        return Arrays.asList(list);
    }

    abstract String[] doGetStringList(Control var1);

    public INativePropertyListener adaptListener(ISimplePropertyListener listener) {
        return null;
    }
}

