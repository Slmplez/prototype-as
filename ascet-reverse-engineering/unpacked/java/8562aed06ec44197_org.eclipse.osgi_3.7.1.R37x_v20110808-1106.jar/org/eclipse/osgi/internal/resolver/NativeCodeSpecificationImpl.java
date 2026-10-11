/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.resolver;

import java.util.Collection;
import java.util.Collections;
import java.util.Dictionary;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.osgi.framework.internal.core.AliasMapper;
import org.eclipse.osgi.internal.resolver.VersionConstraintImpl;
import org.eclipse.osgi.service.resolver.BaseDescription;
import org.eclipse.osgi.service.resolver.NativeCodeDescription;
import org.eclipse.osgi.service.resolver.NativeCodeSpecification;
import org.eclipse.osgi.service.resolver.State;
import org.eclipse.osgi.service.resolver.VersionRange;
import org.osgi.framework.Filter;
import org.osgi.framework.Version;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class NativeCodeSpecificationImpl
extends VersionConstraintImpl
implements NativeCodeSpecification {
    private static final NativeCodeDescription[] EMPTY_NATIVECODEDESCRIPTIONS = new NativeCodeDescription[0];
    private static AliasMapper aliasMapper = new AliasMapper();
    private NativeCodeDescription[] possibleSuppliers;
    private boolean optional;

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public NativeCodeDescription[] getPossibleSuppliers() {
        Object object = this.monitor;
        synchronized (object) {
            if (this.possibleSuppliers == null) {
                return EMPTY_NATIVECODEDESCRIPTIONS;
            }
            return this.possibleSuppliers;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void setPossibleSuppliers(NativeCodeDescription[] possibleSuppliers) {
        Object object = this.monitor;
        synchronized (object) {
            this.possibleSuppliers = possibleSuppliers;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public boolean isOptional() {
        Object object = this.monitor;
        synchronized (object) {
            return this.optional;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void setOptional(boolean optional) {
        Object object = this.monitor;
        synchronized (object) {
            this.optional = optional;
        }
    }

    @Override
    public boolean isSatisfiedBy(BaseDescription supplier) {
        if (!(supplier instanceof NativeCodeDescription)) {
            return false;
        }
        State containingState = this.getBundle().getContainingState();
        if (containingState == null) {
            return false;
        }
        Dictionary[] platformProps = containingState.getPlatformProperties();
        NativeCodeDescription nativeSupplier = (NativeCodeDescription)supplier;
        Filter filter = nativeSupplier.getFilter();
        boolean match = false;
        int i = 0;
        while (i < platformProps.length && !match) {
            Dictionary props = platformProps[i];
            if (filter == null || filter.matchCase(props)) {
                int j;
                String[] osNames = nativeSupplier.getOSNames();
                if (osNames.length == 0) {
                    match = true;
                } else {
                    Object[] platformOSes;
                    Object aliasedPlatformOS;
                    Object platformOS = platformProps[i].get("org.osgi.framework.os.name");
                    Object object = aliasedPlatformOS = platformOS == null || !(platformOS instanceof String) ? platformOS : aliasMapper.aliasOSName((String)platformOS);
                    if (aliasedPlatformOS instanceof Collection) {
                        platformOSes = ((Collection)aliasedPlatformOS).toArray();
                    } else {
                        Object[] objectArray;
                        if (aliasedPlatformOS == null) {
                            objectArray = new Object[]{};
                        } else {
                            Object[] objectArray2 = new Object[1];
                            objectArray = objectArray2;
                            objectArray2[0] = aliasedPlatformOS;
                        }
                        platformOSes = objectArray;
                    }
                    j = 0;
                    while (j < osNames.length && !match) {
                        Object aliasedName = aliasMapper.aliasOSName(osNames[j]);
                        int k = 0;
                        while (k < platformOSes.length) {
                            if (aliasedName instanceof String) {
                                if (platformOSes[k].equals(aliasedName)) {
                                    match = true;
                                }
                            } else {
                                Iterator iAliases = ((Collection)aliasedName).iterator();
                                while (iAliases.hasNext() && !match) {
                                    if (!platformOSes[k].equals(iAliases.next())) continue;
                                    match = true;
                                }
                            }
                            ++k;
                        }
                        ++j;
                    }
                }
                if (match) {
                    match = false;
                    String[] processors = nativeSupplier.getProcessors();
                    if (processors.length == 0) {
                        match = true;
                    } else {
                        Object aliasedPlatformProcessor;
                        Object platformProcessor = platformProps[i].get("org.osgi.framework.processor");
                        Object object = aliasedPlatformProcessor = platformProcessor == null || !(platformProcessor instanceof String) ? platformProcessor : aliasMapper.aliasProcessor((String)platformProcessor);
                        if (aliasedPlatformProcessor != null) {
                            j = 0;
                            while (j < processors.length && !match) {
                                String aliasedProcessor = aliasMapper.aliasProcessor(processors[j]);
                                if (aliasedPlatformProcessor.equals(aliasedProcessor)) {
                                    match = true;
                                }
                                ++j;
                            }
                        }
                    }
                    if (!match) {
                        return false;
                    }
                    match = false;
                    String[] languages = nativeSupplier.getLanguages();
                    if (languages.length == 0) {
                        match = true;
                    } else {
                        Object platformLanguage = platformProps[i].get("org.osgi.framework.language");
                        if (platformLanguage != null) {
                            j = 0;
                            while (j < languages.length && !match) {
                                if (platformLanguage instanceof String ? ((String)platformLanguage).equalsIgnoreCase(languages[j]) : platformLanguage.equals(languages[j])) {
                                    match = true;
                                }
                                ++j;
                            }
                        }
                    }
                    if (!match) {
                        return false;
                    }
                    match = false;
                    VersionRange[] osVersions = nativeSupplier.getOSVersions();
                    if (osVersions.length == 0 || platformProps[i].get("org.osgi.framework.os.version") == null) {
                        match = true;
                    } else {
                        Version osversion;
                        try {
                            osversion = Version.parseVersion((String)platformProps[i].get("org.osgi.framework.os.version"));
                        }
                        catch (Exception exception) {
                            osversion = Version.emptyVersion;
                        }
                        int j2 = 0;
                        while (j2 < osVersions.length && !match) {
                            if (osVersions[j2].isIncluded(osversion)) {
                                match = true;
                            }
                            ++j2;
                        }
                    }
                }
            }
            ++i;
        }
        return match;
    }

    public String toString() {
        StringBuffer sb = new StringBuffer();
        NativeCodeDescription[] suppliers = this.getPossibleSuppliers();
        int i = 0;
        while (i < suppliers.length) {
            if (i > 0) {
                sb.append(", ");
            }
            sb.append(suppliers[i].toString());
            ++i;
        }
        return sb.toString();
    }

    @Override
    protected Map<String, String> getInternalDirectives() {
        return Collections.EMPTY_MAP;
    }

    @Override
    protected Map<String, Object> getInteralAttributes() {
        return Collections.EMPTY_MAP;
    }

    @Override
    protected String getInternalNameSpace() {
        return null;
    }
}

