/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.ant.core.AntRunner
 *  org.eclipse.core.runtime.FileLocator
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IPlatformRunnable
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.equinox.app.IApplication
 *  org.eclipse.equinox.app.IApplicationContext
 */
package org.eclipse.pde.internal.build;

import java.io.IOException;
import java.net.URL;
import org.eclipse.ant.core.AntRunner;
import org.eclipse.core.runtime.FileLocator;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IPlatformRunnable;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Platform;
import org.eclipse.equinox.app.IApplication;
import org.eclipse.equinox.app.IApplicationContext;
import org.eclipse.pde.internal.build.BundleHelper;

public class BuildApplication
implements IApplication {
    public Object start(IApplicationContext context) throws Exception {
        context.applicationRunning();
        IExtension extension = Platform.getExtensionRegistry().getExtension("org.eclipse.ant.core.antRunner");
        if (extension == null) {
            return null;
        }
        IConfigurationElement element = extension.getConfigurationElements()[0];
        Object ee = element.createExecutableExtension("run");
        String[] args = (String[])context.getArguments().get("application.args");
        args = this.updateArgs(args);
        if (ee instanceof AntRunner) {
            return ((AntRunner)ee).run((Object)args);
        }
        return this.doPlatformRunnable(ee, args);
    }

    private Object doPlatformRunnable(Object ee, Object args) throws Exception {
        if (ee instanceof IPlatformRunnable) {
            return ((IPlatformRunnable)ee).run(args);
        }
        return null;
    }

    private String[] updateArgs(String[] args) throws IOException {
        int i = 0;
        while (i < args.length) {
            String string = args[i];
            if (string.equals("-f") || string.equals("-buildfile")) {
                return args;
            }
            ++i;
        }
        int length = args.length;
        String[] result = new String[length + 2];
        System.arraycopy(args, 0, result, 0, length);
        result[length] = "-f";
        URL buildURL = BundleHelper.getDefault().find((IPath)new Path("/scripts/build.xml"));
        result[length + 1] = FileLocator.toFileURL((URL)buildURL).getFile();
        return result;
    }

    public void stop() {
    }
}

