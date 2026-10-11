/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.internal.core;

import java.util.EventObject;
import org.eclipse.osgi.framework.internal.core.AbstractBundle;
import org.osgi.framework.FrameworkListener;

class StartLevelEvent
extends EventObject {
    private static final long serialVersionUID = 3258125839085155891L;
    public static final int CHANGE_BUNDLE_SL = 0;
    public static final int CHANGE_FW_SL = 1;
    private final transient int type;
    private final transient int newSl;
    private final transient AbstractBundle bundle;
    private final transient FrameworkListener[] listeners;

    public StartLevelEvent(int type, int newSl, AbstractBundle bundle, FrameworkListener[] listeners) {
        super(bundle);
        this.type = type;
        this.newSl = newSl;
        this.bundle = bundle;
        this.listeners = listeners;
    }

    public int getType() {
        return this.type;
    }

    public int getNewSL() {
        return this.newSl;
    }

    public AbstractBundle getBundle() {
        return this.bundle;
    }

    public FrameworkListener[] getListeners() {
        return this.listeners;
    }
}

