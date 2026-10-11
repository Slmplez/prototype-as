/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.FileLocator
 *  org.eclipse.core.runtime.ILog
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.equinox.p2.core.IProvisioningAgent
 *  org.eclipse.equinox.p2.core.IProvisioningAgentProvider
 *  org.eclipse.equinox.p2.core.ProvisionException
 *  org.eclipse.osgi.service.resolver.BundleDescription
 *  org.eclipse.osgi.service.resolver.NativeCodeDescription
 *  org.eclipse.osgi.service.resolver.NativeCodeSpecification
 *  org.eclipse.pde.internal.publishing.Utils
 *  org.osgi.framework.Bundle
 *  org.osgi.framework.BundleContext
 *  org.osgi.framework.Filter
 *  org.osgi.framework.InvalidSyntaxException
 *  org.osgi.framework.ServiceReference
 */
package org.eclipse.pde.internal.build;

import java.io.IOException;
import java.io.InputStream;
import java.net.URI;
import java.net.URL;
import java.util.ArrayList;
import java.util.Dictionary;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.runtime.FileLocator;
import org.eclipse.core.runtime.ILog;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Platform;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.eclipse.equinox.p2.core.IProvisioningAgentProvider;
import org.eclipse.equinox.p2.core.ProvisionException;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.NativeCodeDescription;
import org.eclipse.osgi.service.resolver.NativeCodeSpecification;
import org.eclipse.pde.internal.build.AntLogAdapter;
import org.eclipse.pde.internal.publishing.Utils;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleContext;
import org.osgi.framework.Filter;
import org.osgi.framework.InvalidSyntaxException;
import org.osgi.framework.ServiceReference;

public class BundleHelper {
    private Bundle bundle;
    private BundleContext context;
    private static BundleHelper defaultInstance;
    private boolean debug = false;
    private ILog log = null;

    public static BundleHelper getDefault() {
        return defaultInstance;
    }

    static void close() {
        if (defaultInstance != null) {
            BundleHelper.defaultInstance.context = null;
            BundleHelper.defaultInstance.bundle = null;
            defaultInstance = null;
        }
    }

    BundleHelper(BundleContext context) throws RuntimeException {
        if (defaultInstance != null) {
            throw new RuntimeException("Can not instantiate bundle helper");
        }
        this.context = context;
        defaultInstance = this;
        this.bundle = context.getBundle();
        this.debug = "true".equalsIgnoreCase(Platform.getDebugOption((String)"org.eclipse.pde.build/debug"));
    }

    public final URL find(IPath path) {
        return FileLocator.find((Bundle)this.bundle, (IPath)path, null);
    }

    public final URL find(IPath path, Map override) {
        return FileLocator.find((Bundle)this.bundle, (IPath)path, (Map)override);
    }

    public final ILog getLog() {
        if (this.log == null) {
            return Platform.getLog((Bundle)this.bundle);
        }
        return this.log;
    }

    public final IPath getStateLocation() throws IllegalStateException {
        return Platform.getStateLocation((Bundle)BundleHelper.getDefault().bundle);
    }

    public final InputStream openStream(IPath file) throws IOException {
        return FileLocator.openStream((Bundle)this.bundle, (IPath)file, (boolean)false);
    }

    public final InputStream openStream(IPath file, boolean localized) throws IOException {
        return FileLocator.openStream((Bundle)this.bundle, (IPath)file, (boolean)localized);
    }

    public String toString() {
        return this.bundle.getSymbolicName();
    }

    public Bundle getBundle() {
        return this.bundle;
    }

    public IProvisioningAgent getProvisioningAgent(URI location) {
        String filter = "(locationURI=" + String.valueOf(location) + ")";
        ServiceReference[] serviceReferences = null;
        try {
            serviceReferences = this.context.getServiceReferences(IProvisioningAgent.SERVICE_NAME, filter);
            if (serviceReferences != null) {
                IProvisioningAgent iProvisioningAgent = (IProvisioningAgent)this.context.getService(serviceReferences[0]);
                return iProvisioningAgent;
            }
        }
        catch (InvalidSyntaxException invalidSyntaxException) {
        }
        finally {
            if (serviceReferences != null) {
                this.context.ungetService(serviceReferences[0]);
            }
        }
        IProvisioningAgentProvider provider = (IProvisioningAgentProvider)this.acquireService(IProvisioningAgentProvider.SERVICE_NAME);
        try {
            return provider.createAgent(location);
        }
        catch (ProvisionException provisionException) {
            return null;
        }
    }

    public Object acquireService(String serviceName) {
        ServiceReference reference = this.context.getServiceReference(serviceName);
        if (reference == null) {
            return null;
        }
        return this.context.getService(reference);
    }

    public boolean isDebugging() {
        return this.debug;
    }

    public Filter createFilter(String filter) {
        try {
            return this.context.createFilter(filter);
        }
        catch (InvalidSyntaxException invalidSyntaxException) {
            return null;
        }
    }

    public Filter getFilter(BundleDescription bundleDescription) {
        if (bundleDescription == null) {
            return null;
        }
        String platformFilter = bundleDescription.getPlatformFilter();
        String nativeFilter = null;
        NativeCodeSpecification nativeCodeSpec = bundleDescription.getNativeCodeSpecification();
        if (nativeCodeSpec != null) {
            NativeCodeDescription[] possibleSuppliers = nativeCodeSpec.getPossibleSuppliers();
            ArrayList<Filter> supplierFilters = new ArrayList<Filter>(possibleSuppliers.length);
            int i = 0;
            while (i < possibleSuppliers.length) {
                if (possibleSuppliers[i].getFilter() != null) {
                    supplierFilters.add(possibleSuppliers[i].getFilter());
                }
                ++i;
            }
            if (supplierFilters.size() == 1) {
                nativeFilter = supplierFilters.get(0).toString();
            } else if (supplierFilters.size() > 1) {
                StringBuffer buffer = new StringBuffer("(|");
                Iterator iterator = supplierFilters.iterator();
                while (iterator.hasNext()) {
                    Filter filter = (Filter)iterator.next();
                    buffer.append(filter.toString());
                }
                buffer.append(")");
                nativeFilter = buffer.toString();
            }
        }
        String filterString = null;
        if (platformFilter != null && nativeFilter != null) {
            filterString = "(&" + platformFilter + nativeFilter + ")";
        } else {
            String string = filterString = platformFilter != null ? platformFilter : nativeFilter;
        }
        if (filterString != null) {
            return this.createFilter(filterString);
        }
        return null;
    }

    public void setLog(Object antLog) {
        if (antLog == null) {
            this.log = null;
            return;
        }
        try {
            this.log = new AntLogAdapter(antLog);
        }
        catch (NoSuchMethodException noSuchMethodException) {
            this.log = null;
        }
    }

    public static String[] getClasspath(Dictionary manifest) {
        return Utils.getBundleClasspath((Dictionary)manifest);
    }

    public static String getManifestHeader(Dictionary manifest, String header) {
        return Utils.getBundleManifestHeader((Dictionary)manifest, (String)header);
    }
}

