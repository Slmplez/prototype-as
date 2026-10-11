/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.p2.publisher.eclipse.Feature
 *  org.eclipse.equinox.p2.publisher.eclipse.FeatureEntry
 *  org.eclipse.equinox.p2.publisher.eclipse.URLEntry
 *  org.eclipse.osgi.service.resolver.BundleDescription
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.pde.internal.build;

import java.io.IOException;
import java.io.OutputStream;
import java.util.LinkedHashMap;
import java.util.Map;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.p2.publisher.eclipse.Feature;
import org.eclipse.equinox.p2.publisher.eclipse.FeatureEntry;
import org.eclipse.equinox.p2.publisher.eclipse.URLEntry;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.internal.build.IPDEBuildConstants;
import org.eclipse.pde.internal.build.Messages;
import org.eclipse.pde.internal.build.XMLWriter;
import org.eclipse.pde.internal.build.site.BuildTimeFeature;
import org.eclipse.pde.internal.build.site.BuildTimeSite;

public class FeatureWriter
extends XMLWriter
implements IPDEBuildConstants {
    protected Feature feature;
    private final BuildTimeSite site;
    private final Map parameters = new LinkedHashMap(10);

    public FeatureWriter(OutputStream out, Feature feature, BuildTimeSite site) throws IOException {
        super(out);
        this.feature = feature;
        this.site = site;
    }

    public void printFeature() throws CoreException {
        this.printFeatureDeclaration();
        this.printInstallHandler();
        this.printDescription();
        this.printCopyright();
        this.printLicense();
        this.printURL();
        this.printIncludes();
        this.printRequires();
        this.printPlugins();
        this.printData();
        this.endTag("feature");
        super.close();
    }

    public void printFeatureDeclaration() {
        this.parameters.clear();
        this.parameters.put("id", this.feature.getId());
        this.parameters.put("version", this.feature.getVersion());
        this.parameters.put("label", this.feature.getLabel());
        if (this.feature.getLicenseFeature() != null) {
            this.parameters.put("license-feature", this.feature.getLicenseFeature());
            this.parameters.put("license-feature-version", this.feature.getLicenseFeatureVersion());
        }
        this.parameters.put("provider-name", this.feature.getProviderName());
        this.parameters.put("image", this.feature.getImage());
        this.parameters.put("os", this.feature.getOS());
        this.parameters.put("arch", this.feature.getArch());
        this.parameters.put("ws", this.feature.getWS());
        this.parameters.put("nl", this.feature.getNL());
        this.startTag("feature", this.parameters, true);
    }

    public void printInstallHandler() {
        String url = this.feature.getInstallHandlerURL();
        String library = this.feature.getInstallHandlerLibrary();
        String handler = this.feature.getInstallHandler();
        if (url == null && library == null && handler == null) {
            return;
        }
        this.parameters.clear();
        this.parameters.put("library", library);
        this.parameters.put("handler", handler);
        this.parameters.put("url", url);
        this.startTag("install-handler", this.parameters);
        this.endTag("install-handler");
    }

    public void printDescription() {
        if (this.feature.getDescription() == null && this.feature.getDescriptionURL() == null) {
            return;
        }
        this.parameters.clear();
        this.parameters.put("url", this.feature.getDescriptionURL());
        this.startTag("description", this.parameters, true);
        this.printTabulation();
        this.printlnEscaped(this.feature.getDescription());
        this.endTag("description");
    }

    private void printCopyright() {
        if (this.feature.getCopyright() == null && this.feature.getCopyrightURL() == null) {
            return;
        }
        this.parameters.clear();
        this.parameters.put("url", this.feature.getCopyrightURL());
        this.startTag("copyright", this.parameters, true);
        this.printTabulation();
        this.printlnEscaped(this.feature.getCopyright());
        this.endTag("copyright");
    }

    public void printLicense() {
        if (this.feature.getLicense() == null && this.feature.getLicenseURL() == null) {
            return;
        }
        this.parameters.clear();
        this.parameters.put("url", this.feature.getLicenseURL());
        this.startTag("license", this.parameters, true);
        this.printTabulation();
        this.printlnEscaped(this.feature.getLicense());
        this.endTag("license");
    }

    public void printURL() {
        String updateSiteLabel = this.feature.getUpdateSiteLabel();
        String updateSiteURL = this.feature.getUpdateSiteURL();
        URLEntry[] siteEntries = this.feature.getDiscoverySites();
        if (updateSiteLabel != null || updateSiteURL != null || siteEntries.length != 0) {
            this.parameters.clear();
            this.startTag("url", null);
            if (updateSiteLabel != null && updateSiteURL != null) {
                this.parameters.clear();
                this.parameters.put("url", updateSiteURL);
                this.parameters.put("label", updateSiteLabel);
                this.printTag("update", this.parameters, true, true, true);
            }
            int i = 0;
            while (i < siteEntries.length) {
                this.parameters.clear();
                this.parameters.put("url", siteEntries[i].getURL());
                this.parameters.put("label", siteEntries[i].getAnnotation());
                this.printTag("discovery", this.parameters, true, true, true);
                ++i;
            }
            this.endTag("url");
        }
    }

    public void printIncludes() throws CoreException {
        FeatureEntry[] entries = this.feature.getEntries();
        int i = 0;
        while (i < entries.length) {
            if (!entries[i].isRequires() && !entries[i].isPlugin()) {
                this.parameters.clear();
                try {
                    this.parameters.put("id", entries[i].getId());
                    BuildTimeFeature tmpFeature = this.site.findFeature(entries[i].getId(), (String)null, true);
                    this.parameters.put("version", tmpFeature.getVersion());
                }
                catch (CoreException coreException) {
                    String message = NLS.bind((String)Messages.exception_missingFeature, (Object)entries[i].getId());
                    throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 1, message, null));
                }
                this.printTag("includes", this.parameters, true, true, true);
            }
            ++i;
        }
    }

    private void printRequires() {
        boolean haveRequires = false;
        FeatureEntry[] entries = this.feature.getEntries();
        int i = 0;
        while (i < entries.length) {
            if (entries[i].isRequires()) {
                if (!haveRequires) {
                    this.startTag("requires", null);
                    haveRequires = true;
                }
                this.parameters.clear();
                if (entries[i].isPlugin()) {
                    this.parameters.put("plugin", entries[i].getId());
                    this.parameters.put("version", entries[i].getVersion());
                } else {
                    this.parameters.put("feature", entries[i].getId());
                    this.parameters.put("version", entries[i].getVersion());
                }
                this.parameters.put("match", entries[i].getMatch());
                this.printTag("import", this.parameters, true, true, true);
            }
            ++i;
        }
        if (haveRequires) {
            this.endTag("requires");
        }
    }

    public void printPlugins() throws CoreException {
        FeatureEntry[] entries = this.feature.getEntries();
        int i = 0;
        while (i < entries.length) {
            if (!entries[i].isRequires() && entries[i].isPlugin()) {
                this.parameters.clear();
                this.parameters.put("id", entries[i].getId());
                String versionRequested = entries[i].getVersion();
                BundleDescription effectivePlugin = null;
                try {
                    effectivePlugin = this.site.getRegistry().getResolvedBundle(entries[i].getId(), versionRequested);
                }
                catch (CoreException coreException) {
                    String message = NLS.bind((String)Messages.exception_missingPlugin, (Object)(String.valueOf(entries[i].getId()) + "_" + entries[i].getVersion()));
                    throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 5, message, null));
                }
                if (effectivePlugin == null) {
                    String message = NLS.bind((String)Messages.exception_missingPlugin, (Object)(String.valueOf(entries[i].getId()) + "_" + entries[i].getVersion()));
                    throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 5, message, null));
                }
                this.parameters.put("version", effectivePlugin.getVersion());
                if (entries[i].isFragment()) {
                    this.parameters.put("fragment", new Boolean(entries[i].isFragment()));
                }
                this.parameters.put("os", entries[i].getOS());
                this.parameters.put("arch", entries[i].getArch());
                this.parameters.put("ws", entries[i].getWS());
                this.parameters.put("nl", entries[i].getNL());
                if (!entries[i].isUnpack()) {
                    this.parameters.put("unpack", Boolean.FALSE.toString());
                }
                this.printTag("plugin", this.parameters, true, true, true);
            }
            ++i;
        }
    }

    private void printData() {
    }
}

