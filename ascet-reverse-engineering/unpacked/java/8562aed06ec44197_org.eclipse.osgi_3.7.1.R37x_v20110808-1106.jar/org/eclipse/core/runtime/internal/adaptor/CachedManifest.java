/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.runtime.internal.adaptor;

import java.util.Dictionary;
import java.util.Enumeration;
import org.eclipse.core.runtime.internal.adaptor.EclipseAdaptorMsg;
import org.eclipse.core.runtime.internal.adaptor.EclipseStorageHook;
import org.eclipse.osgi.framework.log.FrameworkLogEntry;
import org.eclipse.osgi.framework.util.Headers;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.BundleException;
import org.osgi.framework.Version;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class CachedManifest
extends Dictionary<String, String> {
    static final String SERVICE_COMPONENT = "Service-Component";
    static boolean DEBUG = false;
    private Dictionary<String, String> manifest = null;
    private EclipseStorageHook storageHook;

    public CachedManifest(EclipseStorageHook storageHook) {
        this.storageHook = storageHook;
    }

    public Dictionary<String, String> getManifest() {
        if (this.manifest == null) {
            try {
                if (DEBUG) {
                    System.out.println(new StringBuffer("Reading manifest for: ").append(this.storageHook.getBaseData()).toString());
                }
                this.manifest = this.storageHook.createCachedManifest(true);
            }
            catch (BundleException e) {
                String message = NLS.bind(EclipseAdaptorMsg.ECLIPSE_CACHEDMANIFEST_UNEXPECTED_EXCEPTION, this.storageHook.getBaseData().getLocation());
                FrameworkLogEntry entry = new FrameworkLogEntry("org.eclipse.osgi", 4, 0, message, 0, e, null);
                this.storageHook.getAdaptor().getFrameworkLog().log(entry);
            }
        }
        if (this.manifest == null) {
            Headers<String, String> empty = new Headers<String, String>(0);
            empty.setReadOnly();
            this.manifest = empty;
            return empty;
        }
        return this.manifest;
    }

    @Override
    public int size() {
        return this.getManifest().size();
    }

    @Override
    public boolean isEmpty() {
        return this.size() == 0;
    }

    @Override
    public Enumeration<String> elements() {
        return this.getManifest().elements();
    }

    @Override
    public Enumeration<String> keys() {
        return this.getManifest().keys();
    }

    @Override
    public String get(Object key) {
        Object result;
        if (this.manifest != null) {
            return this.manifest.get(key);
        }
        String keyString = (String)key;
        if ("Bundle-Version".equalsIgnoreCase(keyString)) {
            Version result2 = this.storageHook.getBaseData().getVersion();
            return result2 == null ? null : result2.toString();
        }
        if ("Plugin-Class".equalsIgnoreCase(keyString)) {
            return this.storageHook.getPluginClass();
        }
        if ("Bundle-SymbolicName".equalsIgnoreCase(keyString)) {
            if ((this.storageHook.getBaseData().getType() & 8) == 0) {
                return this.storageHook.getBaseData().getSymbolicName();
            }
            return new StringBuffer(String.valueOf(this.storageHook.getBaseData().getSymbolicName())).append(';').append("singleton").append(":=true").toString();
        }
        if ("Eclipse-BuddyPolicy".equalsIgnoreCase(keyString)) {
            return this.storageHook.getBuddyList();
        }
        if ("Eclipse-RegisterBuddy".equalsIgnoreCase(keyString)) {
            return this.storageHook.getRegisteredBuddyList();
        }
        if ("Bundle-Activator".equalsIgnoreCase(keyString)) {
            return this.storageHook.getBaseData().getActivator();
        }
        if ("Bundle-ActivationPolicy".equals(keyString)) {
            int i;
            if (!this.storageHook.isAutoStartable()) {
                return null;
            }
            String[] excludes = this.storageHook.getLazyStartExcludes();
            String[] includes = this.storageHook.getLazyStartIncludes();
            if (excludes == null && includes == null) {
                return "lazy";
            }
            StringBuffer result3 = new StringBuffer("lazy");
            if (excludes != null) {
                result3.append(';').append("exclude").append(":=\"");
                i = 0;
                while (i < excludes.length) {
                    if (i > 0) {
                        result3.append(',');
                    }
                    result3.append(excludes[i]);
                    ++i;
                }
                result3.append("\"");
            }
            if (includes != null) {
                result3.append(';').append("include").append(":=\"");
                i = 0;
                while (i < includes.length) {
                    if (i > 0) {
                        result3.append(',');
                    }
                    result3.append(includes[i]);
                    ++i;
                }
                result3.append("\"");
            }
        }
        if ("Eclipse-LazyStart".equals(keyString) || "Eclipse-AutoStart".equals(keyString)) {
            if (!this.storageHook.isAutoStartable()) {
                return null;
            }
            if (this.storageHook.getLazyStartExcludes() == null) {
                return Boolean.TRUE.toString();
            }
            result = new StringBuffer(this.storageHook.isLazyStart() ? Boolean.TRUE.toString() : Boolean.FALSE.toString());
            ((StringBuffer)result).append(";").append("exceptions").append("=\"");
            String[] exceptions = this.storageHook.getLazyStartExcludes();
            int i = 0;
            while (i < exceptions.length) {
                if (i > 0) {
                    ((StringBuffer)result).append(",");
                }
                ((StringBuffer)result).append(exceptions[i]);
                ++i;
            }
            ((StringBuffer)result).append("\"");
            return ((StringBuffer)result).toString();
        }
        if ("Bundle-ManifestVersion".equals(keyString)) {
            return this.storageHook.getBundleManifestVersion() == 0 ? null : Integer.toString(this.storageHook.getBundleManifestVersion());
        }
        if (SERVICE_COMPONENT.equals(keyString)) {
            return this.storageHook.getServiceComponent();
        }
        result = this.getManifest();
        if (DEBUG) {
            System.out.println(new StringBuffer("Manifest read because of header: ").append(key).toString());
        }
        return result == null ? null : (String)((Dictionary)result).get(key);
    }

    @Override
    public String remove(Object key) {
        return this.getManifest().remove(key);
    }

    @Override
    public String put(String key, String value) {
        return this.getManifest().put(key, value);
    }
}

