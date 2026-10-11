/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.URIUtil
 */
package org.eclipse.core.internal.resources.projectvariables;

import java.net.URISyntaxException;
import java.net.URL;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.variableresolvers.PathVariableResolver;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.URIUtil;

public class EclipseHomeProjectVariable
extends PathVariableResolver {
    public static String NAME = "ECLIPSE_HOME";

    public String[] getVariableNames(String variable, IResource resource) {
        return new String[]{NAME};
    }

    public String getValue(String variable, IResource resource) {
        URL installURL = Platform.getInstallLocation().getURL();
        try {
            return URIUtil.toURI((URL)installURL).toASCIIString();
        }
        catch (URISyntaxException uRISyntaxException) {
            return null;
        }
    }
}

