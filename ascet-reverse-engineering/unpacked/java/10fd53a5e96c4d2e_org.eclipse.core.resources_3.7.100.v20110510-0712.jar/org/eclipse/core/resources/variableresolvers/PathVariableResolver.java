/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.resources.variableresolvers;

import org.eclipse.core.resources.IResource;

public abstract class PathVariableResolver {
    public String[] getVariableNames(String variable, IResource resource) {
        return null;
    }

    public abstract String getValue(String var1, IResource var2);
}

