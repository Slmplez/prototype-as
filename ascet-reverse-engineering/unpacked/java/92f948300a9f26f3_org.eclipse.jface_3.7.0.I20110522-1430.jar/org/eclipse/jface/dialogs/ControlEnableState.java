/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.jface.dialogs;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;

public class ControlEnableState {
    private List exceptions = null;
    private List states = new ArrayList();

    protected ControlEnableState(Control w) {
        this(w, null);
    }

    protected ControlEnableState(Control w, List exceptions) {
        this.exceptions = exceptions;
        this.readStateForAndDisable(w);
    }

    public static ControlEnableState disable(Control w) {
        return new ControlEnableState(w);
    }

    public static ControlEnableState disable(Control w, List exceptions) {
        return new ControlEnableState(w, exceptions);
    }

    private void readStateForAndDisable(Control control) {
        if (this.exceptions != null && this.exceptions.contains(control)) {
            return;
        }
        if (control instanceof Composite) {
            Composite c = (Composite)control;
            Control[] children = c.getChildren();
            int i = 0;
            while (i < children.length) {
                this.readStateForAndDisable(children[i]);
                ++i;
            }
        }
        this.states.add(new ItemState(control, control.getEnabled()));
        control.setEnabled(false);
    }

    public void restore() {
        int size = this.states.size();
        int i = 0;
        while (i < size) {
            ((ItemState)this.states.get(i)).restore();
            ++i;
        }
    }

    private class ItemState {
        protected Control item;
        protected boolean state;

        public ItemState(Control item, boolean state) {
            this.item = item;
            this.state = state;
        }

        public void restore() {
            if (this.item == null || this.item.isDisposed()) {
                return;
            }
            this.item.setEnabled(this.state);
        }
    }
}

