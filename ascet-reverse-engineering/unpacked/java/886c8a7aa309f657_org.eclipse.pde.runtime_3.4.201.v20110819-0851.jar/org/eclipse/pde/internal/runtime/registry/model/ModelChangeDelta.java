/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.runtime.registry.model;

import org.eclipse.pde.internal.runtime.registry.model.ModelObject;

public class ModelChangeDelta {
    public static final int ADDED = 0;
    public static final int UPDATED = 1;
    public static final int REMOVED = 2;
    public static final int STARTING = 3;
    public static final int STARTED = 4;
    public static final int STOPPING = 5;
    public static final int STOPPED = 6;
    public static final int RESOLVED = 7;
    public static final int UNRESOLVED = 8;
    private ModelObject fObject;
    private int fFlag;

    public ModelChangeDelta(ModelObject object, int flag) {
        this.fObject = object;
        this.fFlag = flag;
    }

    public ModelObject getModelObject() {
        return this.fObject;
    }

    public int getFlag() {
        return this.fFlag;
    }
}

