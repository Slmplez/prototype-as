/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.commands;

import org.eclipse.core.commands.AbstractParameterValueConverter;
import org.eclipse.core.commands.IParameterTypeListener;
import org.eclipse.core.commands.ParameterTypeEvent;
import org.eclipse.core.commands.common.HandleObject;
import org.eclipse.core.commands.common.NotDefinedException;
import org.eclipse.core.internal.commands.util.Util;

public final class ParameterType
extends HandleObject
implements Comparable {
    private transient AbstractParameterValueConverter parameterTypeConverter;
    private transient String type = null;
    static /* synthetic */ Class class$0;

    private static final boolean isInstanceOf(Object element, String type) {
        if (element == null) {
            return false;
        }
        return ParameterType.isSubtype(element.getClass(), type);
    }

    private static final boolean isSubtype(Class clazz, String type) {
        if (clazz.getName().equals(type)) {
            return true;
        }
        Class superClass = clazz.getSuperclass();
        if (superClass != null && ParameterType.isSubtype(superClass, type)) {
            return true;
        }
        Class<?>[] interfaces = clazz.getInterfaces();
        int i = 0;
        while (i < interfaces.length) {
            if (ParameterType.isSubtype(interfaces[i], type)) {
                return true;
            }
            ++i;
        }
        return false;
    }

    ParameterType(String id) {
        super(id);
    }

    public final void addListener(IParameterTypeListener listener) {
        this.addListenerObject(listener);
    }

    public final int compareTo(Object object) {
        ParameterType castedObject = (ParameterType)object;
        int compareTo = Util.compare(this.defined, castedObject.defined);
        if (compareTo == 0) {
            compareTo = Util.compare((Comparable)((Object)this.id), (Comparable)((Object)castedObject.id));
        }
        return compareTo;
    }

    public final void define(String type, AbstractParameterValueConverter parameterTypeConverter) {
        String string;
        boolean definedChanged = !this.defined;
        this.defined = true;
        if (type == null) {
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("java.lang.Object");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            string = clazz.getName();
        } else {
            string = type;
        }
        this.type = string;
        this.parameterTypeConverter = parameterTypeConverter;
        this.fireParameterTypeChanged(new ParameterTypeEvent(this, definedChanged));
    }

    private final void fireParameterTypeChanged(ParameterTypeEvent event) {
        if (event == null) {
            throw new NullPointerException("Cannot send a null event to listeners.");
        }
        if (!this.isListenerAttached()) {
            return;
        }
        Object[] listeners = this.getListeners();
        int i = 0;
        while (i < listeners.length) {
            IParameterTypeListener listener = (IParameterTypeListener)listeners[i];
            listener.parameterTypeChanged(event);
            ++i;
        }
    }

    public final AbstractParameterValueConverter getValueConverter() throws NotDefinedException {
        if (!this.isDefined()) {
            throw new NotDefinedException("Cannot use getValueConverter() with an undefined ParameterType");
        }
        return this.parameterTypeConverter;
    }

    public boolean isCompatible(Object value) throws NotDefinedException {
        if (!this.isDefined()) {
            throw new NotDefinedException("Cannot use isCompatible() with an undefined ParameterType");
        }
        return ParameterType.isInstanceOf(value, this.type);
    }

    public final void removeListener(IParameterTypeListener listener) {
        this.removeListenerObject(listener);
    }

    public final String toString() {
        if (this.string == null) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("ParameterType(");
            stringBuffer.append(this.id);
            stringBuffer.append(',');
            stringBuffer.append(this.defined);
            stringBuffer.append(')');
            this.string = stringBuffer.toString();
        }
        return this.string;
    }

    public final void undefine() {
        this.string = null;
        boolean definedChanged = this.defined;
        this.defined = false;
        this.type = null;
        this.parameterTypeConverter = null;
        this.fireParameterTypeChanged(new ParameterTypeEvent(this, definedChanged));
    }
}

