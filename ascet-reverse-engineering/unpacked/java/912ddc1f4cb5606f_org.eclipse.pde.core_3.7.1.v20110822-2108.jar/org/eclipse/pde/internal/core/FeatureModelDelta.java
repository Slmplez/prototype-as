/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core;

import java.util.ArrayList;
import org.eclipse.pde.internal.core.IFeatureModelDelta;
import org.eclipse.pde.internal.core.ifeature.IFeatureModel;

public class FeatureModelDelta
implements IFeatureModelDelta {
    private ArrayList fAdded;
    private ArrayList fRemoved;
    private ArrayList fChanged;
    private int kind = 0;

    public int getKind() {
        return this.kind;
    }

    public IFeatureModel[] getAdded() {
        return this.get(this.fAdded);
    }

    public IFeatureModel[] getRemoved() {
        return this.get(this.fRemoved);
    }

    public IFeatureModel[] getChanged() {
        return this.get(this.fChanged);
    }

    private IFeatureModel[] get(ArrayList list) {
        if (list == null) {
            return new IFeatureModel[0];
        }
        return list.toArray(new IFeatureModel[list.size()]);
    }

    void add(IFeatureModel model, int type) {
        switch (type) {
            case 1: {
                this.fAdded = this.add(this.fAdded, model);
                break;
            }
            case 2: {
                this.fRemoved = this.add(this.fRemoved, model);
                break;
            }
            case 4: {
                this.fChanged = this.add(this.fChanged, model);
            }
        }
        this.kind |= type;
    }

    private ArrayList add(ArrayList list, IFeatureModel model) {
        if (list == null) {
            list = new ArrayList<IFeatureModel>();
        }
        list.add(model);
        return list;
    }

    boolean contains(IFeatureModel model, int type) {
        if ((type & 1) != 0 && this.fAdded != null && this.fAdded.contains(model)) {
            return true;
        }
        if ((type & 2) != 0 && this.fRemoved != null && this.fRemoved.contains(model)) {
            return true;
        }
        return (type & 4) != 0 && this.fChanged != null && this.fChanged.contains(model);
    }
}

