/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.help.internal.util;

import java.util.ArrayList;

public class FastStack
extends ArrayList {
    private static final long serialVersionUID = 1L;
    private int last = -1;

    public final Object push(Object item) {
        super.add(item);
        ++this.last;
        return item;
    }

    public final Object pop() {
        return super.remove(this.last--);
    }

    public final Object peek() {
        return super.get(this.last);
    }

    public final boolean empty() {
        return this.last < 0;
    }
}

