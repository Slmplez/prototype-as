/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.build;

import org.eclipse.pde.core.build.IBuildEntry;
import org.eclipse.pde.core.build.IBuildModel;
import org.eclipse.pde.core.build.IBuildModelFactory;
import org.eclipse.pde.internal.core.build.BuildEntry;

public class BuildModelFactory
implements IBuildModelFactory {
    private IBuildModel model;

    public BuildModelFactory(IBuildModel model) {
        this.model = model;
    }

    public IBuildEntry createEntry(String name) {
        BuildEntry entry = new BuildEntry(name);
        entry.setModel(this.model);
        return entry;
    }
}

