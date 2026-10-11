/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.resolver;

import java.util.Collections;
import java.util.Dictionary;
import java.util.Map;
import org.eclipse.osgi.framework.internal.core.FilterImpl;
import org.eclipse.osgi.internal.resolver.BaseDescriptionImpl;
import org.eclipse.osgi.internal.resolver.BundleDescriptionImpl;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.NativeCodeDescription;
import org.eclipse.osgi.service.resolver.State;
import org.eclipse.osgi.service.resolver.VersionRange;
import org.osgi.framework.Filter;
import org.osgi.framework.InvalidSyntaxException;
import org.osgi.framework.Version;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class NativeCodeDescriptionImpl
extends BaseDescriptionImpl
implements NativeCodeDescription {
    private static final VersionRange[] EMPTY_VERSIONRANGES = new VersionRange[0];
    private volatile Filter filter;
    private String[] languages;
    private String[] nativePaths;
    private String[] osNames;
    private VersionRange[] osVersions;
    private String[] processors;
    private BundleDescription supplier;
    private volatile boolean invalidNativePaths = false;

    @Override
    public Filter getFilter() {
        return this.filter;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public String[] getLanguages() {
        Object object = this.monitor;
        synchronized (object) {
            if (this.languages == null) {
                return BundleDescriptionImpl.EMPTY_STRING;
            }
            return this.languages;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public String[] getNativePaths() {
        Object object = this.monitor;
        synchronized (object) {
            if (this.nativePaths == null) {
                return BundleDescriptionImpl.EMPTY_STRING;
            }
            return this.nativePaths;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public String[] getOSNames() {
        Object object = this.monitor;
        synchronized (object) {
            if (this.osNames == null) {
                return BundleDescriptionImpl.EMPTY_STRING;
            }
            return this.osNames;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public VersionRange[] getOSVersions() {
        Object object = this.monitor;
        synchronized (object) {
            if (this.osVersions == null) {
                return EMPTY_VERSIONRANGES;
            }
            return this.osVersions;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public String[] getProcessors() {
        Object object = this.monitor;
        synchronized (object) {
            if (this.processors == null) {
                return BundleDescriptionImpl.EMPTY_STRING;
            }
            return this.processors;
        }
    }

    @Override
    public BundleDescription getSupplier() {
        return this.supplier;
    }

    @Override
    public int compareTo(NativeCodeDescription otherDesc) {
        Version osversion;
        State containingState = this.getSupplier().getContainingState();
        if (containingState == null) {
            return 0;
        }
        Dictionary[] platformProps = containingState.getPlatformProperties();
        try {
            osversion = Version.parseVersion((String)platformProps[0].get("org.osgi.framework.os.version"));
        }
        catch (Exception exception) {
            osversion = Version.emptyVersion;
        }
        VersionRange[] thisRanges = this.getOSVersions();
        VersionRange[] otherRanges = otherDesc.getOSVersions();
        Version thisHighest = this.getHighestVersionMatch(osversion, thisRanges);
        Version otherHighest = this.getHighestVersionMatch(osversion, otherRanges);
        if (thisHighest.compareTo(otherHighest) < 0) {
            return -1;
        }
        return (this.getLanguages().length == 0 ? 0 : 1) - (otherDesc.getLanguages().length == 0 ? 0 : 1);
    }

    @Override
    public boolean hasInvalidNativePaths() {
        return this.invalidNativePaths;
    }

    private Version getHighestVersionMatch(Version version, VersionRange[] ranges) {
        Version highest = Version.emptyVersion;
        int i = 0;
        while (i < ranges.length) {
            if (ranges[i].isIncluded(version) && highest.compareTo(ranges[i].getMinimum()) < 0) {
                highest = ranges[i].getMinimum();
            }
            ++i;
        }
        return highest;
    }

    public String toString() {
        StringBuffer sb = new StringBuffer();
        String[] paths = this.getNativePaths();
        int i = 0;
        while (i < paths.length) {
            if (i > 0) {
                sb.append("; ");
            }
            sb.append(paths[i]);
            ++i;
        }
        String[] procs = this.getProcessors();
        int i2 = 0;
        while (i2 < procs.length) {
            sb.append("; ");
            sb.append("processor");
            sb.append('=');
            sb.append(procs[i2]);
            ++i2;
        }
        String[] oses = this.getOSNames();
        int i3 = 0;
        while (i3 < oses.length) {
            sb.append("; ");
            sb.append("osname");
            sb.append('=');
            sb.append(oses[i3]);
            ++i3;
        }
        VersionRange[] osRanges = this.getOSVersions();
        int i4 = 0;
        while (i4 < osRanges.length) {
            sb.append("; ");
            sb.append("osversion");
            sb.append("=\"");
            sb.append(osRanges[i4].toString());
            sb.append('\"');
            ++i4;
        }
        String[] langs = this.getLanguages();
        int i5 = 0;
        while (i5 < langs.length) {
            sb.append("; ");
            sb.append("language");
            sb.append('=');
            sb.append(langs[i5]);
            ++i5;
        }
        Filter f = this.getFilter();
        if (f != null) {
            sb.append("; ");
            sb.append("selection-filter");
            sb.append("=\"");
            sb.append(f.toString());
            sb.append('\"');
        }
        return sb.toString();
    }

    void setInvalidNativePaths(boolean invalidNativePaths) {
        this.invalidNativePaths = invalidNativePaths;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void setOSNames(String[] osNames) {
        Object object = this.monitor;
        synchronized (object) {
            this.osNames = osNames;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void setOSVersions(VersionRange[] osVersions) {
        Object object = this.monitor;
        synchronized (object) {
            this.osVersions = osVersions;
        }
    }

    void setFilter(String filter) throws InvalidSyntaxException {
        this.filter = filter == null ? null : FilterImpl.newInstance(filter);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void setLanguages(String[] languages) {
        Object object = this.monitor;
        synchronized (object) {
            this.languages = languages;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void setNativePaths(String[] nativePaths) {
        Object object = this.monitor;
        synchronized (object) {
            this.nativePaths = nativePaths;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void setProcessors(String[] processors) {
        Object object = this.monitor;
        synchronized (object) {
            this.processors = processors;
        }
    }

    void setSupplier(BundleDescription supplier) {
        this.supplier = supplier;
    }

    @Override
    public Map<String, String> getDeclaredDirectives() {
        return Collections.EMPTY_MAP;
    }

    @Override
    public Map<String, Object> getDeclaredAttributes() {
        return Collections.EMPTY_MAP;
    }
}

