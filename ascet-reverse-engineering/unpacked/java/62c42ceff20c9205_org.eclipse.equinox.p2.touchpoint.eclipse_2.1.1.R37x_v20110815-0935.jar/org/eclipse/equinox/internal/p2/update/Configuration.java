/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.internal.p2.core.helpers.LogHelper
 *  org.eclipse.equinox.internal.p2.core.helpers.URLUtil
 *  org.eclipse.equinox.p2.core.ProvisionException
 */
package org.eclipse.equinox.internal.p2.update;

import java.io.File;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.internal.p2.core.helpers.LogHelper;
import org.eclipse.equinox.internal.p2.core.helpers.URLUtil;
import org.eclipse.equinox.internal.p2.touchpoint.eclipse.Util;
import org.eclipse.equinox.internal.p2.update.ConfigurationIO;
import org.eclipse.equinox.internal.p2.update.Site;
import org.eclipse.equinox.p2.core.ProvisionException;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class Configuration {
    private List<Site> sites = new ArrayList<Site>();
    String date;
    boolean transientProperty;
    String version;
    String shared_ur;

    public static Configuration load(File location, URL osgiInstallArea) throws ProvisionException {
        return ConfigurationIO.read(location, osgiInstallArea);
    }

    public void save(File location, URL osgiInstallArea) throws ProvisionException {
        ConfigurationIO.write(location, this, osgiInstallArea);
    }

    public String getSharedUR() {
        return this.shared_ur;
    }

    public void setSharedUR(String value) {
        this.shared_ur = value;
    }

    public List<Site> getSites() {
        return this.internalGetSites(true);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    List<Site> internalGetSites(boolean includeParent) {
        if (!includeParent) {
            return this.sites;
        }
        String shared = this.getSharedUR();
        if (shared == null) {
            return this.sites;
        }
        ArrayList<Site> result = new ArrayList<Site>(this.sites);
        try {
            Configuration parent;
            URL url = new URL(shared);
            File location = URLUtil.toFile((URL)url);
            if (location == null) {
                return result;
            }
            if (!location.isAbsolute()) {
                File eclipseHome = Util.getEclipseHome();
                if (eclipseHome == null) {
                    return null;
                }
                location = new File(eclipseHome, location.getPath());
            }
            if ((parent = Configuration.load(location, Util.getOSGiInstallArea())) == null) {
                LogHelper.log((IStatus)new Status(4, "org.eclipse.equinox.p2.touchpoint.eclipse", new StringBuffer("Unable to load parent configuration from: ").append(location).toString()));
                return result;
            }
            result.addAll(parent.getSites());
            return result;
        }
        catch (MalformedURLException e) {
            LogHelper.log((IStatus)new Status(4, "org.eclipse.equinox.p2.touchpoint.eclipse", "Error occurred while getting parent configuration location.", (Throwable)e));
            return result;
        }
        catch (ProvisionException e) {
            LogHelper.log((IStatus)new Status(4, "org.eclipse.equinox.p2.touchpoint.eclipse", new StringBuffer("Error occurred while loading parent configuratin from: ").append(shared).toString(), (Throwable)e));
        }
        return result;
    }

    public void add(Site site) {
        this.sites.add(site);
    }

    public boolean removeSite(Site site) {
        return this.sites.remove(site);
    }

    public String getDate() {
        return this.date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public void setVersion(String value) {
        this.version = value;
    }

    public String getVersion() {
        return this.version;
    }

    public void setTransient(boolean value) {
        this.transientProperty = value;
    }

    public boolean isTransient() {
        return this.transientProperty;
    }
}

