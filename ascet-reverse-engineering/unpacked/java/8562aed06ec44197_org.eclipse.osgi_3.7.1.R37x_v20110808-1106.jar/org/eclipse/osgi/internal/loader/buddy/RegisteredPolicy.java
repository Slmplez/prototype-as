/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.loader.buddy;

import java.io.IOException;
import java.net.URL;
import java.util.Enumeration;
import java.util.Iterator;
import org.eclipse.osgi.framework.internal.core.AbstractBundle;
import org.eclipse.osgi.internal.loader.BundleLoader;
import org.eclipse.osgi.internal.loader.BundleLoaderProxy;
import org.eclipse.osgi.internal.loader.buddy.DependentPolicy;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.util.ManifestElement;
import org.osgi.framework.BundleException;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class RegisteredPolicy
extends DependentPolicy {
    public RegisteredPolicy(BundleLoader requester) {
        super(requester);
        if (this.allDependents == null) {
            return;
        }
        Iterator iter = this.allDependents.iterator();
        while (iter.hasNext()) {
            BundleLoaderProxy proxy = this.buddyRequester.getLoaderProxy((BundleDescription)iter.next());
            if (proxy == null) {
                iter.remove();
            }
            try {
                String[] allContributions = ManifestElement.getArrayFromList(((AbstractBundle)proxy.getBundle()).getBundleData().getManifest().get("Eclipse-RegisterBuddy"));
                if (allContributions == null) {
                    iter.remove();
                    continue;
                }
                boolean contributes = false;
                int j = 0;
                while (j < allContributions.length && !contributes) {
                    if (allContributions[j].equals(this.buddyRequester.getBundle().getSymbolicName())) {
                        contributes = true;
                    }
                    ++j;
                }
                if (contributes) continue;
                iter.remove();
            }
            catch (BundleException bundleException) {
                iter.remove();
            }
        }
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
        int size = this.allDependents.size();
        int i = 0;
        while (i < size && result == null) {
            try {
                BundleLoaderProxy proxy = this.buddyRequester.getLoaderProxy((BundleDescription)this.allDependents.get(i));
                if (proxy != null) {
                    result = proxy.getBundleLoader().findClass(name);
                }
            }
            catch (ClassNotFoundException classNotFoundException) {}
            ++i;
        }
        return result;
    }

    @Override
    public URL loadResource(String name) {
        if (this.allDependents == null) {
            return null;
        }
        URL result = null;
        int size = this.allDependents.size();
        int i = 0;
        while (i < size && result == null) {
            BundleLoaderProxy proxy = this.buddyRequester.getLoaderProxy((BundleDescription)this.allDependents.get(i));
            if (proxy != null) {
                result = proxy.getBundleLoader().findResource(name);
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
        int size = this.allDependents.size();
        int i = 0;
        while (i < size) {
            try {
                BundleLoaderProxy proxy = this.buddyRequester.getLoaderProxy((BundleDescription)this.allDependents.get(i));
                if (proxy != null) {
                    results = BundleLoader.compoundEnumerations(results, proxy.getBundleLoader().findResources(name));
                }
            }
            catch (IOException iOException) {}
            ++i;
        }
        return results;
    }
}

