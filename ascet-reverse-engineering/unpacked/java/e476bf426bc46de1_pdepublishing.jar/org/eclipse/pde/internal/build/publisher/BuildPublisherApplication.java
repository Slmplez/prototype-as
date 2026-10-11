/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.p2.publisher.AbstractPublisherApplication
 *  org.eclipse.equinox.p2.publisher.IPublisherAction
 */
package org.eclipse.pde.internal.build.publisher;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.equinox.p2.publisher.AbstractPublisherApplication;
import org.eclipse.equinox.p2.publisher.IPublisherAction;

public class BuildPublisherApplication
extends AbstractPublisherApplication {
    private List<IPublisherAction> actions;

    public void addAction(IPublisherAction action) {
        if (this.actions == null) {
            this.actions = new ArrayList<IPublisherAction>(1);
        }
        this.actions.add(action);
    }

    protected IPublisherAction[] createActions() {
        if (this.actions == null) {
            return new IPublisherAction[0];
        }
        return this.actions.toArray(new IPublisherAction[this.actions.size()]);
    }

    public void setAppend(boolean value) {
        this.append = value;
    }
}

