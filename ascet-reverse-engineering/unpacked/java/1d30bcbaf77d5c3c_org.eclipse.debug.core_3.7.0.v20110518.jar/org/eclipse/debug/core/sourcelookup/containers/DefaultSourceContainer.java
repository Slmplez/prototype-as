/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.debug.core.sourcelookup.containers;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.debug.core.ILaunchConfiguration;
import org.eclipse.debug.core.sourcelookup.ISourceContainer;
import org.eclipse.debug.core.sourcelookup.ISourceContainerType;
import org.eclipse.debug.core.sourcelookup.ISourceLookupDirector;
import org.eclipse.debug.core.sourcelookup.ISourcePathComputer;
import org.eclipse.debug.core.sourcelookup.containers.CompositeSourceContainer;
import org.eclipse.debug.internal.core.sourcelookup.SourceLookupMessages;

public class DefaultSourceContainer
extends CompositeSourceContainer {
    public static final String TYPE_ID = String.valueOf(DebugPlugin.getUniqueIdentifier()) + ".containerType.default";

    public boolean equals(Object obj) {
        return obj instanceof DefaultSourceContainer;
    }

    public int hashCode() {
        return this.getClass().hashCode();
    }

    protected ILaunchConfiguration getLaunchConfiguration() {
        ISourceLookupDirector director = this.getDirector();
        if (director != null) {
            return director.getLaunchConfiguration();
        }
        return null;
    }

    public ISourceContainerType getType() {
        return this.getSourceContainerType(TYPE_ID);
    }

    private ISourcePathComputer getSourcePathComputer() {
        ISourceLookupDirector director = this.getDirector();
        if (director != null) {
            return director.getSourcePathComputer();
        }
        return null;
    }

    public String getName() {
        return SourceLookupMessages.DefaultSourceContainer_0;
    }

    protected ISourceContainer[] createSourceContainers() throws CoreException {
        ILaunchConfiguration config;
        ISourcePathComputer sourcePathComputer = this.getSourcePathComputer();
        if (sourcePathComputer != null && (config = this.getLaunchConfiguration()) != null) {
            return sourcePathComputer.computeSourceContainers(config, null);
        }
        return new ISourceContainer[0];
    }
}

