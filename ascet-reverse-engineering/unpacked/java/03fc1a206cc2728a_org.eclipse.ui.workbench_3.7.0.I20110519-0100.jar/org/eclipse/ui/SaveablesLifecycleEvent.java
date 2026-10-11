/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui;

import java.util.EventObject;
import org.eclipse.ui.Saveable;

public class SaveablesLifecycleEvent
extends EventObject {
    private static final long serialVersionUID = -3530773637989046452L;
    public static final int POST_OPEN = 1;
    public static final int PRE_CLOSE = 2;
    public static final int POST_CLOSE = 3;
    public static final int DIRTY_CHANGED = 4;
    private int eventType;
    private Saveable[] saveables;
    private boolean force;
    private boolean veto = false;

    public SaveablesLifecycleEvent(Object source, int eventType, Saveable[] saveables, boolean force) {
        super(source);
        this.eventType = eventType;
        this.saveables = saveables;
        this.force = force;
    }

    public int getEventType() {
        return this.eventType;
    }

    public Saveable[] getSaveables() {
        return this.saveables;
    }

    public boolean isVeto() {
        return this.veto;
    }

    public void setVeto(boolean veto) {
        this.veto = veto;
    }

    public boolean isForce() {
        return this.force;
    }
}

