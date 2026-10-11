/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.osgi.service.resolver.VersionRange
 *  org.eclipse.osgi.util.ManifestElement
 *  org.osgi.framework.BundleException
 */
package org.eclipse.pde.internal.core.bundle;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.osgi.service.resolver.VersionRange;
import org.eclipse.osgi.util.ManifestElement;
import org.eclipse.pde.internal.core.bundle.BundlePluginBase;
import org.eclipse.pde.internal.core.ibundle.IBundle;
import org.eclipse.pde.internal.core.ibundle.IBundleFragment;
import org.eclipse.pde.internal.core.ibundle.IManifestHeader;
import org.eclipse.pde.internal.core.plugin.PluginBase;
import org.eclipse.pde.internal.core.text.bundle.FragmentHostHeader;
import org.osgi.framework.BundleException;

public class BundleFragment
extends BundlePluginBase
implements IBundleFragment {
    private static final long serialVersionUID = 1L;

    public String getPluginId() {
        return this.getValue("Fragment-Host", true);
    }

    public String getPluginVersion() {
        String version = this.getAttribute("Fragment-Host", "bundle-version");
        try {
            VersionRange versionRange = new VersionRange(version);
            if (versionRange != null) {
                return versionRange.getMinimum() != null ? versionRange.getMinimum().toString() : version;
            }
        }
        catch (NumberFormatException numberFormatException) {
        }
        catch (IllegalArgumentException illegalArgumentException) {}
        return version;
    }

    public int getRule() {
        String version = this.getAttribute("Fragment-Host", "bundle-version");
        VersionRange versionRange = new VersionRange(version);
        return PluginBase.getMatchRule(versionRange);
    }

    public void setPluginId(String id) throws CoreException {
        IBundle bundle = this.getBundle();
        if (bundle != null) {
            String oldValue = this.getPluginId();
            IManifestHeader header = this.getManifestHeader("Fragment-Host");
            if (header instanceof FragmentHostHeader) {
                ((FragmentHostHeader)header).setHostId(id);
            } else {
                bundle.setHeader("Fragment-Host", this.writeFragmentHost(id, this.getPluginVersion()));
            }
            this.model.fireModelObjectChanged(this, "plugin-id", oldValue, id);
        }
    }

    public void setPluginVersion(String version) throws CoreException {
        IBundle bundle = this.getBundle();
        if (bundle != null) {
            String oldValue = this.getPluginVersion();
            IManifestHeader header = this.getManifestHeader("Fragment-Host");
            if (header instanceof FragmentHostHeader) {
                ((FragmentHostHeader)header).setHostRange(version);
            } else {
                bundle.setHeader("Fragment-Host", this.writeFragmentHost(this.getPluginId(), version));
            }
            this.model.fireModelObjectChanged(this, "plugin-version", oldValue, version);
        }
    }

    public void setRule(int rule) throws CoreException {
    }

    private String writeFragmentHost(String id, String version) {
        StringBuffer buffer = new StringBuffer();
        if (id != null) {
            buffer.append(id);
        }
        if (version != null && version.trim().length() > 0) {
            buffer.append(";bundle-version=\"" + version.trim() + "\"");
        }
        return buffer.toString();
    }

    private String getAttribute(String key, String attribute) {
        IBundle bundle = this.getBundle();
        if (bundle == null) {
            return null;
        }
        String value = bundle.getHeader(key);
        if (value == null) {
            return null;
        }
        try {
            ManifestElement[] elements = ManifestElement.parseHeader((String)key, (String)value);
            if (elements.length > 0) {
                return elements[0].getAttribute(attribute);
            }
        }
        catch (BundleException bundleException) {}
        return null;
    }

    public boolean isPatch() {
        return "true".equals(this.getValue("Eclipse-PatchFragment", false));
    }
}

