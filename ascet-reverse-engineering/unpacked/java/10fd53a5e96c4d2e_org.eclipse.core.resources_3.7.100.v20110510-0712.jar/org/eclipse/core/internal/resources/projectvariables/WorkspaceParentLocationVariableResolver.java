/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.resources.projectvariables;

import java.net.URI;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.variableresolvers.PathVariableResolver;

public class WorkspaceParentLocationVariableResolver
extends PathVariableResolver {
    public static String NAME = "PARENT_LOC";

    public String[] getVariableNames(String variable, IResource resource) {
        return new String[]{NAME};
    }

    public String getValue(String variable, IResource resource) {
        URI locationURI;
        IContainer parent = resource.getParent();
        if (parent != null && (locationURI = parent.getLocationURI()) != null) {
            return locationURI.toASCIIString();
        }
        return null;
    }
}

