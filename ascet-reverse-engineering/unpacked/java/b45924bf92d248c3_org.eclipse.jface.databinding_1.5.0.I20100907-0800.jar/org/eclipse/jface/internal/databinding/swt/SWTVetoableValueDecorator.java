/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.Diffs
 *  org.eclipse.core.databinding.observable.value.DecoratingVetoableValue
 *  org.eclipse.core.databinding.observable.value.IObservableValue
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.jface.internal.databinding.swt;

import org.eclipse.core.databinding.observable.Diffs;
import org.eclipse.core.databinding.observable.value.DecoratingVetoableValue;
import org.eclipse.core.databinding.observable.value.IObservableValue;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.databinding.swt.ISWTObservableValue;
import org.eclipse.jface.internal.databinding.swt.WidgetListenerUtil;
import org.eclipse.jface.internal.databinding.swt.WidgetStringValueProperty;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Widget;

public class SWTVetoableValueDecorator
extends DecoratingVetoableValue
implements ISWTObservableValue {
    private Widget widget;
    private WidgetStringValueProperty property;
    private Listener verifyListener = new Listener(){

        public void handleEvent(Event event) {
            String newText;
            String currentText = (String)SWTVetoableValueDecorator.this.property.getValue(SWTVetoableValueDecorator.this.widget);
            if (!SWTVetoableValueDecorator.this.fireValueChanging(Diffs.createValueDiff((Object)currentText, (Object)(newText = String.valueOf(currentText.substring(0, event.start)) + event.text + currentText.substring(event.end))))) {
                event.doit = false;
            }
        }
    };
    private Listener disposeListener = new Listener(){

        public void handleEvent(Event event) {
            SWTVetoableValueDecorator.this.dispose();
        }
    };
    static /* synthetic */ Class class$0;

    public SWTVetoableValueDecorator(Widget widget, WidgetStringValueProperty property, IObservableValue decorated) {
        super(decorated, true);
        this.property = property;
        this.widget = widget;
        Object object = decorated.getValueType();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("java.lang.String");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Assert.isTrue((boolean)object.equals(clazz), (String)"SWTVetoableValueDecorator can only decorate observable values of String value type");
        WidgetListenerUtil.asyncAddListener(widget, 12, this.disposeListener);
    }

    protected void firstListenerAdded() {
        super.firstListenerAdded();
        WidgetListenerUtil.asyncAddListener(this.widget, 25, this.verifyListener);
    }

    protected void lastListenerRemoved() {
        WidgetListenerUtil.asyncRemoveListener(this.widget, 25, this.verifyListener);
        super.lastListenerRemoved();
    }

    public synchronized void dispose() {
        WidgetListenerUtil.asyncRemoveListener(this.widget, 25, this.verifyListener);
        WidgetListenerUtil.asyncRemoveListener(this.widget, 12, this.disposeListener);
        this.widget = null;
        super.dispose();
    }

    public Widget getWidget() {
        return this.widget;
    }
}

