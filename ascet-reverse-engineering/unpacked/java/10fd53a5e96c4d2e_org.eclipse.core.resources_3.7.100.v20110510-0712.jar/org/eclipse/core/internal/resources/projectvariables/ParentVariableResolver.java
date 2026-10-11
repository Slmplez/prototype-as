/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.filesystem.URIUtil
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.core.internal.resources.projectvariables;

import java.net.URI;
import org.eclipse.core.filesystem.URIUtil;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.variableresolvers.PathVariableResolver;
import org.eclipse.core.runtime.IPath;

public class ParentVariableResolver
extends PathVariableResolver {
    public static final String NAME = "PARENT";

    public String getValue(String variable, IResource resource) {
        int index = variable.indexOf(45);
        if (index == -1 || index == variable.length() - 1) {
            return null;
        }
        String countRemaining = variable.substring(index + 1);
        if ((index = countRemaining.indexOf(45)) == -1 || index == variable.length() - 1) {
            return null;
        }
        String countString = countRemaining.substring(0, index);
        int count = 0;
        try {
            count = Integer.parseInt(countString);
            if (count < 0) {
                return null;
            }
        }
        catch (NumberFormatException numberFormatException) {
            return null;
        }
        String argument = countRemaining.substring(index + 1);
        URI value = resource.getPathVariableManager().getURIValue(argument);
        if (value == null) {
            return null;
        }
        value = resource.getPathVariableManager().resolveURI(value);
        value = URIUtil.toURI((IPath)URIUtil.toPath((URI)value).removeLastSegments(count));
        return value.toASCIIString();
    }
}

