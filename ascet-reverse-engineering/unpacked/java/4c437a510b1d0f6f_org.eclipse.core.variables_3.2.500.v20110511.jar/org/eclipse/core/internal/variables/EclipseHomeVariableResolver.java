/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.osgi.service.datalocation.Location
 */
package org.eclipse.core.internal.variables;

import java.net.URL;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.variables.IDynamicVariable;
import org.eclipse.core.variables.IDynamicVariableResolver;
import org.eclipse.osgi.service.datalocation.Location;

public class EclipseHomeVariableResolver
implements IDynamicVariableResolver {
    public String resolveValue(IDynamicVariable variable, String argument) throws CoreException {
        URL url;
        Location installLocation = Platform.getInstallLocation();
        if (installLocation != null && (url = installLocation.getURL()) != null) {
            String file = url.getFile();
            IPath path = Path.fromOSString((String)file);
            String osstr = path.toOSString();
            if (osstr.length() != 0) {
                return osstr;
            }
            if (file.length() != 0) {
                return file;
            }
        }
        return null;
    }
}

