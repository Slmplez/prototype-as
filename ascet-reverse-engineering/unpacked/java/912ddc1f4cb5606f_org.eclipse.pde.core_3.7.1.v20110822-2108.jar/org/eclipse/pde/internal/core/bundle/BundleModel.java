/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.service.resolver.BundleDescription
 *  org.eclipse.osgi.service.resolver.HostSpecification
 *  org.eclipse.osgi.util.ManifestElement
 *  org.osgi.framework.BundleException
 */
package org.eclipse.pde.internal.core.bundle;

import java.io.IOException;
import java.io.InputStream;
import java.util.Map;
import java.util.Properties;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.HostSpecification;
import org.eclipse.osgi.util.ManifestElement;
import org.eclipse.pde.core.ModelChangedEvent;
import org.eclipse.pde.internal.core.AbstractModel;
import org.eclipse.pde.internal.core.PDEState;
import org.eclipse.pde.internal.core.bundle.Bundle;
import org.eclipse.pde.internal.core.ibundle.IBundle;
import org.eclipse.pde.internal.core.ibundle.IBundleModel;
import org.eclipse.pde.internal.core.ibundle.IManifestHeader;
import org.eclipse.pde.internal.core.text.bundle.BundleModelFactory;
import org.osgi.framework.BundleException;

public abstract class BundleModel
extends AbstractModel
implements IBundleModel {
    private static final long serialVersionUID = 1L;
    private Bundle fBundle = new Bundle();

    public BundleModel() {
        this.fBundle.setModel(this);
    }

    public IBundle getBundle() {
        if (!this.isLoaded()) {
            this.load();
        }
        return this.fBundle;
    }

    public String getInstallLocation() {
        return null;
    }

    public abstract void load();

    public boolean isFragmentModel() {
        return this.fBundle.getHeader("Fragment-Host") != null;
    }

    public void load(InputStream source, boolean outOfSync) {
        try {
            this.fBundle.load(ManifestElement.parseBundleManifest((InputStream)source, null));
            if (!outOfSync) {
                this.updateTimeStamp();
            }
            this.setLoaded(true);
            BundleModelFactory factory = new BundleModelFactory(this);
            Map headers = this.fBundle.getHeaders();
            Object[] keys = headers.keySet().toArray();
            int i = 0;
            while (i < keys.length) {
                String key = (String)keys[i];
                String value = (String)headers.get(key);
                IManifestHeader header = factory.createHeader(key, value);
                header.update();
                String formatted = header.getValue();
                if (formatted != null && formatted.trim().length() > 0) {
                    this.fBundle.setHeader(key, formatted);
                }
                ++i;
            }
        }
        catch (BundleException bundleException) {
        }
        catch (IOException iOException) {}
    }

    public void load(BundleDescription desc, PDEState state) {
        String[] libraries;
        long id = desc.getBundleId();
        Properties properties = new Properties();
        properties.put("Bundle-SymbolicName", desc.getSymbolicName());
        String value = state.getPluginName(id);
        if (value != null) {
            properties.put("Bundle-Name", value);
        }
        if ((value = state.getProviderName(id)) != null) {
            properties.put("Bundle-Vendor", value);
        }
        if ((value = state.getClassName(id)) != null) {
            properties.put("Bundle-Activator", value);
        }
        if ((value = state.getBundleLocalization(id)) != null) {
            properties.put("Bundle-Localization", value);
        }
        if (state.hasExtensibleAPI(id)) {
            properties.put("Eclipse-ExtensibleAPI", "true");
        }
        if (state.isPatchFragment(id)) {
            properties.put("Eclipse-PatchFragment", "true");
        }
        if ((libraries = state.getLibraryNames(id)).length > 0) {
            StringBuffer buffer = new StringBuffer();
            int i = 0;
            while (i < libraries.length) {
                if (buffer.length() > 0) {
                    buffer.append(",");
                    buffer.append(System.getProperty("line.separator"));
                    buffer.append(" ");
                }
                buffer.append(libraries[i]);
                ++i;
            }
            properties.put("Bundle-ClassPath", buffer.toString());
        }
        if (desc.getHost() != null) {
            properties.put("Fragment-Host", this.writeFragmentHost(desc.getHost()));
        }
        this.fBundle.load(properties);
        this.updateTimeStamp();
        this.setLoaded(true);
    }

    private String writeFragmentHost(HostSpecification host) {
        String id = host.getName();
        String version = host.getVersionRange().toString();
        StringBuffer buffer = new StringBuffer();
        if (id != null) {
            buffer.append(id);
        }
        if (version != null && version.trim().length() > 0) {
            buffer.append(";bundle-version=\"" + version + "\"");
        }
        return buffer.toString();
    }

    public void reload(InputStream source, boolean outOfSync) {
        this.load(source, outOfSync);
        this.fireModelChanged(new ModelChangedEvent(this, 99, new Object[0], null));
    }
}

