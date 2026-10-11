/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.service.resolver.BaseDescription
 *  org.eclipse.osgi.service.resolver.BundleDescription
 *  org.eclipse.osgi.service.resolver.BundleSpecification
 *  org.eclipse.osgi.service.resolver.ImportPackageSpecification
 *  org.eclipse.osgi.service.resolver.PlatformAdmin
 *  org.eclipse.osgi.service.resolver.ResolverError
 *  org.eclipse.osgi.service.resolver.State
 *  org.osgi.framework.Bundle
 *  org.osgi.framework.BundleContext
 *  org.osgi.framework.ServiceReference
 */
package org.eclipse.equinox.internal.simpleconfigurator.utils;

import java.util.Collection;
import java.util.HashSet;
import java.util.Set;
import org.eclipse.osgi.service.resolver.BaseDescription;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.BundleSpecification;
import org.eclipse.osgi.service.resolver.ImportPackageSpecification;
import org.eclipse.osgi.service.resolver.PlatformAdmin;
import org.eclipse.osgi.service.resolver.ResolverError;
import org.eclipse.osgi.service.resolver.State;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleContext;
import org.osgi.framework.ServiceReference;

public class StateResolverUtils {
    static /* synthetic */ Class class$0;

    public static Bundle[] getAdditionalRefresh(Collection currentResolved, BundleContext context) {
        ServiceReference ref;
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.osgi.service.resolver.PlatformAdmin");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((ref = context.getServiceReference(clazz.getName())) == null) {
            return new Bundle[0];
        }
        PlatformAdmin platformAdmin = (PlatformAdmin)context.getService(ref);
        if (platformAdmin == null) {
            return new Bundle[0];
        }
        try {
            State state = platformAdmin.getState(false);
            BundleDescription[] bundles = state.getBundles();
            HashSet results = new HashSet(bundles.length);
            StateResolverUtils.getAdditionRefresh(bundles, state, currentResolved, results, context);
            Bundle[] bundleArray = results.toArray(new Bundle[results.size()]);
            return bundleArray;
        }
        finally {
            context.ungetService(ref);
        }
    }

    private static void getAdditionRefresh(BundleDescription[] bundleDescriptions, State state, Collection currentResolved, Set results, BundleContext context) {
        int i = 0;
        while (i < bundleDescriptions.length) {
            block13: {
                Bundle bundle = context.getBundle(bundleDescriptions[i].getBundleId());
                if (bundle != null) {
                    if (!bundleDescriptions[i].isResolved() && bundleDescriptions[i].getHost() != null) {
                        ResolverError[] errors = state.getResolverErrors(bundleDescriptions[i]);
                        int j = 0;
                        while (j < errors.length) {
                            if ((errors[j].getType() & 0x10) != 0) {
                                BundleDescription[] possibleHosts = state.getBundles(bundleDescriptions[i].getHost().getName());
                                int k = 0;
                                while (k < possibleHosts.length) {
                                    Bundle hostBundle = context.getBundle(possibleHosts[k].getBundleId());
                                    if (hostBundle != null && currentResolved.contains(hostBundle) && bundleDescriptions[i].getHost().isSatisfiedBy((BaseDescription)possibleHosts[k])) {
                                        results.add(hostBundle);
                                    }
                                    ++k;
                                }
                            }
                            ++j;
                        }
                    } else if (currentResolved.contains(bundle) && bundleDescriptions[i].isResolved()) {
                        ImportPackageSpecification[] imports = bundleDescriptions[i].getImportPackages();
                        int j = 0;
                        while (j < imports.length) {
                            if ("optional".equals(imports[j].getDirective("resolution")) && !imports[j].isResolved() && state.getStateHelper().isResolvable(imports[j])) {
                                results.add(bundle);
                                break block13;
                            }
                            ++j;
                        }
                        BundleSpecification[] requires = bundleDescriptions[i].getRequiredBundles();
                        int j2 = 0;
                        while (j2 < requires.length) {
                            if (requires[j2].isOptional() && !requires[j2].isResolved() && state.getStateHelper().isResolvable(requires[j2])) {
                                results.add(bundle);
                                break;
                            }
                            ++j2;
                        }
                    }
                }
            }
            ++i;
        }
    }
}

