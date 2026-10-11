/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.DateTime
 */
package org.eclipse.jface.internal.databinding.swt;

import java.util.Calendar;
import java.util.Date;
import org.eclipse.jface.databinding.swt.WidgetValueProperty;
import org.eclipse.swt.widgets.DateTime;

public class DateTimeSelectionProperty
extends WidgetValueProperty {
    private static final ThreadLocal calendar = new ThreadLocal(){

        protected Object initialValue() {
            return Calendar.getInstance();
        }
    };
    static /* synthetic */ Class class$0;

    public DateTimeSelectionProperty() {
        super(13);
    }

    public Object getValueType() {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("java.util.Date");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return clazz;
    }

    protected Object doGetValue(Object source) {
        DateTime dateTime = (DateTime)source;
        Calendar cal = (Calendar)calendar.get();
        cal.clear();
        if ((dateTime.getStyle() & 0x80) != 0) {
            cal.set(11, dateTime.getHours());
            cal.set(12, dateTime.getMinutes());
            cal.set(13, dateTime.getSeconds());
        } else {
            cal.set(1, dateTime.getYear());
            cal.set(2, dateTime.getMonth());
            cal.set(5, dateTime.getDay());
        }
        return cal.getTime();
    }

    protected void doSetValue(Object source, Object value) {
        DateTime dateTime = (DateTime)source;
        if (value == null) {
            throw new IllegalArgumentException("Cannot set null selection on DateTime");
        }
        Calendar cal = (Calendar)calendar.get();
        cal.setTime((Date)value);
        if ((dateTime.getStyle() & 0x80) != 0) {
            dateTime.setTime(cal.get(11), cal.get(12), cal.get(13));
        } else {
            dateTime.setDate(cal.get(1), cal.get(2), cal.get(5));
        }
    }
}

