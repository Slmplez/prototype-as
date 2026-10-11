/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.osgi.service.datalocation.Location
 *  org.osgi.framework.BundleActivator
 *  org.osgi.framework.BundleContext
 *  org.osgi.framework.InvalidSyntaxException
 *  org.osgi.framework.ServiceReference
 */
package org.eclipse.core.internal.filesystem;

import java.io.File;
import java.util.Enumeration;
import org.eclipse.core.internal.filesystem.Policy;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.osgi.service.datalocation.Location;
import org.osgi.framework.BundleActivator;
import org.osgi.framework.BundleContext;
import org.osgi.framework.InvalidSyntaxException;
import org.osgi.framework.ServiceReference;

public class Activator
implements BundleActivator {
    private static Activator instance;
    private BundleContext context;
    static /* synthetic */ Class class$0;

    public static IPath getCacheLocation() {
        block6: {
            try {
                Location location;
                ServiceReference[] refs;
                BundleContext ctx;
                if (instance == null || (ctx = Activator.instance.context) == null) break block6;
                Class<?> clazz = class$0;
                if (clazz == null) {
                    try {
                        clazz = class$0 = Class.forName("org.eclipse.osgi.service.datalocation.Location");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                if ((refs = ctx.getServiceReferences(clazz.getName(), Location.INSTANCE_FILTER)) != null && refs.length == 1 && (location = (Location)ctx.getService(refs[0])) != null) {
                    Path instancePath = new Path(new File(location.getURL().getFile()).toString());
                    ctx.ungetService(refs[0]);
                    return instancePath.append(".metadata/.plugins").append("org.eclipse.core.filesystem");
                }
            }
            catch (InvalidSyntaxException e) {
                Policy.log(1, null, e);
            }
        }
        return Path.fromOSString((String)System.getProperty("user.home"));
    }

    public Activator() {
        instance = this;
    }

    public static Enumeration findEntries(String path, String filePattern, boolean recurse) {
        if (instance != null && Activator.instance.context != null) {
            return Activator.instance.context.getBundle().findEntries(path, filePattern, recurse);
        }
        return null;
    }

    public void start(BundleContext aContext) throws Exception {
        this.context = aContext;
    }

    public void stop(BundleContext aContext) throws Exception {
    }
}

