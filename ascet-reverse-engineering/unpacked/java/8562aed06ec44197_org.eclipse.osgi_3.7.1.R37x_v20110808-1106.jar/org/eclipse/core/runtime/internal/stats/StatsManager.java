/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.runtime.internal.stats;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URL;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Map;
import java.util.Stack;
import org.eclipse.core.runtime.internal.stats.BundleStats;
import org.eclipse.core.runtime.internal.stats.ClassStats;
import org.eclipse.core.runtime.internal.stats.ClassloaderStats;
import org.eclipse.core.runtime.internal.stats.ResourceBundleStats;
import org.eclipse.osgi.baseadaptor.HookConfigurator;
import org.eclipse.osgi.baseadaptor.HookRegistry;
import org.eclipse.osgi.baseadaptor.bundlefile.BundleEntry;
import org.eclipse.osgi.baseadaptor.hooks.ClassLoadingStatsHook;
import org.eclipse.osgi.baseadaptor.loader.ClasspathEntry;
import org.eclipse.osgi.baseadaptor.loader.ClasspathManager;
import org.eclipse.osgi.framework.adaptor.BundleWatcher;
import org.eclipse.osgi.framework.debug.Debug;
import org.eclipse.osgi.framework.debug.FrameworkDebugOptions;
import org.eclipse.osgi.util.ManifestElement;
import org.osgi.framework.Bundle;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class StatsManager
implements BundleWatcher,
HookConfigurator,
ClassLoadingStatsHook {
    private Hashtable<Long, BundleStats> bundles = new Hashtable(20);
    private Map<Thread, Stack<BundleStats>> activationStacks = new HashMap<Thread, Stack<BundleStats>>(5);
    private static boolean booting = true;
    private static StatsManager defaultInstance;
    public static boolean MONITOR_ACTIVATION;
    public static boolean MONITOR_CLASSES;
    public static boolean MONITOR_RESOURCES;
    public static String TRACE_FILENAME;
    public static String TRACE_FILTERS;
    public static boolean TRACE_CLASSES;
    public static boolean TRACE_BUNDLES;
    public static final String FRAMEWORK_SYMBOLICNAME = "org.eclipse.osgi";
    private static final String OPTION_MONITOR_ACTIVATION = "org.eclipse.osgi/monitor/activation";
    private static final String OPTION_MONITOR_CLASSES = "org.eclipse.osgi/monitor/classes";
    private static final String OPTION_MONITOR_RESOURCES = "org.eclipse.osgi/monitor/resources";
    private static final String OPTION_TRACE_BUNDLES = "org.eclipse.osgi/trace/activation";
    private static final String OPTION_TRACE_CLASSES = "org.eclipse.osgi/trace/classLoading";
    private static final String OPTION_TRACE_FILENAME = "org.eclipse.osgi/trace/filename";
    private static final String OPTION_TRACE_FILTERS = "org.eclipse.osgi/trace/filters";

    static {
        MONITOR_ACTIVATION = false;
        MONITOR_CLASSES = false;
        MONITOR_RESOURCES = false;
        TRACE_FILENAME = "runtime.traces";
        TRACE_FILTERS = "trace.properties";
        TRACE_CLASSES = false;
        TRACE_BUNDLES = false;
        StatsManager.setDebugOptions();
    }

    public static StatsManager getDefault() {
        if (defaultInstance == null) {
            defaultInstance = new StatsManager();
            defaultInstance.initialize();
        }
        return defaultInstance;
    }

    public static void setDebugOptions() {
        FrameworkDebugOptions options = FrameworkDebugOptions.getDefault();
        if (options == null) {
            return;
        }
        MONITOR_ACTIVATION = options.getBooleanOption(OPTION_MONITOR_ACTIVATION, false);
        MONITOR_CLASSES = options.getBooleanOption(OPTION_MONITOR_CLASSES, false);
        MONITOR_RESOURCES = options.getBooleanOption(OPTION_MONITOR_RESOURCES, false);
        TRACE_CLASSES = options.getBooleanOption(OPTION_TRACE_CLASSES, false);
        TRACE_BUNDLES = options.getBooleanOption(OPTION_TRACE_BUNDLES, false);
        TRACE_FILENAME = options.getOption(OPTION_TRACE_FILENAME, TRACE_FILENAME);
        TRACE_FILTERS = options.getOption(OPTION_TRACE_FILTERS, TRACE_FILTERS);
    }

    public static void doneBooting() {
        booting = false;
    }

    public static boolean isBooting() {
        return booting;
    }

    public static String[] getArrayFromList(String prop) {
        return ManifestElement.getArrayFromList(prop, ",");
    }

    private void initialize() {
        BundleStats bundle = this.findBundle(FRAMEWORK_SYMBOLICNAME, 0L);
        bundle.setTimestamp(System.currentTimeMillis());
        bundle.setActivationOrder(this.bundles.size());
        bundle.setDuringStartup(booting);
    }

    @Override
    public void watchBundle(Bundle bundle, int type) {
        switch (type) {
            case 4: {
                this.startActivation(bundle);
                break;
            }
            case 8: {
                this.endActivation(bundle);
            }
        }
    }

    public void startActivation(Bundle bundle) {
        BundleStats info = this.findBundle(bundle.getSymbolicName(), bundle.getBundleId());
        info.setTimestamp(System.currentTimeMillis());
        info.setActivationOrder(this.bundles.size());
        info.setDuringStartup(booting);
        Stack<BundleStats> activationStack = this.activationStacks.get(Thread.currentThread());
        if (activationStack == null) {
            activationStack = new Stack();
            this.activationStacks.put(Thread.currentThread(), activationStack);
        }
        if (activationStack.size() != 0) {
            BundleStats activatedBy = activationStack.peek();
            activatedBy.activated(info);
            info.setActivatedBy(activatedBy);
        }
        activationStack.push(info);
        if (TRACE_BUNDLES) {
            this.traceActivate(bundle, info);
        }
    }

    public void endActivation(Bundle symbolicName) {
        Stack<BundleStats> activationStack = this.activationStacks.get(Thread.currentThread());
        BundleStats info = activationStack.pop();
        info.endActivation();
    }

    private void traceActivate(Bundle bundle, BundleStats info) {
        try {
            PrintWriter output = new PrintWriter(new FileOutputStream(ClassloaderStats.traceFile.getAbsolutePath(), true));
            try {
                long startPosition = ClassloaderStats.traceFile.length();
                output.println(new StringBuffer("Activating bundle: ").append(bundle.getSymbolicName()).toString());
                output.println("Bundle activation stack:");
                Stack<BundleStats> activationStack = this.activationStacks.get(Thread.currentThread());
                int i = activationStack.size() - 1;
                while (i >= 0) {
                    output.println(new StringBuffer("\t").append(((BundleStats)activationStack.get(i)).getSymbolicName()).toString());
                    --i;
                }
                output.println("Class loading stack:");
                Stack<ClassStats> classStack = ClassloaderStats.getClassStack();
                int i2 = classStack.size() - 1;
                while (i2 >= 0) {
                    output.println(new StringBuffer("\t").append(((ClassStats)classStack.get(i2)).getClassName()).toString());
                    --i2;
                }
                output.println("Stack trace:");
                new Throwable().printStackTrace(output);
                info.setTraceStart(startPosition);
            }
            finally {
                output.close();
                info.setTraceEnd(ClassloaderStats.traceFile.length());
            }
        }
        catch (IOException e) {
            e.printStackTrace();
        }
    }

    public BundleStats findBundle(String symbolicName, long id) {
        BundleStats result = this.bundles.get(new Long(id));
        try {
            if (result == null) {
                result = new BundleStats(symbolicName, id);
                this.bundles.put(new Long(id), result);
            }
        }
        catch (IllegalAccessError e) {
            e.printStackTrace();
        }
        return result;
    }

    public BundleStats[] getBundles() {
        return this.bundles.values().toArray(new BundleStats[this.bundles.size()]);
    }

    public BundleStats getBundle(long id) {
        return this.bundles.get(new Long(id));
    }

    @Override
    public void preFindLocalClass(String name, ClasspathManager manager) throws ClassNotFoundException {
        if (MONITOR_CLASSES) {
            ClassloaderStats.startLoadingClass(this.getClassloaderId(manager), name);
        }
    }

    @Override
    public void postFindLocalClass(String name, Class<?> clazz, ClasspathManager manager) {
        if (MONITOR_CLASSES) {
            ClassloaderStats.endLoadingClass(this.getClassloaderId(manager), name, clazz != null);
        }
    }

    @Override
    public void preFindLocalResource(String name, ClasspathManager manager) {
    }

    @Override
    public void postFindLocalResource(String name, URL resource, ClasspathManager manager) {
        if (MONITOR_RESOURCES && resource != null && name.endsWith(".properties")) {
            ClassloaderStats.loadedBundle(this.getClassloaderId(manager), new ResourceBundleStats(this.getClassloaderId(manager), name, resource));
        }
    }

    @Override
    public void recordClassDefine(String name, Class<?> clazz, byte[] classbytes, ClasspathEntry classpathEntry, BundleEntry entry, ClasspathManager manager) {
    }

    private String getClassloaderId(ClasspathManager loader) {
        return loader.getBaseData().getSymbolicName();
    }

    @Override
    public void addHooks(HookRegistry hookRegistry) {
        if (Debug.MONITOR_ACTIVATION) {
            hookRegistry.addWatcher(StatsManager.getDefault());
        }
        if (MONITOR_CLASSES || MONITOR_RESOURCES) {
            hookRegistry.addClassLoadingStatsHook(StatsManager.getDefault());
        }
    }
}

