/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.debug.core.sourcelookup.AbstractSourceLookupDirector
 *  org.eclipse.debug.core.sourcelookup.ISourceContainerType
 *  org.eclipse.debug.core.sourcelookup.ISourceLookupParticipant
 *  org.eclipse.debug.core.sourcelookup.containers.ProjectSourceContainer
 *  org.eclipse.debug.core.sourcelookup.containers.WorkspaceSourceContainer
 */
package org.eclipse.jdt.internal.launching;

import java.util.HashSet;
import java.util.Set;
import org.eclipse.debug.core.sourcelookup.AbstractSourceLookupDirector;
import org.eclipse.debug.core.sourcelookup.ISourceContainerType;
import org.eclipse.debug.core.sourcelookup.ISourceLookupParticipant;
import org.eclipse.debug.core.sourcelookup.containers.ProjectSourceContainer;
import org.eclipse.debug.core.sourcelookup.containers.WorkspaceSourceContainer;
import org.eclipse.jdt.launching.sourcelookup.containers.JavaSourceLookupParticipant;

public class JavaSourceLookupDirector
extends AbstractSourceLookupDirector {
    private static Set fFilteredTypes = new HashSet();

    static {
        fFilteredTypes.add(ProjectSourceContainer.TYPE_ID);
        fFilteredTypes.add(WorkspaceSourceContainer.TYPE_ID);
        fFilteredTypes.add("org.eclipse.debug.ui.containerType.workingSet");
    }

    public void initializeParticipants() {
        this.addParticipants(new ISourceLookupParticipant[]{new JavaSourceLookupParticipant()});
    }

    public boolean supportsSourceContainerType(ISourceContainerType type) {
        return !fFilteredTypes.contains(type.getId());
    }
}

