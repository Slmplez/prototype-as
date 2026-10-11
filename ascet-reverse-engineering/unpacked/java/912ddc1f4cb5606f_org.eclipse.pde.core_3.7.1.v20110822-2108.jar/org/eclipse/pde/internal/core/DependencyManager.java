/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.service.resolver.BundleDescription
 *  org.eclipse.osgi.service.resolver.BundleSpecification
 *  org.eclipse.osgi.service.resolver.ExportPackageDescription
 *  org.eclipse.osgi.service.resolver.HostSpecification
 *  org.eclipse.osgi.service.resolver.ImportPackageSpecification
 *  org.eclipse.osgi.service.resolver.State
 */
package org.eclipse.pde.internal.core;

import java.util.HashSet;
import java.util.Set;
import java.util.StringTokenizer;
import java.util.TreeSet;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.BundleSpecification;
import org.eclipse.osgi.service.resolver.ExportPackageDescription;
import org.eclipse.osgi.service.resolver.HostSpecification;
import org.eclipse.osgi.service.resolver.ImportPackageSpecification;
import org.eclipse.osgi.service.resolver.State;
import org.eclipse.pde.core.plugin.IPluginExtension;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.PDEPreferencesManager;
import org.eclipse.pde.internal.core.TargetPlatformHelper;

public class DependencyManager {
    public static Set getSelfAndDependencies(IPluginModelBase model, String[] excludeFragments) {
        return DependencyManager.getDependencies(new Object[]{model}, DependencyManager.getImplicitDependencies(), TargetPlatformHelper.getState(), false, true, DependencyManager.toSet(excludeFragments));
    }

    public static Set getSelfandDependencies(IPluginModelBase[] models, String[] excludeFragments) {
        return DependencyManager.getDependencies(models, DependencyManager.getImplicitDependencies(), TargetPlatformHelper.getState(), false, true, DependencyManager.toSet(excludeFragments));
    }

    public static Set getDependencies(Object[] selected, String[] implicit, State state, String[] excludeFragments) {
        return DependencyManager.getDependencies(selected, implicit, state, true, true, DependencyManager.toSet(excludeFragments));
    }

    public static Set getDependencies(Object[] selected, boolean includeOptional, String[] excludeFragments) {
        return DependencyManager.getDependencies(selected, DependencyManager.getImplicitDependencies(), TargetPlatformHelper.getState(), true, includeOptional, DependencyManager.toSet(excludeFragments));
    }

    private static Set toSet(String[] array) {
        HashSet<String> set = new HashSet<String>();
        if (array != null) {
            int i = 0;
            while (i < array.length) {
                set.add(array[i]);
                ++i;
            }
        }
        return set;
    }

    private static Set getDependencies(Object[] selected, String[] implicit, State state, boolean removeSelf, boolean includeOptional, Set excludeFragments) {
        IPluginModelBase model;
        TreeSet set = new TreeSet();
        int i = 0;
        while (i < selected.length) {
            if (selected[i] instanceof IPluginModelBase) {
                model = (IPluginModelBase)selected[i];
                DependencyManager.addBundleAndDependencies(model.getBundleDescription(), set, includeOptional, excludeFragments);
                IPluginExtension[] extensions = model.getPluginBase().getExtensions();
                int j = 0;
                while (j < extensions.length) {
                    int dot;
                    String point = extensions[j].getPoint();
                    if (point != null && (dot = point.lastIndexOf(46)) != -1) {
                        String id = point.substring(0, dot);
                        DependencyManager.addBundleAndDependencies(state.getBundle(id, null), set, includeOptional, excludeFragments);
                    }
                    ++j;
                }
            }
            ++i;
        }
        i = 0;
        while (i < implicit.length) {
            DependencyManager.addBundleAndDependencies(state.getBundle(implicit[i], null), set, includeOptional, excludeFragments);
            ++i;
        }
        if (removeSelf) {
            i = 0;
            while (i < selected.length) {
                if (selected[i] instanceof IPluginModelBase) {
                    model = (IPluginModelBase)selected[i];
                    set.remove(model.getPluginBase().getId());
                }
                ++i;
            }
        }
        return set;
    }

    private static String[] getImplicitDependencies() {
        PDEPreferencesManager preferences = PDECore.getDefault().getPreferencesManager();
        String dependencies = preferences.getString("implicit_dependencies");
        if (dependencies.length() == 0) {
            return new String[0];
        }
        StringTokenizer tokenizer = new StringTokenizer(dependencies, ",");
        String[] implicitIds = new String[tokenizer.countTokens()];
        int i = 0;
        while (i < implicitIds.length) {
            implicitIds[i] = tokenizer.nextToken();
            ++i;
        }
        return implicitIds;
    }

    private static void addBundleAndDependencies(BundleDescription desc, Set set, boolean includeOptional, Set excludeFragments) {
        if (desc != null && set.add(desc.getSymbolicName())) {
            BundleSpecification[] required = desc.getRequiredBundles();
            int i = 0;
            while (i < required.length) {
                if (includeOptional || !required[i].isOptional()) {
                    DependencyManager.addBundleAndDependencies((BundleDescription)required[i].getSupplier(), set, includeOptional, excludeFragments);
                }
                ++i;
            }
            ImportPackageSpecification[] importedPkgs = desc.getImportPackages();
            int i2 = 0;
            while (i2 < importedPkgs.length) {
                ExportPackageDescription exporter = (ExportPackageDescription)importedPkgs[i2].getSupplier();
                if (exporter != null && (includeOptional || !"optional".equals(importedPkgs[i2].getDirective("resolution")))) {
                    DependencyManager.addBundleAndDependencies(exporter.getExporter(), set, includeOptional, excludeFragments);
                }
                ++i2;
            }
            BundleDescription[] fragments = desc.getFragments();
            int i3 = 0;
            while (i3 < fragments.length) {
                String id;
                if (fragments[i3].isResolved() && !excludeFragments.contains(id = fragments[i3].getSymbolicName())) {
                    DependencyManager.addBundleAndDependencies(fragments[i3], set, includeOptional, excludeFragments);
                }
                ++i3;
            }
            HostSpecification host = desc.getHost();
            if (host != null) {
                DependencyManager.addBundleAndDependencies((BundleDescription)host.getSupplier(), set, includeOptional, excludeFragments);
            }
        }
    }
}

