/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.internal.core.build;

import java.io.PrintWriter;
import java.util.ArrayList;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.core.ModelChangedEvent;
import org.eclipse.pde.core.build.IBuild;
import org.eclipse.pde.core.build.IBuildEntry;
import org.eclipse.pde.internal.core.build.BuildEntry;
import org.eclipse.pde.internal.core.build.BuildObject;

public class Build
extends BuildObject
implements IBuild {
    protected ArrayList fEntries = new ArrayList();

    public void add(IBuildEntry entry) throws CoreException {
        this.ensureModelEditable();
        this.fEntries.add(entry);
        ((BuildEntry)entry).setInTheModel(true);
        this.getModel().fireModelChanged(new ModelChangedEvent(this.getModel(), 1, new Object[]{entry}, null));
    }

    public IBuildEntry[] getBuildEntries() {
        return this.fEntries.toArray(new IBuildEntry[this.fEntries.size()]);
    }

    public IBuildEntry getEntry(String name) {
        int i = 0;
        while (i < this.fEntries.size()) {
            IBuildEntry entry = (IBuildEntry)this.fEntries.get(i);
            if (entry.getName().equals(name)) {
                return entry;
            }
            ++i;
        }
        return null;
    }

    public void processEntry(String name, String value) {
        BuildEntry entry = (BuildEntry)this.getModel().getFactory().createEntry(name);
        this.fEntries.add(entry);
        entry.processEntry(value);
    }

    public void remove(IBuildEntry entry) throws CoreException {
        this.ensureModelEditable();
        this.fEntries.remove(entry);
        this.getModel().fireModelChanged(new ModelChangedEvent(this.getModel(), 2, new Object[]{entry}, null));
    }

    public void reset() {
        this.fEntries.clear();
    }

    public void write(String indent, PrintWriter writer) {
        int i = 0;
        while (i < this.fEntries.size()) {
            IBuildEntry entry = (IBuildEntry)this.fEntries.get(i);
            entry.write("", writer);
            ++i;
        }
    }
}

