/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.ui.internal.IChangeListener;

public class Model {
    private Object state;
    private List views = new ArrayList(1);

    public Model(Object initialState) {
        this.state = initialState;
    }

    public Object getState() {
        return this.state;
    }

    public void setState(Object newState, IChangeListener toOmit) {
        if (this.areEqual(newState, this.state)) {
            return;
        }
        this.state = newState;
        Iterator iter = this.views.iterator();
        while (iter.hasNext()) {
            IChangeListener next = (IChangeListener)iter.next();
            if (next == toOmit) continue;
            next.update(true);
        }
    }

    private boolean areEqual(Object o1, Object o2) {
        if (o1 == null) {
            return o2 == null;
        }
        if (o2 == null) {
            return false;
        }
        return o1.equals(o2);
    }

    public void addChangeListener(IChangeListener changeListener) {
        changeListener.update(false);
        this.views.add(changeListener);
    }

    public void removeChangeListener(IChangeListener changeListener) {
        this.views.remove(changeListener);
    }
}

