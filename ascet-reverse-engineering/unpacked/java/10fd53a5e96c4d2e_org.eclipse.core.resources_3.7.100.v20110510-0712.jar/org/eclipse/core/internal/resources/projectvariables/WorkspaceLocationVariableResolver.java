/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.resources.projectvariables;

import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.variableresolvers.PathVariableResolver;

public class WorkspaceLocationVariableResolver
extends PathVariableResolver {
    public static String NAME = "WORKSPACE_LOC";

    public String[] getVariableNames(String variable, IResource resource) {
        return new String[]{NAME};
    }

    public String getValue(String variable, IResource resource) {
        return resource.getWorkspace().getRoot().getLocationURI().toASCIIString();
    }
}

