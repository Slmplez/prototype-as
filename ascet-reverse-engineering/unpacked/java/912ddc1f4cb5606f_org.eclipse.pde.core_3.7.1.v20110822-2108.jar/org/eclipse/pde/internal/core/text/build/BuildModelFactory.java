/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.text.build;

import org.eclipse.pde.core.build.IBuildEntry;
import org.eclipse.pde.core.build.IBuildModel;
import org.eclipse.pde.core.build.IBuildModelFactory;
import org.eclipse.pde.internal.core.text.build.BuildEntry;

public class BuildModelFactory
implements IBuildModelFactory {
    private IBuildModel fModel;

    public BuildModelFactory(IBuildModel model) {
        this.fModel = model;
    }

    public IBuildEntry createEntry(String name) {
        return new BuildEntry(name, this.fModel);
    }
}

