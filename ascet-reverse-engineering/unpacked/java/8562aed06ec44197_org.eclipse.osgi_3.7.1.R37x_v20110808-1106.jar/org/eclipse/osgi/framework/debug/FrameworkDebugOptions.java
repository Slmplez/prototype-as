/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.debug;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;
import org.eclipse.osgi.framework.debug.EclipseDebugTrace;
import org.eclipse.osgi.framework.internal.core.FrameworkProperties;
import org.eclipse.osgi.service.debug.DebugOptions;
import org.eclipse.osgi.service.debug.DebugOptionsListener;
import org.eclipse.osgi.service.debug.DebugTrace;
import org.osgi.framework.BundleContext;
import org.osgi.framework.InvalidSyntaxException;
import org.osgi.framework.ServiceReference;
import org.osgi.util.tracker.ServiceTracker;
import org.osgi.util.tracker.ServiceTrackerCustomizer;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class FrameworkDebugOptions
implements DebugOptions,
ServiceTrackerCustomizer<DebugOptionsListener, DebugOptionsListener> {
    private static final String OSGI_DEBUG = "osgi.debug";
    private static final String OSGI_DEBUG_VERBOSE = "osgi.debug.verbose";
    public static final String PROP_TRACEFILE = "osgi.tracefile";
    private final Object lock = new Object();
    private Properties options = null;
    private Properties disabledOptions = null;
    private static FrameworkDebugOptions singleton = null;
    private static final String OPTIONS = ".options";
    protected static final Map<String, DebugTrace> debugTraceCache = new HashMap<String, DebugTrace>();
    protected File outFile = null;
    protected boolean verboseDebug = Boolean.valueOf(FrameworkProperties.getProperty("osgi.debug.verbose", Boolean.TRUE.toString()));
    private volatile BundleContext context;
    private volatile ServiceTracker<DebugOptionsListener, DebugOptionsListener> listenerTracker;
    static /* synthetic */ Class class$0;

    private FrameworkDebugOptions() {
        URL optionsFile;
        String debugOptionsFilename = FrameworkProperties.getProperty(OSGI_DEBUG);
        if (debugOptionsFilename == null) {
            return;
        }
        this.options = new Properties();
        if (debugOptionsFilename.length() == 0) {
            String userDir = FrameworkProperties.getProperty("user.dir").replace(File.separatorChar, '/');
            if (!userDir.endsWith("/")) {
                userDir = new StringBuffer(String.valueOf(userDir)).append("/").toString();
            }
            debugOptionsFilename = new File(userDir, OPTIONS).toString();
        }
        if ((optionsFile = FrameworkDebugOptions.buildURL(debugOptionsFilename, false)) == null) {
            System.out.println(new StringBuffer("Unable to construct URL for options file: ").append(debugOptionsFilename).toString());
            return;
        }
        System.out.print(new StringBuffer("Debug options:\n    ").append(optionsFile.toExternalForm()).toString());
        try {
            InputStream input = optionsFile.openStream();
            try {
                this.options.load(input);
                System.out.println(" loaded");
            }
            finally {
                input.close();
            }
        }
        catch (FileNotFoundException fileNotFoundException) {
            System.out.println(" not found");
        }
        catch (IOException e) {
            System.out.println(" did not parse");
            e.printStackTrace(System.out);
        }
        for (Object key : this.options.keySet()) {
            this.options.put(key, ((String)this.options.get(key)).trim());
        }
    }

    public void start(BundleContext bc) {
        this.context = bc;
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.osgi.service.debug.DebugOptionsListener");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.listenerTracker = new ServiceTracker<DebugOptionsListener, DebugOptionsListener>(bc, clazz.getName(), this);
        this.listenerTracker.open();
    }

    public void stop(BundleContext bc) {
        this.listenerTracker.close();
        this.listenerTracker = null;
        this.context = null;
    }

    public static FrameworkDebugOptions getDefault() {
        if (singleton == null) {
            singleton = new FrameworkDebugOptions();
        }
        return singleton;
    }

    private static URL buildURL(String spec, boolean trailingSlash) {
        if (spec == null) {
            return null;
        }
        boolean isFile = spec.startsWith("file:");
        try {
            if (isFile) {
                return FrameworkDebugOptions.adjustTrailingSlash(new File(spec.substring(5)).toURL(), trailingSlash);
            }
            return new URL(spec);
        }
        catch (MalformedURLException malformedURLException) {
            if (isFile) {
                return null;
            }
            try {
                return FrameworkDebugOptions.adjustTrailingSlash(new File(spec).toURL(), trailingSlash);
            }
            catch (MalformedURLException malformedURLException2) {
                return null;
            }
        }
    }

    private static URL adjustTrailingSlash(URL url, boolean trailingSlash) throws MalformedURLException {
        String file = url.getFile();
        if (trailingSlash == file.endsWith("/")) {
            return url;
        }
        file = trailingSlash ? new StringBuffer(String.valueOf(file)).append("/").toString() : file.substring(0, file.length() - 1);
        return new URL(url.getProtocol(), url.getHost(), file);
    }

    @Override
    public boolean getBooleanOption(String option, boolean defaultValue) {
        String optionValue = this.getOption(option);
        return optionValue != null ? optionValue.equalsIgnoreCase("true") : defaultValue;
    }

    @Override
    public String getOption(String option) {
        return this.getOption(option, null);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public String getOption(String option, String defaultValue) {
        Object object = this.lock;
        synchronized (object) {
            if (this.options != null) {
                return this.options.getProperty(option, defaultValue);
            }
        }
        return defaultValue;
    }

    @Override
    public int getIntegerOption(String option, int defaultValue) {
        String value = this.getOption(option);
        try {
            return value == null ? defaultValue : Integer.parseInt(value);
        }
        catch (NumberFormatException numberFormatException) {
            return defaultValue;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public Map<String, String> getOptions() {
        HashMap<String, String> snapShot = new HashMap<String, String>();
        Object object = this.lock;
        synchronized (object) {
            if (this.options != null) {
                snapShot.putAll(this.options);
            } else if (this.disabledOptions != null) {
                snapShot.putAll(this.disabledOptions);
            }
        }
        return snapShot;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    String[] getAllOptions() {
        String[] optionsArray = null;
        Object object = this.lock;
        synchronized (object) {
            if (this.options != null) {
                optionsArray = new String[this.options.size()];
                Iterator entrySetIterator = this.options.entrySet().iterator();
                int i = 0;
                while (entrySetIterator.hasNext()) {
                    Map.Entry entry = entrySetIterator.next();
                    optionsArray[i] = new StringBuffer(String.valueOf((String)entry.getKey())).append("=").append((String)entry.getValue()).toString();
                    ++i;
                }
            }
        }
        if (optionsArray == null) {
            optionsArray = new String[1];
        }
        return optionsArray;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public void removeOption(String option) {
        if (option == null) {
            return;
        }
        String fireChangedEvent = null;
        Object object = this.lock;
        synchronized (object) {
            if (this.options != null && this.options.remove(option) != null) {
                fireChangedEvent = this.getSymbolicName(option);
            }
        }
        if (fireChangedEvent != null) {
            this.optionsChanged(fireChangedEvent);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public void setOption(String option, String value) {
        if (option == null || value == null) {
            throw new IllegalArgumentException("The option and value must not be null.");
        }
        String fireChangedEvent = null;
        value = value != null ? value.trim() : null;
        Object object = this.lock;
        synchronized (object) {
            if (this.options != null) {
                String currentValue = this.options.getProperty(option);
                if (currentValue != null) {
                    if (!currentValue.equals(value)) {
                        fireChangedEvent = this.getSymbolicName(option);
                    }
                } else if (value != null) {
                    fireChangedEvent = this.getSymbolicName(option);
                }
                if (fireChangedEvent != null) {
                    this.options.put(option, value);
                }
            }
        }
        if (fireChangedEvent != null) {
            this.optionsChanged(fireChangedEvent);
        }
    }

    private String getSymbolicName(String option) {
        int firstSlashIndex = option.indexOf("/");
        if (firstSlashIndex > 0) {
            return option.substring(0, firstSlashIndex);
        }
        return null;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public void setOptions(Map<String, String> ops) {
        Map.Entry<String, String> entry2;
        if (ops == null) {
            throw new IllegalArgumentException("The options must not be null.");
        }
        Properties newOptions = new Properties();
        for (Map.Entry<String, String> entry2 : ops.entrySet()) {
            if (!(entry2.getKey() instanceof String) || !(entry2.getValue() instanceof String)) {
                throw new IllegalArgumentException(new StringBuffer("Option keys and values must be of type String: ").append((String)entry2.getKey()).append("=").append((String)entry2.getValue()).toString());
            }
            newOptions.put(entry2.getKey(), ((String)entry2.getValue()).trim());
        }
        HashSet<String> fireChangesTo = null;
        entry2 = this.lock;
        synchronized (entry2) {
            if (this.options == null) {
                this.disabledOptions = newOptions;
                return;
            }
            fireChangesTo = new HashSet<String>();
            for (String key : this.options.keySet()) {
                String symbolicName;
                if (newOptions.containsKey(key) || (symbolicName = this.getSymbolicName(key)) == null) continue;
                fireChangesTo.add(symbolicName);
            }
            for (Map.Entry entry3 : newOptions.entrySet()) {
                String symbolicName;
                String existingValue = (String)this.options.get(entry3.getKey());
                if (entry3.getValue().equals(existingValue) || (symbolicName = this.getSymbolicName((String)entry3.getKey())) == null) continue;
                fireChangesTo.add(symbolicName);
            }
            this.options = newOptions;
        }
        if (fireChangesTo != null) {
            Iterator iChanges = fireChangesTo.iterator();
            while (iChanges.hasNext()) {
                this.optionsChanged((String)iChanges.next());
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public boolean isDebugEnabled() {
        Object object = this.lock;
        synchronized (object) {
            return this.options != null;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public void setDebugEnabled(boolean enabled) {
        boolean fireChangedEvent = false;
        Object object = this.lock;
        synchronized (object) {
            if (enabled) {
                if (this.options != null) {
                    return;
                }
                EclipseDebugTrace.newSession = true;
                FrameworkProperties.setProperty(OSGI_DEBUG, "");
                if (this.disabledOptions != null) {
                    this.options = this.disabledOptions;
                    this.disabledOptions = null;
                    fireChangedEvent = true;
                } else {
                    this.options = new Properties();
                }
            } else {
                if (this.options == null) {
                    return;
                }
                FrameworkProperties.clearProperty(OSGI_DEBUG);
                if (this.options.size() > 0) {
                    this.disabledOptions = this.options;
                    fireChangedEvent = true;
                }
                this.options = null;
            }
        }
        if (fireChangedEvent) {
            this.optionsChanged("*");
        }
    }

    @Override
    public final DebugTrace newDebugTrace(String bundleSymbolicName) {
        return this.newDebugTrace(bundleSymbolicName, null);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public final DebugTrace newDebugTrace(String bundleSymbolicName, Class<?> traceEntryClass) {
        DebugTrace debugTrace = null;
        Map<String, DebugTrace> map = debugTraceCache;
        synchronized (map) {
            debugTrace = debugTraceCache.get(bundleSymbolicName);
            if (debugTrace == null) {
                debugTrace = new EclipseDebugTrace(bundleSymbolicName, singleton, traceEntryClass);
                debugTraceCache.put(bundleSymbolicName, debugTrace);
            }
        }
        return debugTrace;
    }

    @Override
    public final File getFile() {
        return this.outFile;
    }

    @Override
    public synchronized void setFile(File traceFile) {
        this.outFile = traceFile;
        FrameworkProperties.setProperty(PROP_TRACEFILE, this.outFile.getAbsolutePath());
        EclipseDebugTrace.newSession = true;
    }

    boolean isVerbose() {
        return this.verboseDebug;
    }

    public synchronized void setVerbose(boolean verbose) {
        this.verboseDebug = verbose;
        EclipseDebugTrace.newSession = true;
    }

    private void optionsChanged(String bundleSymbolicName) {
        BundleContext bc = this.context;
        if (bc == null) {
            return;
        }
        ServiceReference[] listenerRefs = null;
        try {
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.osgi.service.debug.DebugOptionsListener");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            listenerRefs = bc.getServiceReferences(clazz.getName(), new StringBuffer("(listener.symbolic.name=").append(bundleSymbolicName).append(")").toString());
        }
        catch (InvalidSyntaxException invalidSyntaxException) {}
        if (listenerRefs == null) {
            return;
        }
        int i = 0;
        while (i < listenerRefs.length) {
            block15: {
                DebugOptionsListener service = (DebugOptionsListener)bc.getService(listenerRefs[i]);
                if (service != null) {
                    try {
                        try {
                            service.optionsChanged(this);
                        }
                        catch (Throwable throwable) {
                            bc.ungetService(listenerRefs[i]);
                            break block15;
                        }
                    }
                    catch (Throwable throwable) {
                        bc.ungetService(listenerRefs[i]);
                        throw throwable;
                    }
                    bc.ungetService(listenerRefs[i]);
                }
            }
            ++i;
        }
    }

    @Override
    public DebugOptionsListener addingService(ServiceReference<DebugOptionsListener> reference) {
        DebugOptionsListener listener = this.context.getService(reference);
        listener.optionsChanged(this);
        return listener;
    }

    @Override
    public void modifiedService(ServiceReference<DebugOptionsListener> reference, DebugOptionsListener service) {
    }

    @Override
    public void removedService(ServiceReference<DebugOptionsListener> reference, DebugOptionsListener service) {
        this.context.ungetService(reference);
    }
}

