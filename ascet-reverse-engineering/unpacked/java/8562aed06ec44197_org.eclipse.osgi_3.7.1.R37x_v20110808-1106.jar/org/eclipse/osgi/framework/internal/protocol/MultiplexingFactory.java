/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.internal.protocol;

import java.lang.reflect.Method;
import java.util.LinkedList;
import java.util.List;
import org.eclipse.osgi.framework.adaptor.FrameworkAdaptor;
import org.eclipse.osgi.framework.log.FrameworkLog;
import org.eclipse.osgi.framework.log.FrameworkLogEntry;
import org.osgi.framework.BundleContext;
import org.osgi.framework.ServiceReference;
import org.osgi.service.packageadmin.PackageAdmin;
import org.osgi.util.tracker.ServiceTracker;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class MultiplexingFactory {
    protected static final String PACKAGEADMINCLASS = "org.osgi.service.packageadmin.PackageAdmin";
    protected BundleContext context;
    protected FrameworkAdaptor adaptor;
    private List<Object> factories;
    private ServiceTracker<ServiceReference<?>, PackageAdmin> packageAdminTracker;
    private static InternalSecurityManager internalSecurityManager = new InternalSecurityManager();
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;
    static /* synthetic */ Class class$3;

    MultiplexingFactory(BundleContext context, FrameworkAdaptor adaptor) {
        this.context = context;
        this.adaptor = adaptor;
        this.packageAdminTracker = new ServiceTracker(context, PACKAGEADMINCLASS, null);
        this.packageAdminTracker.open();
    }

    public abstract void setParentFactory(Object var1);

    public abstract Object getParentFactory();

    public boolean isMultiplexing() {
        return this.getFactories() != null;
    }

    public void register(Object factory) {
        try {
            Class<?> clazz = factory.getClass();
            Class[] classArray = new Class[1];
            Class<?> clazz2 = class$0;
            if (clazz2 == null) {
                try {
                    clazz2 = class$0 = Class.forName("java.lang.Object");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            classArray[0] = clazz2;
            Method setParentFactory = clazz.getMethod("setParentFactory", classArray);
            setParentFactory.invoke(factory, this.getParentFactory());
        }
        catch (Exception e) {
            FrameworkLog frameworkLog = this.adaptor.getFrameworkLog();
            Class<?> clazz = class$1;
            if (clazz == null) {
                try {
                    clazz = class$1 = Class.forName("org.eclipse.osgi.framework.internal.protocol.MultiplexingFactory");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            frameworkLog.log(new FrameworkLogEntry(clazz.getName(), 4, 0, "register", 4, e, null));
            throw new RuntimeException(e.getMessage(), e);
        }
        this.addFactory(factory);
    }

    public void unregister(Object factory) {
        this.removeFactory(factory);
        try {
            Method closeTracker = factory.getClass().getSuperclass().getDeclaredMethod("closePackageAdminTracker", null);
            closeTracker.setAccessible(true);
            closeTracker.invoke(factory, null);
        }
        catch (Exception e) {
            FrameworkLog frameworkLog = this.adaptor.getFrameworkLog();
            Class<?> clazz = class$1;
            if (clazz == null) {
                try {
                    clazz = class$1 = Class.forName("org.eclipse.osgi.framework.internal.protocol.MultiplexingFactory");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            frameworkLog.log(new FrameworkLogEntry(clazz.getName(), 4, 0, "unregister", 4, e, null));
            throw new RuntimeException(e.getMessage(), e);
        }
    }

    public Object designateSuccessor() {
        List<Object> released = this.releaseFactories();
        if (released == null || released.isEmpty()) {
            return this.getParentFactory();
        }
        Object successor = released.remove(0);
        try {
            Class<?> clazz = successor.getClass();
            Class[] classArray = new Class[1];
            Class<?> clazz2 = class$0;
            if (clazz2 == null) {
                try {
                    clazz2 = class$0 = Class.forName("java.lang.Object");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            classArray[0] = clazz2;
            Method register = clazz.getMethod("register", classArray);
            for (Object r : released) {
                register.invoke(successor, r);
            }
        }
        catch (Exception e) {
            FrameworkLog frameworkLog = this.adaptor.getFrameworkLog();
            Class<?> clazz = class$1;
            if (clazz == null) {
                try {
                    clazz = class$1 = Class.forName("org.eclipse.osgi.framework.internal.protocol.MultiplexingFactory");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            frameworkLog.log(new FrameworkLogEntry(clazz.getName(), 4, 0, "designateSuccessor", 4, e, null));
            throw new RuntimeException(e.getMessage(), e);
        }
        this.closePackageAdminTracker();
        return successor;
    }

    private void closePackageAdminTracker() {
        this.packageAdminTracker.close();
    }

    public Object findAuthorizedFactory(List<Class<?>> ignoredClasses) {
        List<Object> current = this.getFactories();
        Class<?>[] classStack = internalSecurityManager.getClassContext();
        int i = 0;
        while (i < classStack.length) {
            Class<?> clazz = classStack[i];
            Class<?> clazz2 = class$2;
            if (clazz2 == null) {
                try {
                    clazz2 = Class.forName("org.eclipse.osgi.framework.internal.protocol.MultiplexingFactory$InternalSecurityManager");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if (clazz != clazz2) {
                Class<?> clazz3 = class$1;
                if (clazz3 == null) {
                    try {
                        clazz3 = Class.forName("org.eclipse.osgi.framework.internal.protocol.MultiplexingFactory");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                if (clazz != clazz3 && !ignoredClasses.contains(clazz)) {
                    if (this.hasAuthority(clazz)) {
                        return this;
                    }
                    if (current != null) {
                        for (Object factory : current) {
                            try {
                                Class<?> clazz4 = factory.getClass();
                                Class[] classArray = new Class[1];
                                Class<?> clazz5 = class$3;
                                if (clazz5 == null) {
                                    try {
                                        clazz5 = Class.forName("java.lang.Class");
                                    }
                                    catch (ClassNotFoundException classNotFoundException) {
                                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                                    }
                                }
                                classArray[0] = clazz5;
                                Method hasAuthorityMethod = clazz4.getMethod("hasAuthority", classArray);
                                if (!((Boolean)hasAuthorityMethod.invoke(factory, clazz)).booleanValue()) continue;
                                return factory;
                            }
                            catch (Exception e) {
                                FrameworkLog frameworkLog = this.adaptor.getFrameworkLog();
                                Class<?> clazz6 = class$1;
                                if (clazz6 == null) {
                                    try {
                                        clazz6 = class$1 = Class.forName("org.eclipse.osgi.framework.internal.protocol.MultiplexingFactory");
                                    }
                                    catch (ClassNotFoundException classNotFoundException) {
                                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                                    }
                                }
                                frameworkLog.log(new FrameworkLogEntry(clazz6.getName(), 4, 0, "findAuthorizedURLStreamHandler-loop", 4, e, null));
                                throw new RuntimeException(e.getMessage(), e);
                            }
                        }
                    }
                }
            }
            ++i;
        }
        return null;
    }

    public boolean hasAuthority(Class<?> clazz) {
        PackageAdmin packageAdminService = this.packageAdminTracker.getService();
        if (packageAdminService != null) {
            return packageAdminService.getBundle(clazz) != null;
        }
        return false;
    }

    private synchronized List<Object> getFactories() {
        return this.factories;
    }

    private synchronized List<Object> releaseFactories() {
        if (this.factories == null) {
            return null;
        }
        LinkedList<Object> released = new LinkedList<Object>(this.factories);
        this.factories = null;
        return released;
    }

    private synchronized void addFactory(Object factory) {
        LinkedList<Object> updated = this.factories == null ? new LinkedList<Object>() : new LinkedList<Object>(this.factories);
        updated.add(factory);
        this.factories = updated;
    }

    private synchronized void removeFactory(Object factory) {
        LinkedList<Object> updated = new LinkedList<Object>(this.factories);
        updated.remove(factory);
        this.factories = updated.isEmpty() ? null : updated;
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    static class InternalSecurityManager
    extends SecurityManager {
        InternalSecurityManager() {
        }

        public Class<?>[] getClassContext() {
            return super.getClassContext();
        }
    }
}

