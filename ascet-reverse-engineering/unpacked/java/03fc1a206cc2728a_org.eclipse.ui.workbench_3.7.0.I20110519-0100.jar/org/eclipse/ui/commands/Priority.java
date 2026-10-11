/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.commands;

import org.eclipse.ui.internal.util.Util;

public final class Priority
implements Comparable {
    public static final Priority LEGACY = new Priority(1);
    public static final Priority LOW = new Priority(2);
    public static final Priority MEDIUM = new Priority(4);
    private transient String string = null;
    private int value;

    private Priority(int value) {
        this.value = value;
    }

    public int compareTo(Object object) {
        Priority castedObject = (Priority)object;
        int compareTo = Util.compare(this.value, castedObject.value);
        return compareTo;
    }

    int getValue() {
        return this.value;
    }

    public String toString() {
        if (this.string == null) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("[value=");
            stringBuffer.append(this.value);
            stringBuffer.append(']');
            this.string = stringBuffer.toString();
        }
        return this.string;
    }
}

