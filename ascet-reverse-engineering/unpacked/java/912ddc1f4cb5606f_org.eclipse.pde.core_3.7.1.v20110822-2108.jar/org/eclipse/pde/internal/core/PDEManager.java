/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.osgi.service.resolver.BundleDescription
 *  org.eclipse.osgi.service.resolver.HostSpecification
 */
package org.eclipse.pde.internal.core;

import java.net.URL;
import java.util.ArrayList;
import org.eclipse.core.resources.IProject;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.HostSpecification;
import org.eclipse.pde.core.plugin.IFragmentModel;
import org.eclipse.pde.core.plugin.IPluginModel;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.core.plugin.PluginRegistry;
import org.eclipse.pde.internal.core.ibundle.IBundlePluginModelBase;
import org.eclipse.pde.internal.core.plugin.ExternalPluginModelBase;

public class PDEManager {
    public static IFragmentModel[] findFragmentsFor(IPluginModelBase model) {
        ArrayList<IPluginModelBase> result = new ArrayList<IPluginModelBase>();
        BundleDescription desc = PDEManager.getBundleDescription(model);
        if (desc != null) {
            BundleDescription[] fragments = desc.getFragments();
            int i = 0;
            while (i < fragments.length) {
                IPluginModelBase candidate = PluginRegistry.findModel(fragments[i]);
                if (candidate instanceof IFragmentModel) {
                    result.add(candidate);
                }
                ++i;
            }
        }
        return result.toArray(new IFragmentModel[result.size()]);
    }

    public static IPluginModel findHostFor(IFragmentModel fragment) {
        IPluginModelBase host;
        HostSpecification spec;
        BundleDescription desc = PDEManager.getBundleDescription(fragment);
        if (desc != null && (spec = desc.getHost()) != null && (host = PluginRegistry.findModel(spec.getName())) instanceof IPluginModel) {
            return (IPluginModel)host;
        }
        return null;
    }

    private static BundleDescription getBundleDescription(IPluginModelBase model) {
        IProject project;
        IPluginModelBase coreModel;
        BundleDescription desc = model.getBundleDescription();
        if (desc == null && model.getUnderlyingResource() != null && (coreModel = PluginRegistry.findModel(project = model.getUnderlyingResource().getProject())) != null) {
            desc = coreModel.getBundleDescription();
        }
        return desc;
    }

    public static URL[] getNLLookupLocations(IPluginModelBase model) {
        IPluginModel host;
        ArrayList urls = new ArrayList();
        PDEManager.addNLLocation(model, urls);
        if (model instanceof IPluginModel) {
            IFragmentModel[] fragments = PDEManager.findFragmentsFor(model);
            int i = 0;
            while (i < fragments.length) {
                PDEManager.addNLLocation(fragments[i], urls);
                ++i;
            }
        } else if (model instanceof IFragmentModel && (host = PDEManager.findHostFor((IFragmentModel)model)) != null) {
            PDEManager.addNLLocation(host, urls);
        }
        return urls.toArray(new URL[urls.size()]);
    }

    private static void addNLLocation(IPluginModelBase model, ArrayList urls) {
        URL location = model.getNLLookupLocation();
        if (location != null) {
            urls.add(location);
        }
    }

    public static String getBundleLocalization(IPluginModelBase model) {
        if (model instanceof IBundlePluginModelBase && model.getUnderlyingResource() != null) {
            return ((IBundlePluginModelBase)model).getBundleLocalization();
        }
        if (model instanceof ExternalPluginModelBase) {
            return ((ExternalPluginModelBase)model).getLocalization();
        }
        return "OSGI-INF/l10n/bundle";
    }
}

