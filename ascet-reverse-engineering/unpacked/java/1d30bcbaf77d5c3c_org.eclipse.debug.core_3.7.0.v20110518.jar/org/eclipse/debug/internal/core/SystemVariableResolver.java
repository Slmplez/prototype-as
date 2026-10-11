/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.variables.IDynamicVariable
 *  org.eclipse.core.variables.IDynamicVariableResolver
 */
package org.eclipse.debug.internal.core;

import java.net.URL;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.variables.IDynamicVariable;
import org.eclipse.core.variables.IDynamicVariableResolver;

public class SystemVariableResolver
implements IDynamicVariableResolver {
    public String resolveValue(IDynamicVariable variable, String argument) throws CoreException {
        if ("ARCH".equals(argument)) {
            return Platform.getOSArch();
        }
        if ("ECLIPSE_HOME".equals(argument)) {
            URL installURL = Platform.getInstallLocation().getURL();
            IPath ppath = new Path(installURL.getFile()).removeTrailingSeparator();
            return SystemVariableResolver.getCorrectPath(ppath.toOSString());
        }
        if ("NL".equals(argument)) {
            return Platform.getNL();
        }
        if ("OS".equals(argument)) {
            return Platform.getOS();
        }
        if ("WS".equals(argument)) {
            return Platform.getWS();
        }
        return null;
    }

    /*
     * Unable to fully structure code
     */
    private static String getCorrectPath(String path) {
        buf = new StringBuffer();
        i = 0;
        while (i < path.length()) {
            block3: {
                c = path.charAt(i);
                if (Platform.getOS().equals("win32") && i == 0 && c == '/') break block3;
                if (c != '%' || i + 2 >= path.length()) ** GOTO lbl-1000
                c1 = path.charAt(i + 1);
                c2 = path.charAt(i + 2);
                if (c1 == '2' && c2 == '0') {
                    i += 2;
                    buf.append(" ");
                } else lbl-1000:
                // 2 sources

                {
                    buf.append(c);
                }
            }
            ++i;
        }
        return buf.toString();
    }
}

