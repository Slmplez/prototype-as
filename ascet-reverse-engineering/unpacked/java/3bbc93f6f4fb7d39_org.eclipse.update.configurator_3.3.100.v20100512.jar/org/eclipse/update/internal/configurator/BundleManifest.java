/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.ManifestElement
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.framework.BundleException
 */
package org.eclipse.update.internal.configurator;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.jar.Attributes;
import java.util.jar.Manifest;
import org.eclipse.osgi.util.ManifestElement;
import org.eclipse.osgi.util.NLS;
import org.eclipse.update.internal.configurator.IConfigurationConstants;
import org.eclipse.update.internal.configurator.Messages;
import org.eclipse.update.internal.configurator.PluginEntry;
import org.eclipse.update.internal.configurator.Utils;
import org.eclipse.update.internal.configurator.VersionedIdentifier;
import org.osgi.framework.BundleException;

public class BundleManifest
implements IConfigurationConstants {
    private File manifestFile;
    private PluginEntry pluginEntry;
    private IOException exception;
    private String bundleURL;

    public BundleManifest(File manifest) {
        block15: {
            this.manifestFile = manifest;
            if (manifest.exists() && !manifest.isDirectory()) {
                FileInputStream fos = null;
                try {
                    try {
                        fos = new FileInputStream(manifest);
                        this.parse(fos);
                    }
                    catch (IOException iOException) {
                        if (fos != null) {
                            try {
                                fos.close();
                            }
                            catch (IOException iOException2) {}
                        }
                        break block15;
                    }
                }
                catch (Throwable throwable) {
                    if (fos != null) {
                        try {
                            fos.close();
                        }
                        catch (IOException iOException) {}
                    }
                    throw throwable;
                }
                if (fos != null) {
                    try {
                        fos.close();
                    }
                    catch (IOException iOException) {}
                }
            }
        }
    }

    public BundleManifest(InputStream input, String bundleUrl) {
        this.bundleURL = bundleUrl;
        if (input != null) {
            this.parse(input);
        }
    }

    private void parse(InputStream in) {
        try {
            String id;
            Manifest m = new Manifest(in);
            Attributes a = m.getMainAttributes();
            String symbolicName = a.getValue("Bundle-SymbolicName");
            if (symbolicName == null) {
                return;
            }
            try {
                ManifestElement[] elements = ManifestElement.parseHeader((String)"Bundle-SymbolicName", (String)symbolicName);
                id = elements[0].getValue();
            }
            catch (BundleException be) {
                throw new IOException(be.getMessage());
            }
            String version = a.getValue("Bundle-Version");
            if (version == null) {
                Utils.log(NLS.bind((String)Messages.BundleManifest_noVersion, (Object[])new String[]{"Bundle-Version", id}));
                return;
            }
            version = version.trim();
            String hostPlugin = a.getValue("Fragment-Host");
            this.pluginEntry = new PluginEntry();
            this.pluginEntry.setVersionedIdentifier(new VersionedIdentifier(id, version));
            this.pluginEntry.isFragment(hostPlugin != null && hostPlugin.length() > 0);
            if (this.bundleURL != null) {
                this.pluginEntry.setURL(this.bundleURL);
            } else {
                File pluginDir = this.manifestFile.getParentFile();
                if (pluginDir != null) {
                    pluginDir = pluginDir.getParentFile();
                }
                if (pluginDir != null) {
                    this.pluginEntry.setURL("plugins/" + pluginDir.getName() + "/");
                }
            }
        }
        catch (IOException ioe) {
            this.exception = ioe;
        }
    }

    public boolean exists() {
        return this.exception != null || this.pluginEntry != null;
    }

    public PluginEntry getPluginEntry() throws IOException {
        if (this.exception != null) {
            throw this.exception;
        }
        return this.pluginEntry;
    }
}

