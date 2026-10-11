/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.loader.buddy;

import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import org.eclipse.osgi.internal.loader.BundleLoader;
import org.eclipse.osgi.internal.loader.BundleLoaderProxy;
import org.eclipse.osgi.internal.loader.buddy.IBuddyPolicy;
import org.eclipse.osgi.service.resolver.BundleDescription;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class DependentPolicy
implements IBuddyPolicy {
    BundleLoader buddyRequester;
    int lastDependentOfAdded = -1;
    List<BundleDescription> allDependents = null;

    public DependentPolicy(BundleLoader requester) {
        this.buddyRequester = requester;
        this.allDependents = new ArrayList<BundleDescription>();
        this.basicAddImmediateDependents(this.buddyRequester.getBundle().getBundleDescription());
        if (this.allDependents.size() == 0) {
            this.allDependents = null;
        }
    }

    @Override
    public Class<?> loadClass(String name) {
        if (this.allDependents == null) {
            return null;
        }
        Class<?> result = null;
        int i = 0;
        while (i < this.allDependents.size() && result == null) {
            block5: {
                BundleDescription searchedBundle = this.allDependents.get(i);
                try {
                    BundleLoaderProxy proxy = this.buddyRequester.getLoaderProxy(searchedBundle);
                    if (proxy != null) {
                        result = proxy.getBundleLoader().findClass(name);
                    }
                }
                catch (ClassNotFoundException classNotFoundException) {
                    if (result != null) break block5;
                    this.addDependent(i, searchedBundle);
                }
            }
            ++i;
        }
        return result;
    }

    private synchronized void addDependent(int i, BundleDescription searchedBundle) {
        if (i > this.lastDependentOfAdded) {
            this.lastDependentOfAdded = i;
            this.basicAddImmediateDependents(searchedBundle);
        }
    }

    @Override
    public URL loadResource(String name) {
        if (this.allDependents == null) {
            return null;
        }
        URL result = null;
        int i = 0;
        while (i < this.allDependents.size() && result == null) {
            BundleDescription searchedBundle = this.allDependents.get(i);
            BundleLoaderProxy proxy = this.buddyRequester.getLoaderProxy(searchedBundle);
            if (proxy != null && (result = proxy.getBundleLoader().findResource(name)) == null) {
                this.addDependent(i, searchedBundle);
            }
            ++i;
        }
        return result;
    }

    @Override
    public Enumeration<URL> loadResources(String name) {
        if (this.allDependents == null) {
            return null;
        }
        Enumeration<URL> results = null;
        int i = 0;
        while (i < this.allDependents.size()) {
            BundleDescription searchedBundle = this.allDependents.get(i);
            try {
                BundleLoaderProxy proxy = this.buddyRequester.getLoaderProxy(searchedBundle);
                if (proxy != null) {
                    results = BundleLoader.compoundEnumerations(results, proxy.getBundleLoader().findResources(name));
                    this.addDependent(i, searchedBundle);
                }
            }
            catch (IOException iOException) {}
            ++i;
        }
        return results;
    }

    private void basicAddImmediateDependents(BundleDescription root) {
        BundleDescription[] dependents = root.getDependents();
        int i = 0;
        while (i < dependents.length) {
            BundleDescription toAdd = dependents[i];
            if (toAdd.getHost() == null && !this.allDependents.contains(toAdd)) {
                this.allDependents.add(toAdd);
            }
            ++i;
        }
    }
}

