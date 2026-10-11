/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.pb.tools;

import org.sat4j.pb.tools.INegator;

public class StringNegator
implements INegator {
    public static final INegator instance = new StringNegator();

    private StringNegator() {
    }

    public boolean isNegated(Object object) {
        if (object instanceof String) {
            return ((String)object).startsWith("-");
        }
        return false;
    }

    public Object unNegate(Object object) {
        if (this.isNegated(object)) {
            return ((String)object).substring(1);
        }
        return object;
    }
}

