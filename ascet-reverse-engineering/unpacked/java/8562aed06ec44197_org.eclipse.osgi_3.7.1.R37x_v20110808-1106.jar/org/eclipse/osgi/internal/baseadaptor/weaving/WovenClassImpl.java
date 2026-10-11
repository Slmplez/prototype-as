/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.baseadaptor.weaving;

import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.security.ProtectionDomain;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import org.eclipse.osgi.internal.baseadaptor.weaving.DynamicImportList;
import org.eclipse.osgi.internal.loader.BundleLoader;
import org.eclipse.osgi.internal.serviceregistry.HookContext;
import org.eclipse.osgi.internal.serviceregistry.ServiceRegistry;
import org.eclipse.osgi.util.ManifestElement;
import org.osgi.framework.AdminPermission;
import org.osgi.framework.BundleException;
import org.osgi.framework.ServiceRegistration;
import org.osgi.framework.hooks.weaving.WeavingException;
import org.osgi.framework.hooks.weaving.WeavingHook;
import org.osgi.framework.hooks.weaving.WovenClass;
import org.osgi.framework.wiring.BundleWiring;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public final class WovenClassImpl
implements WovenClass,
HookContext {
    private static final byte FLAG_HOOKCALLED = 1;
    private static final byte FLAG_HOOKSCOMPLETE = 2;
    private static final byte FLAG_WEAVINGCOMPLETE = 4;
    private static final String weavingHookName;
    private final String className;
    private final List<String> dynamicImports;
    private final ProtectionDomain domain;
    private final BundleLoader loader;
    final ServiceRegistry registry;
    private final Map<ServiceRegistration<?>, Boolean> blackList;
    private byte[] bytes;
    private byte hookFlags = 0;
    private Throwable error;
    private ServiceRegistration<?> errorHook;
    private Class<?> clazz;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.osgi.framework.hooks.weaving.WeavingHook");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        weavingHookName = clazz.getName();
    }

    public WovenClassImpl(String className, byte[] bytes, ProtectionDomain domain, BundleLoader loader, ServiceRegistry registry, Map<ServiceRegistration<?>, Boolean> blacklist) {
        this.className = className;
        this.bytes = bytes;
        this.dynamicImports = new DynamicImportList(this);
        this.domain = domain;
        this.loader = loader;
        this.registry = registry;
        this.blackList = blacklist;
    }

    @Override
    public byte[] getBytes() {
        if ((this.hookFlags & 2) == 0) {
            this.checkPermission();
            return this.bytes;
        }
        byte[] current = this.bytes;
        byte[] results = new byte[current.length];
        System.arraycopy(this.bytes, 0, results, 0, current.length);
        return results;
    }

    @Override
    public void setBytes(byte[] newBytes) {
        this.checkPermission();
        if (newBytes == null) {
            throw new NullPointerException("newBytes cannot be null.");
        }
        if ((this.hookFlags & 2) != 0) {
            throw new IllegalStateException("Weaving has completed already.");
        }
        this.bytes = newBytes;
    }

    void checkPermission() {
        SecurityManager sm = System.getSecurityManager();
        if (sm != null) {
            sm.checkPermission(new AdminPermission(this.loader.getBundle(), "weave"));
        }
    }

    @Override
    public List<String> getDynamicImports() {
        if ((this.hookFlags & 2) == 0) {
            return this.dynamicImports;
        }
        return Collections.unmodifiableList(this.dynamicImports);
    }

    @Override
    public boolean isWeavingComplete() {
        return (this.hookFlags & 4) != 0;
    }

    private void setHooksComplete() {
        byte[] original = this.bytes;
        this.bytes = new byte[this.bytes.length];
        System.arraycopy(original, 0, this.bytes, 0, original.length);
        this.hookFlags = (byte)(this.hookFlags | 2);
    }

    void setWeavingCompleted(Class<?> clazz) {
        this.clazz = clazz;
        this.hookFlags = (byte)(this.hookFlags | 4);
    }

    @Override
    public String getClassName() {
        return this.className;
    }

    @Override
    public ProtectionDomain getProtectionDomain() {
        return this.domain;
    }

    @Override
    public Class<?> getDefinedClass() {
        return this.clazz;
    }

    @Override
    public BundleWiring getBundleWiring() {
        return this.loader.getLoaderProxy().getBundleDescription().getWiring();
    }

    @Override
    public void call(Object hook, ServiceRegistration<?> hookRegistration) throws Exception {
        if (this.error != null) {
            return;
        }
        if (hook instanceof WeavingHook) {
            if (this.blackList.containsKey(hookRegistration)) {
                return;
            }
            this.hookFlags = (byte)(this.hookFlags | 1);
            try {
                ((WeavingHook)hook).weave(this);
            }
            catch (WeavingException e) {
                this.error = e;
                this.errorHook = hookRegistration;
            }
            catch (Throwable t) {
                this.error = t;
                this.errorHook = hookRegistration;
                this.blackList.put(hookRegistration, Boolean.TRUE);
            }
        }
    }

    @Override
    public String getHookMethodName() {
        return "weave";
    }

    @Override
    public String getHookClassName() {
        return weavingHookName;
    }

    byte[] callHooks() throws Throwable {
        List<String> newImports;
        byte[] wovenBytes;
        block12: {
            SecurityManager sm = System.getSecurityManager();
            wovenBytes = null;
            newImports = null;
            try {
                if (sm == null) {
                    this.registry.notifyHooksPrivileged(this);
                    break block12;
                }
                try {
                    AccessController.doPrivileged(new PrivilegedExceptionAction<Object>(){

                        @Override
                        public Object run() {
                            WovenClassImpl.this.registry.notifyHooksPrivileged(WovenClassImpl.this);
                            return null;
                        }
                    });
                }
                catch (PrivilegedActionException e) {
                    throw (RuntimeException)e.getException();
                }
            }
            finally {
                if ((this.hookFlags & 1) != 0) {
                    wovenBytes = this.bytes;
                    newImports = this.dynamicImports;
                    this.setHooksComplete();
                }
            }
        }
        if (this.error != null) {
            throw this.error;
        }
        if (newImports != null) {
            for (String newImport : newImports) {
                try {
                    ManifestElement[] importElements = ManifestElement.parseHeader("Import-Package", newImport);
                    this.loader.addDynamicImportPackage(importElements);
                }
                catch (BundleException bundleException) {}
            }
        }
        return wovenBytes;
    }

    public String toString() {
        return this.className;
    }

    public ServiceRegistration<?> getErrorHook() {
        return this.errorHook;
    }
}

