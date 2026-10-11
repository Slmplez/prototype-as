/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.URIUtil
 *  org.eclipse.equinox.internal.p2.core.helpers.LogHelper
 *  org.eclipse.equinox.internal.p2.core.helpers.URLUtil
 *  org.eclipse.equinox.p2.core.ProvisionException
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.p2.update;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.URIUtil;
import org.eclipse.equinox.internal.p2.core.helpers.LogHelper;
import org.eclipse.equinox.internal.p2.core.helpers.URLUtil;
import org.eclipse.equinox.internal.p2.update.Configuration;
import org.eclipse.equinox.internal.p2.update.ConfigurationCache;
import org.eclipse.equinox.internal.p2.update.ConfigurationConstants;
import org.eclipse.equinox.internal.p2.update.Feature;
import org.eclipse.equinox.internal.p2.update.Messages;
import org.eclipse.equinox.internal.p2.update.PathUtil;
import org.eclipse.equinox.internal.p2.update.Site;
import org.eclipse.equinox.internal.p2.update.XMLWriter;
import org.eclipse.equinox.p2.core.ProvisionException;
import org.eclipse.osgi.util.NLS;

public class ConfigurationWriter
implements ConfigurationConstants {
    static void save(Configuration configuration, File location, URL osgiInstallArea) throws ProvisionException {
        PrintWriter writer = null;
        try {
            try {
                BufferedOutputStream output = new BufferedOutputStream(new FileOutputStream(location));
                writer = new XMLWriter(output);
                HashMap<String, String> args = new HashMap<String, String>();
                args.put("date", Long.toString(new Date().getTime()));
                String value = configuration.getSharedUR();
                if (value != null) {
                    args.put("shared_ur", value);
                }
                if ((value = configuration.getVersion()) != null) {
                    args.put("version", value);
                }
                args.put("transient", Boolean.toString(configuration.isTransient()));
                ((XMLWriter)writer).startTag("config", args);
                Iterator<Site> iterator = configuration.internalGetSites(false).iterator();
                while (iterator.hasNext()) {
                    Site site = iterator.next();
                    ConfigurationWriter.write((XMLWriter)writer, site, osgiInstallArea);
                }
                ((XMLWriter)writer).endTag("config");
            }
            catch (UnsupportedEncodingException e) {
                throw new ProvisionException(NLS.bind((String)Messages.error_saving_config, (Object)location), (Throwable)e);
            }
            catch (FileNotFoundException e) {
                throw new ProvisionException(NLS.bind((String)Messages.error_saving_config, (Object)location), (Throwable)e);
            }
        }
        finally {
            if (writer != null) {
                writer.flush();
                writer.close();
            }
        }
        ConfigurationCache.put(location, configuration);
    }

    private static void write(XMLWriter writer, Site site, URL osgiInstallArea) {
        HashMap<String, String> args = new HashMap<String, String>();
        String value = site.getLinkFile();
        if (value != null) {
            args.put("linkfile", value);
        }
        if ((value = site.getPolicy()) != null) {
            args.put("policy", value);
        }
        if ((value = site.getUrl()) != null) {
            try {
                value = URIUtil.toUnencodedString((URI)new URI(value));
            }
            catch (URISyntaxException uRISyntaxException) {}
            args.put("url", ConfigurationWriter.getLocation(value, osgiInstallArea));
        }
        if ((value = ConfigurationWriter.toString(site.getList())) != null) {
            args.put("list", value);
        }
        args.put("updateable", Boolean.toString(site.isUpdateable()));
        args.put("enabled", Boolean.toString(site.isEnabled()));
        writer.startTag("site", args);
        ConfigurationWriter.write(writer, site.getFeatures());
        writer.endTag("site");
    }

    private static String getLocation(String value, URL osgiInstallArea) {
        if (osgiInstallArea == null || !value.startsWith("file:")) {
            return value;
        }
        try {
            File installArea = URLUtil.toFile((URL)osgiInstallArea);
            File path = URLUtil.toFile((URL)new URL(value));
            if (installArea.getAbsoluteFile().equals(path.getAbsoluteFile())) {
                return "platform:/base/";
            }
        }
        catch (MalformedURLException e) {
            LogHelper.log((IStatus)new Status(4, "org.eclipse.equinox.p2.touchpoint.eclipse", "Error occurred while writing configuration.", (Throwable)e));
        }
        return PathUtil.makeRelative(value, osgiInstallArea);
    }

    private static String toString(Object[] list) {
        if (list == null || list.length == 0) {
            return null;
        }
        StringBuffer buffer = new StringBuffer();
        int i = 0;
        while (i < list.length) {
            buffer.append(list[i].toString());
            if (i + 1 < list.length) {
                buffer.append(',');
            }
            ++i;
        }
        return buffer.toString();
    }

    private static void write(XMLWriter writer, Feature[] features) {
        if (features == null || features.length == 0) {
            return;
        }
        int i = 0;
        while (i < features.length) {
            Object[] roots;
            Feature feature = features[i];
            HashMap<String, String> args = new HashMap<String, String>();
            String value = feature.getId();
            if (value != null) {
                args.put("id", value);
            }
            if ((value = feature.getUrl()) != null) {
                args.put("url", value);
            }
            if ((value = feature.getVersion()) != null) {
                args.put("version", value);
            }
            if ((value = feature.getPluginIdentifier()) != null && !value.equals(feature.getId())) {
                args.put("plugin-identifier", value);
            }
            if ((value = feature.getPluginVersion()) != null && !value.equals(feature.getVersion())) {
                args.put("plugin-version", value);
            }
            if (feature.isPrimary()) {
                args.put("primary", "true");
            }
            if ((value = feature.getApplication()) != null) {
                args.put("application", value);
            }
            if ((roots = feature.getRoots()) != null && roots.length > 0) {
                args.put("root", ConfigurationWriter.toString(roots));
            }
            writer.startTag("feature", args);
            writer.endTag("feature");
            ++i;
        }
    }
}

