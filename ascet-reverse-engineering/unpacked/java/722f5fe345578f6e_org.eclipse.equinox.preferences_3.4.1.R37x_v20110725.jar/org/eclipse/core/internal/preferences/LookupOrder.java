/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.preferences;

public class LookupOrder {
    private String[] order;

    LookupOrder(String[] order) {
        int i = 0;
        while (i < order.length) {
            if (order[i] == null) {
                throw new IllegalArgumentException();
            }
            ++i;
        }
        this.order = order;
    }

    public String[] getOrder() {
        return this.order;
    }
}

