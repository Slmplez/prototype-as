/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.runtime.internal.stats;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
import java.util.Stack;
import org.eclipse.core.runtime.internal.stats.ClassStats;
import org.eclipse.core.runtime.internal.stats.ResourceBundleStats;
import org.eclipse.core.runtime.internal.stats.StatsManager;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ClassloaderStats {
    private String id;
    private long loadingTime;
    private Map<String, ClassStats> classes = Collections.synchronizedMap(new HashMap(20));
    private List<ResourceBundleStats> bundles = new ArrayList<ResourceBundleStats>(2);
    private boolean keepTraces = false;
    private static List<String> packageFilters = new ArrayList<String>(4);
    private static Set<String> pluginFilters = new HashSet<String>(5);
    private static Hashtable<Thread, Stack<ClassStats>> classStacks = new Hashtable();
    private static Map<String, ClassloaderStats> loaders = Collections.synchronizedMap(new HashMap(20));
    public static File traceFile;

    static {
        if (StatsManager.TRACE_CLASSES || StatsManager.TRACE_BUNDLES) {
            ClassloaderStats.initializeTraceOptions();
        }
    }

    private static void initializeTraceOptions() {
        String filename = StatsManager.TRACE_FILENAME;
        traceFile = new File(filename);
        traceFile.delete();
        if (!StatsManager.TRACE_CLASSES) {
            return;
        }
        filename = StatsManager.TRACE_FILTERS;
        if (filename == null || filename.length() == 0) {
            return;
        }
        try {
            File filterFile = new File(filename);
            System.out.print(new StringBuffer("Runtime tracing elements defined in: ").append(filterFile.getAbsolutePath()).append("...").toString());
            FileInputStream input = new FileInputStream(filterFile);
            System.out.println("  Loaded.");
            Properties filters = new Properties(){
                private static final long serialVersionUID = 3546359543853365296L;

                public synchronized Object put(Object key, Object value) {
                    ClassloaderStats.addFilters((String)key, (String)value);
                    return null;
                }
            };
            try {
                filters.load(input);
            }
            finally {
                ((InputStream)input).close();
            }
        }
        catch (IOException iOException) {
            System.out.println("  No trace filters loaded.");
        }
    }

    protected static void addFilters(String key, String value) {
        String[] filters = StatsManager.getArrayFromList(value);
        if ("plugins".equals(key)) {
            pluginFilters.addAll(Arrays.asList(filters));
        }
        if ("packages".equals(key)) {
            packageFilters.addAll(Arrays.asList(filters));
        }
    }

    public static void startLoadingClass(String id, String className) {
        ClassloaderStats.findLoader(id).startLoadClass(className);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private static ClassloaderStats findLoader(String id) {
        Map<String, ClassloaderStats> map = loaders;
        synchronized (map) {
            ClassloaderStats result = loaders.get(id);
            if (result == null) {
                result = new ClassloaderStats(id);
                loaders.put(id, result);
            }
            return result;
        }
    }

    public static synchronized Stack<ClassStats> getClassStack() {
        Stack<ClassStats> result = classStacks.get(Thread.currentThread());
        if (result == null) {
            result = new Stack();
            classStacks.put(Thread.currentThread(), result);
        }
        return result;
    }

    public static ClassloaderStats[] getLoaders() {
        return loaders.values().toArray(new ClassloaderStats[0]);
    }

    public static void endLoadingClass(String id, String className, boolean success) {
        ClassloaderStats.findLoader(id).endLoadClass(className, success);
    }

    public static void loadedBundle(String id, ResourceBundleStats info) {
        ClassloaderStats.findLoader(id).loadedBundle(info);
    }

    public static ClassloaderStats getLoader(String id) {
        return loaders.get(id);
    }

    public ClassloaderStats(String id) {
        this.id = id;
        this.keepTraces = pluginFilters.contains(id);
    }

    public void addBaseClasses(String[] baseClasses) {
        int i = 0;
        while (i < baseClasses.length) {
            String name = baseClasses[i];
            if (this.classes.get(name) == null) {
                ClassStats value = new ClassStats(name, this);
                value.toBaseClass();
                this.classes.put(name, value);
            }
            ++i;
        }
    }

    private void loadedBundle(ResourceBundleStats bundle) {
        this.bundles.add(bundle);
    }

    public List<ResourceBundleStats> getBundles() {
        return this.bundles;
    }

    private synchronized void startLoadClass(String name) {
        ClassloaderStats.getClassStack().push(this.findClass(name));
    }

    private ClassStats findClass(String name) {
        ClassStats result = this.classes.get(name);
        return result == null ? new ClassStats(name, this) : result;
    }

    private synchronized void endLoadClass(String name, boolean success) {
        ClassStats current = ClassloaderStats.getClassStack().pop();
        if (!success) {
            return;
        }
        if (current.getLoadOrder() >= 0) {
            return;
        }
        this.classes.put(name, current);
        current.setLoadOrder(this.classes.size());
        current.loadingDone();
        this.traceLoad(name, current);
        Stack<ClassStats> classStack = ClassloaderStats.getClassStack();
        if (classStack.size() != 0) {
            ClassStats previous = classStack.peek();
            previous.addTimeLoadingOthers(current.getTimeLoading());
            current.setLoadedBy(previous);
            previous.loaded(current);
        } else {
            this.loadingTime += current.getTimeLoading();
        }
    }

    private void traceLoad(String name, ClassStats target) {
        if (!this.keepTraces) {
            boolean found = false;
            int i = 0;
            while (!found && i < packageFilters.size()) {
                if (name.startsWith(packageFilters.get(i))) {
                    found = true;
                }
                ++i;
            }
            if (!found) {
                return;
            }
        }
        try {
            target.setTraceStart(traceFile.length());
            PrintWriter output = new PrintWriter(new FileOutputStream(traceFile.getAbsolutePath(), true));
            try {
                output.println(new StringBuffer("Loading class: ").append(name).toString());
                output.println("Class loading stack:");
                output.println(new StringBuffer("\t").append(name).toString());
                Stack<ClassStats> classStack = ClassloaderStats.getClassStack();
                int i = classStack.size() - 1;
                while (i >= 0) {
                    output.println(new StringBuffer("\t").append(((ClassStats)classStack.get(i)).getClassName()).toString());
                    --i;
                }
                output.println("Stack trace:");
                new Throwable().printStackTrace(output);
            }
            finally {
                output.close();
            }
            target.setTraceEnd(traceFile.length());
        }
        catch (FileNotFoundException e) {
            e.printStackTrace();
        }
    }

    public int getClassLoadCount() {
        return this.classes.size();
    }

    public long getClassLoadTime() {
        return this.loadingTime;
    }

    public ClassStats[] getClasses() {
        return this.classes.values().toArray(new ClassStats[0]);
    }

    public String getId() {
        return this.id;
    }
}

