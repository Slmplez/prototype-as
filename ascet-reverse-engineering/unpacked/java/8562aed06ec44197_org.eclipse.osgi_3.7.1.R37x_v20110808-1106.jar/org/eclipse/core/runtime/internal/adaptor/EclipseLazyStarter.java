/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.runtime.internal.adaptor;

import java.io.IOException;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.WeakHashMap;
import org.eclipse.core.runtime.internal.adaptor.EclipseAdaptorMsg;
import org.eclipse.core.runtime.internal.adaptor.EclipseStorageHook;
import org.eclipse.osgi.baseadaptor.BaseAdaptor;
import org.eclipse.osgi.baseadaptor.BaseData;
import org.eclipse.osgi.baseadaptor.HookConfigurator;
import org.eclipse.osgi.baseadaptor.HookRegistry;
import org.eclipse.osgi.baseadaptor.bundlefile.BundleEntry;
import org.eclipse.osgi.baseadaptor.hooks.AdaptorHook;
import org.eclipse.osgi.baseadaptor.hooks.ClassLoadingStatsHook;
import org.eclipse.osgi.baseadaptor.loader.ClasspathEntry;
import org.eclipse.osgi.baseadaptor.loader.ClasspathManager;
import org.eclipse.osgi.framework.adaptor.StatusException;
import org.eclipse.osgi.framework.debug.Debug;
import org.eclipse.osgi.framework.internal.core.AbstractBundle;
import org.eclipse.osgi.framework.internal.core.FrameworkProperties;
import org.eclipse.osgi.framework.log.FrameworkLog;
import org.eclipse.osgi.framework.log.FrameworkLogEntry;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.StateHelper;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleContext;
import org.osgi.framework.BundleException;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EclipseLazyStarter
implements ClassLoadingStatsHook,
AdaptorHook,
HookConfigurator {
    private static final boolean throwErrorOnFailedStart = "true".equals(FrameworkProperties.getProperty("osgi.compatibility.errorOnFailedStart", "true"));
    private BaseAdaptor adaptor;
    private ThreadLocal<List<Object>> activationStack = new ThreadLocal();
    private final Map<ClasspathManager, TerminatingClassNotFoundException> errors = Collections.synchronizedMap(new WeakHashMap());

    @Override
    public void preFindLocalClass(String name, ClasspathManager manager) throws ClassNotFoundException {
        int size;
        AbstractBundle bundle = (AbstractBundle)manager.getBaseData().getBundle();
        if ((bundle.getState() & 0x31) != 0) {
            return;
        }
        EclipseStorageHook storageHook = (EclipseStorageHook)manager.getBaseData().getStorageHook(EclipseStorageHook.KEY);
        if (!this.shouldActivateFor(name, manager.getBaseData(), storageHook, manager)) {
            return;
        }
        List<Object> stack = this.activationStack.get();
        if (stack == null) {
            stack = new ArrayList<Object>(6);
            this.activationStack.set(stack);
        }
        if ((size = stack.size()) > 1) {
            int i = size - 1;
            while (i >= 1) {
                if (manager == stack.get(i)) {
                    return;
                }
                --i;
            }
        }
        Thread threadChangingState = bundle.getStateChanging();
        if (bundle.getState() == 8 && threadChangingState == Thread.currentThread()) {
            return;
        }
        if (size == 0) {
            stack.add(name);
        }
        stack.add(manager);
    }

    @Override
    public void postFindLocalClass(String name, Class<?> clazz, ClasspathManager manager) throws ClassNotFoundException {
        List<Object> stack = this.activationStack.get();
        if (stack == null) {
            return;
        }
        int size = stack.size();
        if (size <= 1 || stack.get(0) != name) {
            return;
        }
        ClasspathManager[] managers = null;
        managers = new ClasspathManager[size - 1];
        int i = 1;
        while (i < size) {
            managers[i - 1] = (ClasspathManager)stack.get(i);
            ++i;
        }
        stack.clear();
        if (clazz == null) {
            return;
        }
        i = managers.length - 1;
        while (i >= 0) {
            if (this.errors.get(managers[i]) != null) {
                if (throwErrorOnFailedStart) {
                    throw this.errors.get(managers[i]);
                }
            } else {
                long startTime = System.currentTimeMillis();
                try {
                    managers[i].getBaseClassLoader().getDelegate().setLazyTrigger();
                }
                catch (BundleException e) {
                    StatusException status;
                    Bundle bundle = managers[i].getBaseData().getBundle();
                    Throwable cause = e.getCause();
                    if (cause != null && cause instanceof StatusException && ((status = (StatusException)((Object)cause)).getStatusCode() & 8) == 0) {
                        if (status.getStatus() instanceof Thread) {
                            String message = NLS.bind(EclipseAdaptorMsg.ECLIPSE_CLASSLOADER_CONCURRENT_STARTUP, new Object[]{Thread.currentThread(), name, status.getStatus(), bundle, new Long(System.currentTimeMillis() - startTime)});
                            this.adaptor.getFrameworkLog().log(new FrameworkLogEntry("org.eclipse.osgi", 2, 0, message, 0, e, null));
                        }
                    }
                    String message = NLS.bind(EclipseAdaptorMsg.ECLIPSE_CLASSLOADER_ACTIVATION, bundle.getSymbolicName(), Long.toString(bundle.getBundleId()));
                    TerminatingClassNotFoundException error = new TerminatingClassNotFoundException(message, e);
                    this.errors.put(managers[i], error);
                    if (throwErrorOnFailedStart) {
                        this.adaptor.getFrameworkLog().log(new FrameworkLogEntry("org.eclipse.osgi", 4, 0, message, 0, e, null));
                        throw error;
                    }
                    this.adaptor.getEventPublisher().publishFrameworkEvent(2, bundle, new BundleException(message, e));
                }
            }
            --i;
        }
    }

    @Override
    public void preFindLocalResource(String name, ClasspathManager manager) {
    }

    @Override
    public void postFindLocalResource(String name, URL resource, ClasspathManager manager) {
    }

    @Override
    public void recordClassDefine(String name, Class<?> clazz, byte[] classbytes, ClasspathEntry classpathEntry, BundleEntry entry, ClasspathManager manager) {
    }

    private boolean shouldActivateFor(String className, BaseData bundledata, EclipseStorageHook storageHook, ClasspathManager manager) throws ClassNotFoundException {
        if (!this.isLazyStartable(className, bundledata, storageHook)) {
            return false;
        }
        if (bundledata.getBundle().getState() == 4) {
            TerminatingClassNotFoundException error;
            if (throwErrorOnFailedStart && (error = this.errors.get(manager)) != null) {
                throw error;
            }
            return (bundledata.getStatus() & 1) != 0;
        }
        return true;
    }

    private boolean isLazyStartable(String className, BaseData bundledata, EclipseStorageHook storageHook) {
        if (storageHook == null) {
            return false;
        }
        boolean lazyStart = storageHook.isLazyStart();
        String[] excludes = storageHook.getLazyStartExcludes();
        String[] includes = storageHook.getLazyStartIncludes();
        if (excludes == null && includes == null) {
            return lazyStart;
        }
        int dotPosition = className.lastIndexOf(46);
        if (dotPosition == -1) {
            return lazyStart;
        }
        String packageName = className.substring(0, dotPosition);
        if (lazyStart) {
            return !(includes != null && !this.contains(includes, packageName) || excludes != null && this.contains(excludes, packageName));
        }
        return excludes != null && this.contains(excludes, packageName);
    }

    private boolean contains(String[] array, String element) {
        int i = 0;
        while (i < array.length) {
            if (array[i].equals(element)) {
                return true;
            }
            ++i;
        }
        return false;
    }

    @Override
    public void addHooks(HookRegistry hookRegistry) {
        hookRegistry.addClassLoadingStatsHook(this);
        hookRegistry.addAdaptorHook(this);
    }

    @Override
    public void addProperties(Properties properties) {
    }

    @Override
    public FrameworkLog createFrameworkLog() {
        return null;
    }

    @Override
    public void frameworkStart(BundleContext context) throws BundleException {
    }

    @Override
    public void frameworkStop(BundleContext context) throws BundleException {
    }

    @Override
    public void frameworkStopping(BundleContext context) {
        if (!Debug.DEBUG_ENABLED) {
            return;
        }
        BundleDescription[] allBundles = this.adaptor.getState().getResolvedBundles();
        StateHelper stateHelper = this.adaptor.getPlatformAdmin().getStateHelper();
        Object[][] cycles = stateHelper.sortBundles(allBundles);
        this.logCycles(cycles);
    }

    @Override
    public void handleRuntimeError(Throwable error) {
    }

    @Override
    public void initialize(BaseAdaptor baseAdaptor) {
        this.adaptor = baseAdaptor;
    }

    @Override
    public URLConnection mapLocationToURLConnection(String location) throws IOException {
        return null;
    }

    private void logCycles(Object[][] cycles) {
        if (cycles.length > 0) {
            StringBuffer cycleText = new StringBuffer("[");
            int i = 0;
            while (i < cycles.length) {
                cycleText.append('[');
                int j = 0;
                while (j < cycles[i].length) {
                    cycleText.append(((BundleDescription)cycles[i][j]).getSymbolicName());
                    cycleText.append(',');
                    ++j;
                }
                cycleText.insert(cycleText.length() - 1, ']');
                ++i;
            }
            cycleText.setCharAt(cycleText.length() - 1, ']');
            String message = NLS.bind(EclipseAdaptorMsg.ECLIPSE_BUNDLESTOPPER_CYCLES_FOUND, cycleText);
            FrameworkLogEntry entry = new FrameworkLogEntry("org.eclipse.osgi", 2, 0, message, 0, null, null);
            this.adaptor.getFrameworkLog().log(entry);
        }
    }

    private static class TerminatingClassNotFoundException
    extends ClassNotFoundException
    implements StatusException {
        private static final long serialVersionUID = -6730732895632169173L;
        private Object cause;

        public TerminatingClassNotFoundException(String message, Throwable cause) {
            super(message, cause);
            this.cause = cause;
        }

        public Object getStatus() {
            return this.cause;
        }

        public int getStatusCode() {
            return 8;
        }
    }
}

