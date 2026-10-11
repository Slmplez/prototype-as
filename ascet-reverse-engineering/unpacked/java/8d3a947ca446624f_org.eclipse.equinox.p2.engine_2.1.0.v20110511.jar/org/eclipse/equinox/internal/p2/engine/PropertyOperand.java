/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.equinox.internal.p2.engine;

import org.eclipse.core.runtime.Assert;
import org.eclipse.equinox.internal.p2.engine.Operand;

public class PropertyOperand
extends Operand {
    private final Object first;
    private final Object second;
    private final String key;

    public PropertyOperand(String key, Object first, Object second) {
        Assert.isTrue((key != null && (first != null || second != null) ? 1 : 0) != 0);
        this.first = first;
        this.second = second;
        this.key = key;
    }

    public Object first() {
        return this.first;
    }

    public Object second() {
        return this.second;
    }

    public String getKey() {
        return this.key;
    }

    public String toString() {
        return String.valueOf(this.key) + " = " + this.first + " --> " + this.second;
    }
}

