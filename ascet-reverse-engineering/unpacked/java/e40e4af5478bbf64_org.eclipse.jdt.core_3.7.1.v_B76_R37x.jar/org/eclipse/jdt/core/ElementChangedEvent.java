/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core;

import java.util.EventObject;
import org.eclipse.jdt.core.IJavaElementDelta;

public class ElementChangedEvent
extends EventObject {
    public static final int POST_CHANGE = 1;
    public static final int PRE_AUTO_BUILD = 2;
    public static final int POST_RECONCILE = 4;
    private static final long serialVersionUID = -8947240431612844420L;
    private int type;

    public ElementChangedEvent(IJavaElementDelta delta, int type) {
        super(delta);
        this.type = type;
    }

    public IJavaElementDelta getDelta() {
        return (IJavaElementDelta)this.source;
    }

    public int getType() {
        return this.type;
    }
}

