/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.osgi.framework.BundleContext
 */
package org.eclipse.ui.internal;

import org.eclipse.core.runtime.Assert;
import org.eclipse.ui.ILocalWorkingSetManager;
import org.eclipse.ui.IMemento;
import org.eclipse.ui.IWorkingSet;
import org.eclipse.ui.internal.AbstractWorkingSetManager;
import org.osgi.framework.BundleContext;

public class LocalWorkingSetManager
extends AbstractWorkingSetManager
implements ILocalWorkingSetManager {
    public LocalWorkingSetManager(BundleContext context) {
        super(context);
    }

    public void removeWorkingSet(IWorkingSet workingSet) {
        this.internalRemoveWorkingSet(workingSet);
    }

    public void addRecentWorkingSet(IWorkingSet workingSet) {
        this.internalAddRecentWorkingSet(workingSet);
    }

    public void saveState(IMemento memento) {
        this.saveWorkingSetState(memento);
        this.saveMruList(memento);
    }

    public void restoreState(IMemento memento) {
        Assert.isNotNull((Object)memento);
        Assert.isTrue((this.getWorkingSets().length == 0 ? 1 : 0) != 0);
        this.restoreWorkingSetState(memento);
        this.restoreMruList(memento);
    }
}

