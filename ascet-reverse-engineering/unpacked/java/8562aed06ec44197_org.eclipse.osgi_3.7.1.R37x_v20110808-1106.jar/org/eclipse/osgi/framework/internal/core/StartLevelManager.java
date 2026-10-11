/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.internal.core;

import java.io.IOException;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.core.runtime.internal.adaptor.ContextFinder;
import org.eclipse.osgi.framework.debug.Debug;
import org.eclipse.osgi.framework.eventmgr.CopyOnWriteIdentityMap;
import org.eclipse.osgi.framework.eventmgr.EventDispatcher;
import org.eclipse.osgi.framework.eventmgr.EventManager;
import org.eclipse.osgi.framework.eventmgr.ListenerQueue;
import org.eclipse.osgi.framework.internal.core.AbstractBundle;
import org.eclipse.osgi.framework.internal.core.BundleRepository;
import org.eclipse.osgi.framework.internal.core.Framework;
import org.eclipse.osgi.framework.internal.core.Msg;
import org.eclipse.osgi.framework.internal.core.StartLevelEvent;
import org.eclipse.osgi.framework.internal.core.Util;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleException;
import org.osgi.framework.FrameworkListener;
import org.osgi.service.startlevel.StartLevel;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class StartLevelManager
implements EventDispatcher<Object, Object, StartLevelEvent>,
StartLevel {
    protected static EventManager eventManager;
    protected static Map<Object, Object> startLevelListeners;
    protected int initialBundleStartLevel = 1;
    private int activeSL = 0;
    private final Object lock = new Object();
    private final Framework framework;

    protected StartLevelManager(Framework framework) {
        this.framework = framework;
    }

    protected void initialize() {
        this.initialBundleStartLevel = this.framework.adaptor.getInitialBundleStartLevel();
        eventManager = new EventManager("Start Level Event Dispatcher");
        startLevelListeners = new CopyOnWriteIdentityMap<Object, Object>();
        startLevelListeners.put(this, this);
    }

    protected void cleanup() {
        eventManager.close();
        eventManager = null;
        startLevelListeners.clear();
        startLevelListeners = null;
    }

    @Override
    public int getInitialBundleStartLevel() {
        return this.initialBundleStartLevel;
    }

    @Override
    public void setInitialBundleStartLevel(int startlevel) {
        this.framework.checkAdminPermission(this.framework.systemBundle, "startlevel");
        if (startlevel <= 0) {
            throw new IllegalArgumentException();
        }
        this.initialBundleStartLevel = startlevel;
        this.framework.adaptor.setInitialBundleStartLevel(startlevel);
    }

    @Override
    public int getStartLevel() {
        return this.activeSL;
    }

    public void setStartLevel(int newSL, Bundle callerBundle, FrameworkListener[] listeners) {
        if (newSL <= 0) {
            throw new IllegalArgumentException(NLS.bind(Msg.STARTLEVEL_EXCEPTION_INVALID_REQUESTED_STARTLEVEL, new StringBuffer().append(newSL).toString()));
        }
        this.framework.checkAdminPermission(this.framework.systemBundle, "startlevel");
        if (Debug.DEBUG_STARTLEVEL) {
            Debug.println(new StringBuffer("StartLevelImpl: setStartLevel: ").append(newSL).append("; callerBundle = ").append(callerBundle.getBundleId()).toString());
        }
        this.issueEvent(new StartLevelEvent(1, newSL, (AbstractBundle)callerBundle, listeners));
    }

    @Override
    public void setStartLevel(int newSL) {
        this.setStartLevel(newSL, this.framework.systemBundle, new FrameworkListener[0]);
    }

    protected void shutdown() {
        this.doSetStartLevel(0, new FrameworkListener[0]);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void doSetStartLevel(int newSL, FrameworkListener[] listeners) {
        Object object = this.lock;
        synchronized (object) {
            ClassLoader previousTCCL = Thread.currentThread().getContextClassLoader();
            ContextFinder contextFinder = this.framework.getContextFinder();
            if (contextFinder == previousTCCL) {
                contextFinder = null;
            } else {
                Thread.currentThread().setContextClassLoader(contextFinder);
            }
            try {
                try {
                    int tempSL = this.activeSL;
                    if (newSL > tempSL) {
                        boolean launching = tempSL == 0;
                        int i = tempSL;
                        while (i < newSL) {
                            if (Debug.DEBUG_STARTLEVEL) {
                                Debug.println(new StringBuffer("sync - incrementing Startlevel from ").append(tempSL).toString());
                            }
                            ++tempSL;
                            this.incFWSL(i + 1, this.getInstalledBundles(this.framework.bundles, false));
                            ++i;
                        }
                        if (launching) {
                            this.framework.systemBundle.state = 32;
                            this.framework.publishBundleEvent(2, this.framework.systemBundle);
                            this.framework.publishFrameworkEvent(1, this.framework.systemBundle, null);
                        }
                    } else {
                        AbstractBundle[] sortedBundles = this.getInstalledBundles(this.framework.bundles, true);
                        int i = tempSL;
                        while (i > newSL) {
                            if (Debug.DEBUG_STARTLEVEL) {
                                Debug.println(new StringBuffer("sync - decrementing Startlevel from ").append(tempSL).toString());
                            }
                            --tempSL;
                            this.decFWSL(i - 1, sortedBundles);
                            --i;
                        }
                        if (newSL == 0) {
                            this.suspendAllBundles(this.framework.bundles);
                            this.unloadAllBundles(this.framework.bundles);
                        }
                    }
                    this.framework.publishFrameworkEvent(8, this.framework.systemBundle, null, listeners);
                    if (Debug.DEBUG_STARTLEVEL) {
                        Debug.println("StartLevelImpl: doSetStartLevel: STARTLEVEL_CHANGED event published");
                    }
                }
                catch (Error e) {
                    this.framework.publishFrameworkEvent(2, this.framework.systemBundle, e, listeners);
                    throw e;
                }
                catch (RuntimeException e) {
                    this.framework.publishFrameworkEvent(2, this.framework.systemBundle, e, listeners);
                    throw e;
                }
            }
            finally {
                if (contextFinder != null) {
                    Thread.currentThread().setContextClassLoader(previousTCCL);
                }
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void saveActiveStartLevel(int newSL) {
        Object object = this.lock;
        synchronized (object) {
            this.activeSL = newSL;
        }
    }

    @Override
    public boolean isBundlePersistentlyStarted(Bundle bundle) {
        return ((AbstractBundle)bundle).isPersistentlyStarted();
    }

    @Override
    public boolean isBundleActivationPolicyUsed(Bundle bundle) {
        return ((AbstractBundle)bundle).isActivationPolicyUsed();
    }

    @Override
    public int getBundleStartLevel(Bundle bundle) {
        return ((AbstractBundle)bundle).getStartLevel();
    }

    @Override
    public void setBundleStartLevel(Bundle bundle, int newSL) {
        block11: {
            String exceptionText = null;
            if (bundle.getBundleId() == 0L) {
                exceptionText = Msg.STARTLEVEL_CANT_CHANGE_SYSTEMBUNDLE_STARTLEVEL;
            } else if (bundle.getState() == 1) {
                exceptionText = NLS.bind(Msg.BUNDLE_UNINSTALLED_EXCEPTION, ((AbstractBundle)bundle).getBundleData().getLocation());
            } else if (newSL <= 0) {
                exceptionText = NLS.bind(Msg.STARTLEVEL_EXCEPTION_INVALID_REQUESTED_STARTLEVEL, new StringBuffer().append(newSL).toString());
            }
            if (exceptionText != null) {
                throw new IllegalArgumentException(exceptionText);
            }
            this.framework.checkAdminPermission(bundle, "execute");
            try {
                if (newSL == ((AbstractBundle)bundle).getInternalStartLevel()) break block11;
                final AbstractBundle b = (AbstractBundle)bundle;
                b.getBundleData().setStartLevel(newSL);
                try {
                    AccessController.doPrivileged(new PrivilegedExceptionAction<Object>(){

                        @Override
                        public Object run() throws Exception {
                            b.getBundleData().save();
                            return null;
                        }
                    });
                }
                catch (PrivilegedActionException e) {
                    if (e.getException() instanceof IOException) {
                        throw (IOException)e.getException();
                    }
                    throw (RuntimeException)e.getException();
                }
                this.issueEvent(new StartLevelEvent(0, newSL, (AbstractBundle)bundle, new FrameworkListener[0]));
            }
            catch (IOException e) {
                this.framework.publishFrameworkEvent(2, bundle, e);
            }
        }
    }

    private void issueEvent(StartLevelEvent sle) {
        ListenerQueue<Object, Object, StartLevelEvent> queue = new ListenerQueue<Object, Object, StartLevelEvent>(eventManager);
        queue.queueListeners(startLevelListeners.entrySet(), this);
        queue.dispatchEventAsynchronous(sle.getType(), sle);
    }

    @Override
    public void dispatchEvent(Object listener, Object listenerObject, int eventAction, StartLevelEvent event) {
        try {
            switch (eventAction) {
                case 0: {
                    this.setBundleSL(event);
                    break;
                }
                case 1: {
                    this.doSetStartLevel(event.getNewSL(), event.getListeners());
                }
            }
        }
        catch (Throwable t) {
            this.framework.adaptor.handleRuntimeError(t);
        }
    }

    protected void incFWSL(int incToSL, AbstractBundle[] launchBundles) {
        if (Debug.DEBUG_STARTLEVEL) {
            Debug.println(new StringBuffer("SLL: incFWSL: saving activeSL of ").append(incToSL).toString());
        }
        this.saveActiveStartLevel(incToSL);
        this.resumeBundles(launchBundles, incToSL);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    AbstractBundle[] getInstalledBundles(BundleRepository bundles, boolean sortByDependency) {
        Object[] installedBundles;
        BundleRepository bundleRepository = bundles;
        synchronized (bundleRepository) {
            List<AbstractBundle> allBundles = bundles.getBundles();
            installedBundles = new AbstractBundle[allBundles.size()];
            allBundles.toArray(installedBundles);
            Util.sort(installedBundles, 0, installedBundles.length);
            if (sortByDependency) {
                this.sortByDependency((AbstractBundle[])installedBundles);
            }
        }
        return installedBundles;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void sortByDependency(AbstractBundle[] bundles) {
        BundleRepository bundleRepository = this.framework.bundles;
        synchronized (bundleRepository) {
            if (bundles.length <= 1) {
                return;
            }
            int currentSL = bundles[0].getInternalStartLevel();
            int currentSLindex = 0;
            boolean lazy = false;
            int i = 0;
            while (i < bundles.length) {
                if (currentSL != bundles[i].getInternalStartLevel()) {
                    if (lazy) {
                        this.sortByDependencies(bundles, currentSLindex, i);
                    }
                    currentSL = bundles[i].getInternalStartLevel();
                    currentSLindex = i;
                    lazy = false;
                }
                lazy |= (bundles[i].getBundleData().getStatus() & 2) != 0;
                ++i;
            }
            if (lazy) {
                this.sortByDependencies(bundles, currentSLindex, bundles.length);
            }
        }
    }

    private void sortByDependencies(AbstractBundle[] bundles, int start, int end) {
        if (end - start <= 1) {
            return;
        }
        ArrayList<BundleDescription> descList = new ArrayList<BundleDescription>(end - start);
        ArrayList<AbstractBundle> missingDescs = new ArrayList<AbstractBundle>(0);
        int i = start;
        while (i < end) {
            BundleDescription desc = bundles[i].getBundleDescription();
            if (desc != null) {
                descList.add(desc);
            } else {
                missingDescs.add(bundles[i]);
            }
            ++i;
        }
        if (descList.size() <= 1) {
            return;
        }
        BundleDescription[] descriptions = descList.toArray(new BundleDescription[descList.size()]);
        this.framework.adaptor.getPlatformAdmin().getStateHelper().sortBundles(descriptions);
        int i2 = start;
        while (i2 < descriptions.length + start) {
            bundles[i2] = this.framework.bundles.getBundle(descriptions[i2 - start].getBundleId());
            ++i2;
        }
        if (missingDescs.size() > 0) {
            Iterator missing = missingDescs.iterator();
            int i3 = start + descriptions.length;
            while (i3 < end && missing.hasNext()) {
                bundles[i3] = (AbstractBundle)missing.next();
                ++i3;
            }
        }
    }

    private void resumeBundles(AbstractBundle[] launch, int currentSL) {
        this.resumeBundles(launch, true, currentSL);
        this.resumeBundles(launch, false, currentSL);
    }

    private void resumeBundles(AbstractBundle[] launch, boolean lazyOnly, int currentSL) {
        int i = 0;
        while (i < launch.length && !this.framework.isForcedRestart()) {
            int bsl = launch[i].getInternalStartLevel();
            if (bsl >= currentSL) {
                if (bsl != currentSL) break;
                if (Debug.DEBUG_STARTLEVEL) {
                    Debug.println(new StringBuffer("SLL: Active sl = ").append(currentSL).append("; Bundle ").append(launch[i].getBundleId()).append(" sl = ").append(bsl).toString());
                }
                boolean isLazyStart = launch[i].isLazyStart();
                if (lazyOnly ? isLazyStart : !isLazyStart) {
                    this.framework.resumeBundle(launch[i]);
                }
            }
            ++i;
        }
    }

    protected void decFWSL(int decToSL, AbstractBundle[] shutdown) {
        if (Debug.DEBUG_STARTLEVEL) {
            Debug.println(new StringBuffer("SLL: decFWSL: saving activeSL of ").append(decToSL).toString());
        }
        this.saveActiveStartLevel(decToSL);
        if (decToSL == 0) {
            return;
        }
        int i = shutdown.length - 1;
        while (i >= 0) {
            int bsl = shutdown[i].getInternalStartLevel();
            if (bsl <= decToSL + 1) {
                if (bsl <= decToSL) break;
                if (shutdown[i].isActive()) {
                    if (Debug.DEBUG_STARTLEVEL) {
                        Debug.println(new StringBuffer("SLL: stopping bundle ").append(shutdown[i].getBundleId()).toString());
                    }
                    this.framework.suspendBundle(shutdown[i], false);
                }
            }
            --i;
        }
    }

    private void suspendAllBundles(BundleRepository bundles) {
        boolean changed;
        do {
            changed = false;
            AbstractBundle[] shutdown = this.getInstalledBundles(bundles, false);
            int i = shutdown.length - 1;
            while (i >= 0) {
                AbstractBundle bundle = shutdown[i];
                if (this.framework.suspendBundle(bundle, false)) {
                    if (Debug.DEBUG_STARTLEVEL) {
                        Debug.println(new StringBuffer("SLL: stopped bundle ").append(bundle.getBundleId()).toString());
                    }
                    changed = true;
                }
                --i;
            }
        } while (changed);
        try {
            this.framework.systemBundle.context.stop();
        }
        catch (BundleException sbe) {
            if (Debug.DEBUG_STARTLEVEL) {
                Debug.println(new StringBuffer("SLL: Bundle suspend exception: ").append(sbe.getMessage()).toString());
                Debug.printStackTrace(sbe.getNestedException() == null ? sbe : sbe.getNestedException());
            }
            this.framework.publishFrameworkEvent(2, this.framework.systemBundle, sbe);
        }
        this.framework.systemBundle.state = 4;
        this.framework.publishBundleEvent(4, this.framework.systemBundle);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private void unloadAllBundles(BundleRepository bundles) {
        BundleRepository bundleRepository = bundles;
        synchronized (bundleRepository) {
            List<AbstractBundle> allBundles = bundles.getBundles();
            int size = allBundles.size();
            int i = 0;
            while (i < size) {
                AbstractBundle bundle = allBundles.get(i);
                if (Debug.DEBUG_STARTLEVEL) {
                    Debug.println(new StringBuffer("SLL: Trying to unload bundle ").append(bundle).toString());
                }
                bundle.refresh();
                try {
                    bundle.getBundleData().close();
                }
                catch (IOException iOException) {}
                ++i;
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void setBundleSL(StartLevelEvent startLevelEvent) {
        Object object = this.lock;
        synchronized (object) {
            int currentSL = this.getStartLevel();
            int newSL = startLevelEvent.getNewSL();
            AbstractBundle bundle = startLevelEvent.getBundle();
            if (Debug.DEBUG_STARTLEVEL) {
                Debug.print(new StringBuffer("SLL: bundle active=").append(bundle.isActive()).toString());
                Debug.print(new StringBuffer("; newSL = ").append(newSL).toString());
                Debug.println(new StringBuffer("; activeSL = ").append(currentSL).toString());
            }
            if (bundle.isActive() && newSL > currentSL) {
                if (Debug.DEBUG_STARTLEVEL) {
                    Debug.println(new StringBuffer("SLL: stopping bundle ").append(bundle.getBundleId()).toString());
                }
                this.framework.suspendBundle(bundle, false);
            } else if (!bundle.isActive() && newSL <= currentSL) {
                if (Debug.DEBUG_STARTLEVEL) {
                    Debug.println(new StringBuffer("SLL: starting bundle ").append(bundle.getBundleId()).toString());
                }
                this.framework.resumeBundle(bundle);
            }
            if (Debug.DEBUG_STARTLEVEL) {
                Debug.println(new StringBuffer("SLL: Bundle Startlevel set to ").append(newSL).toString());
            }
        }
    }
}

