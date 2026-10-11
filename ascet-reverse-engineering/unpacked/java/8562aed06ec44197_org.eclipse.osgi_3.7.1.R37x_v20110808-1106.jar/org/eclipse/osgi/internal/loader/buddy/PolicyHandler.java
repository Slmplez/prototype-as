/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.loader.buddy;

import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Set;
import java.util.StringTokenizer;
import org.eclipse.osgi.internal.loader.BundleLoader;
import org.eclipse.osgi.internal.loader.buddy.DependentPolicy;
import org.eclipse.osgi.internal.loader.buddy.GlobalPolicy;
import org.eclipse.osgi.internal.loader.buddy.IBuddyPolicy;
import org.eclipse.osgi.internal.loader.buddy.RegisteredPolicy;
import org.eclipse.osgi.internal.loader.buddy.SystemPolicy;
import org.osgi.framework.BundleContext;
import org.osgi.framework.BundleEvent;
import org.osgi.framework.BundleException;
import org.osgi.framework.SynchronousBundleListener;
import org.osgi.service.packageadmin.PackageAdmin;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class PolicyHandler
implements SynchronousBundleListener {
    private static final String DEPENDENT_POLICY = "dependent";
    private static final String GLOBAL_POLICY = "global";
    private static final String REGISTERED_POLICY = "registered";
    private static final String APP_POLICY = "app";
    private static final String EXT_POLICY = "ext";
    private static final String BOOT_POLICY = "boot";
    private static final String PARENT_POLICY = "parent";
    private final BundleLoader policedLoader;
    private volatile Object[] policies = null;
    private final ThreadLocal<Set<String>> beingLoaded;
    private final PackageAdmin packageAdmin;

    public PolicyHandler(BundleLoader loader, String buddyList, PackageAdmin packageAdmin) {
        this.policedLoader = loader;
        this.policies = PolicyHandler.getArrayFromList(buddyList);
        this.beingLoaded = new ThreadLocal();
        this.packageAdmin = packageAdmin;
    }

    static Object[] getArrayFromList(String stringList) {
        if (stringList == null || stringList.trim().equals("")) {
            return null;
        }
        ArrayList<String> list = new ArrayList<String>();
        StringTokenizer tokens = new StringTokenizer(stringList, ",");
        while (tokens.hasMoreTokens()) {
            String token = tokens.nextToken().trim();
            if (token.equals("")) continue;
            list.add(token);
        }
        return list.isEmpty() ? new Object[]{} : list.toArray(new Object[list.size()]);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private IBuddyPolicy getPolicyImplementation(Object[] policiesSnapshot, int policyOrder) {
        Object[] objectArray = policiesSnapshot;
        synchronized (policiesSnapshot) {
            block12: {
                if (policyOrder < policiesSnapshot.length) break block12;
                // ** MonitorExit[var3_3] (shouldn't be in output)
                return null;
            }
            if (policiesSnapshot[policyOrder] instanceof String) {
                String buddyName = (String)policiesSnapshot[policyOrder];
                if (REGISTERED_POLICY.equals(buddyName)) {
                    policiesSnapshot[policyOrder] = new RegisteredPolicy(this.policedLoader);
                    // ** MonitorExit[var3_3] (shouldn't be in output)
                    return (IBuddyPolicy)policiesSnapshot[policyOrder];
                }
                if (BOOT_POLICY.equals(buddyName)) {
                    policiesSnapshot[policyOrder] = SystemPolicy.getInstance((byte)0);
                    // ** MonitorExit[var3_3] (shouldn't be in output)
                    return (IBuddyPolicy)policiesSnapshot[policyOrder];
                }
                if (APP_POLICY.equals(buddyName)) {
                    policiesSnapshot[policyOrder] = SystemPolicy.getInstance((byte)2);
                    // ** MonitorExit[var3_3] (shouldn't be in output)
                    return (IBuddyPolicy)policiesSnapshot[policyOrder];
                }
                if (EXT_POLICY.equals(buddyName)) {
                    policiesSnapshot[policyOrder] = SystemPolicy.getInstance((byte)1);
                    // ** MonitorExit[var3_3] (shouldn't be in output)
                    return (IBuddyPolicy)policiesSnapshot[policyOrder];
                }
                if (DEPENDENT_POLICY.equals(buddyName)) {
                    policiesSnapshot[policyOrder] = new DependentPolicy(this.policedLoader);
                    // ** MonitorExit[var3_3] (shouldn't be in output)
                    return (IBuddyPolicy)policiesSnapshot[policyOrder];
                }
                if (GLOBAL_POLICY.equals(buddyName)) {
                    policiesSnapshot[policyOrder] = new GlobalPolicy(this.packageAdmin);
                    // ** MonitorExit[var3_3] (shouldn't be in output)
                    return (IBuddyPolicy)policiesSnapshot[policyOrder];
                }
                if (PARENT_POLICY.equals(buddyName)) {
                    policiesSnapshot[policyOrder] = new SystemPolicy(this.policedLoader.getParentClassLoader());
                    // ** MonitorExit[var3_3] (shouldn't be in output)
                    return (IBuddyPolicy)policiesSnapshot[policyOrder];
                }
            }
            // ** MonitorExit[var3_3] (shouldn't be in output)
            return (IBuddyPolicy)policiesSnapshot[policyOrder];
        }
    }

    public Class<?> doBuddyClassLoading(String name) {
        if (!this.startLoading(name)) {
            return null;
        }
        Class<?> result = null;
        Object[] policiesSnapshot = this.policies;
        int policyCount = policiesSnapshot == null ? 0 : policiesSnapshot.length;
        int i = 0;
        while (i < policyCount && result == null) {
            IBuddyPolicy policy = this.getPolicyImplementation(policiesSnapshot, i);
            if (policy != null) {
                result = policy.loadClass(name);
            }
            ++i;
        }
        this.stopLoading(name);
        return result;
    }

    public URL doBuddyResourceLoading(String name) {
        if (!this.startLoading(name)) {
            return null;
        }
        URL result = null;
        Object[] policiesSnapshot = this.policies;
        int policyCount = policiesSnapshot == null ? 0 : policiesSnapshot.length;
        int i = 0;
        while (i < policyCount && result == null) {
            IBuddyPolicy policy = this.getPolicyImplementation(policiesSnapshot, i);
            if (policy != null) {
                result = policy.loadResource(name);
            }
            ++i;
        }
        this.stopLoading(name);
        return result;
    }

    public Enumeration<URL> doBuddyResourcesLoading(String name) {
        if (!this.startLoading(name)) {
            return null;
        }
        ArrayList<URL> results = null;
        Object[] policiesSnapshot = this.policies;
        int policyCount = policiesSnapshot == null ? 0 : policiesSnapshot.length;
        int i = 0;
        while (i < policyCount) {
            Enumeration<URL> result;
            IBuddyPolicy policy = this.getPolicyImplementation(policiesSnapshot, i);
            if (policy != null && (result = policy.loadResources(name)) != null) {
                if (results == null) {
                    results = new ArrayList<URL>(policyCount);
                }
                while (result.hasMoreElements()) {
                    URL url = result.nextElement();
                    if (results.contains(url)) continue;
                    results.add(url);
                }
            }
            ++i;
        }
        this.stopLoading(name);
        return results == null || results.isEmpty() ? null : Collections.enumeration(results);
    }

    private boolean startLoading(String name) {
        Set<String> classesAndResources = this.beingLoaded.get();
        if (classesAndResources != null && classesAndResources.contains(name)) {
            return false;
        }
        if (classesAndResources == null) {
            classesAndResources = new HashSet<String>(3);
            this.beingLoaded.set(classesAndResources);
        }
        classesAndResources.add(name);
        return true;
    }

    private void stopLoading(String name) {
        this.beingLoaded.get().remove(name);
    }

    public void open(BundleContext context) {
        context.addBundleListener(this);
    }

    public void close(BundleContext context) {
        context.removeBundleListener(this);
    }

    @Override
    public void bundleChanged(BundleEvent event) {
        if ((event.getType() & 0x60) == 0) {
            return;
        }
        try {
            String list = this.policedLoader.getBundle().getBundleData().getManifest().get("Eclipse-BuddyPolicy");
            this.policies = PolicyHandler.getArrayFromList(list);
        }
        catch (BundleException bundleException) {}
    }
}

