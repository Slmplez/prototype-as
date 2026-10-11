/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.Diffs
 *  org.eclipse.core.databinding.observable.IDiff
 *  org.eclipse.core.databinding.property.INativePropertyListener
 *  org.eclipse.core.databinding.property.IProperty
 *  org.eclipse.core.databinding.property.ISimplePropertyListener
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Event
 */
package org.eclipse.jface.internal.databinding.swt;

import org.eclipse.core.databinding.observable.Diffs;
import org.eclipse.core.databinding.observable.IDiff;
import org.eclipse.core.databinding.property.INativePropertyListener;
import org.eclipse.core.databinding.property.IProperty;
import org.eclipse.core.databinding.property.ISimplePropertyListener;
import org.eclipse.jface.internal.databinding.swt.WidgetBooleanValueProperty;
import org.eclipse.jface.internal.databinding.swt.WidgetListener;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Event;

public class ControlFocusedProperty
extends WidgetBooleanValueProperty {
    public boolean doGetBooleanValue(Object source) {
        return ((Control)source).isFocusControl();
    }

    public void doSetBooleanValue(Object source, boolean value) {
        if (value) {
            ((Control)source).setFocus();
        }
    }

    public INativePropertyListener adaptListener(ISimplePropertyListener listener) {
        int[] events = new int[]{15, 16};
        return new ControlFocusListener((IProperty)this, listener, events, null);
    }

    public String toString() {
        return "Control.focus <boolean>";
    }

    private class ControlFocusListener
    extends WidgetListener {
        private ControlFocusListener(IProperty property, ISimplePropertyListener listener, int[] changeEvents, int[] staleEvents) {
            super(property, listener, changeEvents, staleEvents);
        }

        public void handleEvent(Event event) {
            switch (event.type) {
                case 15: {
                    this.fireChange(event.widget, (IDiff)Diffs.createValueDiff((Object)Boolean.FALSE, (Object)Boolean.TRUE));
                    break;
                }
                case 16: {
                    this.fireChange(event.widget, (IDiff)Diffs.createValueDiff((Object)Boolean.TRUE, (Object)Boolean.FALSE));
                }
            }
        }
    }
}

