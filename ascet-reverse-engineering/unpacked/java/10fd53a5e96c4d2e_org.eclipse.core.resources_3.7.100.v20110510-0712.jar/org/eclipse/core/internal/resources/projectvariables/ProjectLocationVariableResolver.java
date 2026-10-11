/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.resources.projectvariables;

import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.variableresolvers.PathVariableResolver;

public class ProjectLocationVariableResolver
extends PathVariableResolver {
    public static String NAME = "PROJECT_LOC";

    public String[] getVariableNames(String variable, IResource resource) {
        return new String[]{NAME};
    }

    public String getValue(String variable, IResource resource) {
        if (resource.getProject().getLocationURI() != null) {
            return resource.getProject().getLocationURI().toASCIIString();
        }
        return null;
    }
}

