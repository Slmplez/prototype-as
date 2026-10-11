/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 */
package org.eclipse.debug.internal.core.variables;

import org.eclipse.core.resources.IResource;
import org.eclipse.debug.internal.core.variables.ResourceResolver;

public class ContainerResolver
extends ResourceResolver {
    protected IResource translateSelectedResource(IResource resource) {
        return resource.getParent();
    }
}

