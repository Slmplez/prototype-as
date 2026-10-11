/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.runtime.spi;

import java.io.File;
import java.util.Locale;
import java.util.Map;
import java.util.ResourceBundle;
import javax.xml.parsers.SAXParserFactory;
import org.eclipse.core.internal.registry.ExtensionRegistry;
import org.eclipse.core.internal.registry.RegistryMessages;
import org.eclipse.core.internal.registry.RegistrySupport;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IContributor;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.spi.RegistryContributor;
import org.eclipse.osgi.util.NLS;

public class RegistryStrategy {
    private SAXParserFactory theXMLParserFactory = null;
    private final File[] storageDirs;
    private final boolean[] cacheReadOnly;

    public RegistryStrategy(File[] storageDirs, boolean[] cacheReadOnly) {
        this.storageDirs = storageDirs;
        this.cacheReadOnly = cacheReadOnly;
    }

    public final int getLocationsLength() {
        if (this.storageDirs == null) {
            return 0;
        }
        return this.storageDirs.length;
    }

    public final File getStorage(int index) {
        if (this.storageDirs != null) {
            return this.storageDirs[index];
        }
        return null;
    }

    public final boolean isCacheReadOnly(int index) {
        if (this.cacheReadOnly != null) {
            return this.cacheReadOnly[index];
        }
        return true;
    }

    public void log(IStatus status) {
        RegistrySupport.log(status, null);
    }

    public String translate(String key, ResourceBundle resources) {
        return RegistrySupport.translate(key, resources);
    }

    public void onStart(IExtensionRegistry registry) {
    }

    public void onStart(IExtensionRegistry registry, boolean loadedFromCache) {
    }

    public void onStop(IExtensionRegistry registry) {
    }

    public Object createExecutableExtension(RegistryContributor contributor, String className, String overridenContributorName) throws CoreException {
        Object result = null;
        Class<?> classInstance = null;
        try {
            classInstance = Class.forName(className);
        }
        catch (ClassNotFoundException e1) {
            String message = NLS.bind((String)RegistryMessages.exExt_findClassError, (Object)contributor.getActualName(), (Object)className);
            throw new CoreException((IStatus)new Status(4, "org.eclipse.equinox.registry", 1, message, (Throwable)e1));
        }
        try {
            result = classInstance.newInstance();
        }
        catch (Exception e) {
            String message = NLS.bind((String)RegistryMessages.exExt_instantiateClassError, (Object)contributor.getActualName(), (Object)className);
            throw new CoreException((IStatus)new Status(4, "org.eclipse.equinox.registry", 1, message, (Throwable)e));
        }
        return result;
    }

    public void scheduleChangeEvent(Object[] listeners, Map deltas, Object registry) {
        ((ExtensionRegistry)registry).scheduleChangeEvent(listeners, deltas);
    }

    public static final IStatus processChangeEvent(Object[] listeners, Map deltas, Object registry) {
        if (registry instanceof ExtensionRegistry) {
            return ((ExtensionRegistry)registry).processChangeEvent(listeners, deltas);
        }
        return null;
    }

    public boolean debug() {
        return false;
    }

    public boolean debugRegistryEvents() {
        return false;
    }

    public boolean cacheUse() {
        return true;
    }

    public boolean cacheLazyLoading() {
        return true;
    }

    public long getContainerTimestamp() {
        return 0L;
    }

    public long getContributionsTimestamp() {
        return 0L;
    }

    public SAXParserFactory getXMLParser() {
        if (this.theXMLParserFactory == null) {
            this.theXMLParserFactory = SAXParserFactory.newInstance();
        }
        return this.theXMLParserFactory;
    }

    public String[] translate(String[] nonTranslated, IContributor contributor, String locale) {
        return nonTranslated;
    }

    public String getLocale() {
        return Locale.getDefault().toString();
    }
}

