/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.baseadaptor;

import java.io.File;
import java.io.IOException;
import org.eclipse.osgi.framework.internal.core.FrameworkProperties;
import org.eclipse.osgi.internal.module.ResolverImpl;
import org.eclipse.osgi.internal.resolver.ReadOnlyState;
import org.eclipse.osgi.internal.resolver.StateHelperImpl;
import org.eclipse.osgi.internal.resolver.StateImpl;
import org.eclipse.osgi.internal.resolver.StateObjectFactoryImpl;
import org.eclipse.osgi.service.resolver.DisabledInfo;
import org.eclipse.osgi.service.resolver.PlatformAdmin;
import org.eclipse.osgi.service.resolver.Resolver;
import org.eclipse.osgi.service.resolver.State;
import org.eclipse.osgi.service.resolver.StateHelper;
import org.eclipse.osgi.service.resolver.StateObjectFactory;
import org.osgi.framework.BundleContext;
import org.osgi.framework.BundleException;

public class StateManager
implements PlatformAdmin,
Runnable {
    public static boolean DEBUG = false;
    public static boolean DEBUG_READER = false;
    public static boolean DEBUG_PLATFORM_ADMIN = false;
    public static boolean DEBUG_PLATFORM_ADMIN_RESOLVER = false;
    public static boolean MONITOR_PLATFORM_ADMIN = false;
    public static String PROP_NO_LAZY_LOADING = "osgi.noLazyStateLoading";
    public static String PROP_LAZY_UNLOADING_TIME = "osgi.lazyStateUnloadingTime";
    private long expireTime = 300000L;
    private long readStartupTime;
    private StateImpl systemState;
    private StateObjectFactoryImpl factory;
    private long lastTimeStamp;
    private boolean cachedState = false;
    private File stateFile;
    private File lazyFile;
    private long expectedTimeStamp;
    private BundleContext context;
    private Thread dataManagerThread;

    public StateManager(File stateFile, File lazyFile, BundleContext context) {
        this(stateFile, lazyFile, context, -1L);
    }

    public StateManager(File stateFile, File lazyFile, BundleContext context, long expectedTimeStamp) {
        this.stateFile = stateFile;
        this.lazyFile = lazyFile;
        this.context = context;
        this.expectedTimeStamp = expectedTimeStamp;
        this.factory = new StateObjectFactoryImpl();
    }

    public void shutdown(File saveStateFile, File saveLazyFile) throws IOException {
        this.writeState(this.systemState, saveStateFile, saveLazyFile);
        this.stopDataManager();
    }

    public void update(File updateStateFile, File updateLazyFile) throws IOException {
        this.writeState(this.systemState, updateStateFile, updateLazyFile);
        this.lastTimeStamp = this.systemState.getTimeStamp();
    }

    private void internalReadSystemState() {
        if (this.stateFile == null || !this.stateFile.isFile()) {
            return;
        }
        if (DEBUG_READER) {
            this.readStartupTime = System.currentTimeMillis();
        }
        try {
            boolean lazyLoad = Boolean.valueOf(FrameworkProperties.getProperty(PROP_NO_LAZY_LOADING)) == false;
            this.systemState = this.factory.readSystemState(this.context, this.stateFile, this.lazyFile, lazyLoad, this.expectedTimeStamp);
            if (this.systemState == null || !this.initializeSystemState()) {
                this.systemState = null;
                return;
            }
            try {
                this.cachedState = true;
                try {
                    this.expireTime = Long.parseLong(FrameworkProperties.getProperty(PROP_LAZY_UNLOADING_TIME, Long.toString(this.expireTime)));
                }
                catch (NumberFormatException numberFormatException) {
                    this.expireTime = 0L;
                }
                if (lazyLoad && this.expireTime > 0L) {
                    this.startDataManager();
                }
            }
            catch (IOException ioe) {
                ioe.printStackTrace();
            }
        }
        finally {
            if (DEBUG_READER) {
                System.out.println("Time to read state: " + (System.currentTimeMillis() - this.readStartupTime));
            }
        }
    }

    private synchronized void startDataManager() {
        if (this.dataManagerThread != null) {
            return;
        }
        this.dataManagerThread = new Thread((Runnable)this, "State Data Manager");
        this.dataManagerThread.setDaemon(true);
        this.dataManagerThread.start();
    }

    public synchronized void stopDataManager() {
        if (this.dataManagerThread == null) {
            return;
        }
        this.dataManagerThread.interrupt();
        this.dataManagerThread = null;
    }

    private void writeState(StateImpl state, File saveStateFile, File saveLazyFile) throws IOException {
        if (state == null) {
            return;
        }
        if (this.cachedState && !this.saveNeeded()) {
            return;
        }
        state.fullyLoad();
        this.factory.writeState(state, saveStateFile, saveLazyFile);
    }

    private boolean initializeSystemState() {
        this.systemState.setResolver(this.createResolver(System.getSecurityManager() != null));
        this.lastTimeStamp = this.systemState.getTimeStamp();
        return !this.systemState.setPlatformProperties(FrameworkProperties.getProperties());
    }

    public synchronized State createSystemState() {
        if (this.systemState == null) {
            this.systemState = this.factory.createSystemState(this.context);
            this.initializeSystemState();
        }
        return this.systemState;
    }

    public synchronized State readSystemState() {
        if (this.systemState == null) {
            this.internalReadSystemState();
        }
        return this.systemState;
    }

    public State getSystemState() {
        return this.systemState;
    }

    public long getCachedTimeStamp() {
        return this.lastTimeStamp;
    }

    public boolean saveNeeded() {
        return this.systemState.getTimeStamp() != this.lastTimeStamp || this.systemState.dynamicCacheChanged();
    }

    public State getState(boolean mutable) {
        return mutable ? this.factory.createState(this.systemState) : new ReadOnlyState(this.systemState);
    }

    public State getState() {
        return this.getState(true);
    }

    public StateObjectFactory getFactory() {
        return this.factory;
    }

    public synchronized void commit(State state) throws BundleException {
        throw new IllegalArgumentException("PlatformAdmin.commit() not supported");
    }

    public Resolver getResolver() {
        return this.createResolver(false);
    }

    public Resolver createResolver() {
        return this.createResolver(false);
    }

    private Resolver createResolver(boolean checkPermissions) {
        return new ResolverImpl(checkPermissions);
    }

    public StateHelper getStateHelper() {
        return StateHelperImpl.getInstance();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void run() {
        long timeStamp = this.lastTimeStamp;
        while (true) {
            try {
                Thread.sleep(this.expireTime);
            }
            catch (InterruptedException interruptedException) {
                return;
            }
            if (this.systemState == null) continue;
            StateImpl stateImpl = this.systemState;
            synchronized (stateImpl) {
                if (!this.systemState.unloadLazyData(timeStamp)) {
                    return;
                }
            }
        }
    }

    public void addDisabledInfo(DisabledInfo disabledInfo) {
        if (this.systemState == null) {
            throw new IllegalStateException();
        }
        this.systemState.addDisabledInfo(disabledInfo);
    }

    public void removeDisabledInfo(DisabledInfo disabledInfo) {
        if (this.systemState == null) {
            throw new IllegalStateException();
        }
        this.systemState.removeDisabledInfo(disabledInfo);
    }
}

