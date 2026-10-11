/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.internal.p2.core.helpers.ServiceHelper
 *  org.eclipse.osgi.service.datalocation.Location
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.framework.BundleContext
 */
package org.eclipse.equinox.internal.p2.engine;

import java.io.File;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import org.eclipse.equinox.internal.p2.core.helpers.ServiceHelper;
import org.eclipse.equinox.internal.p2.engine.EngineActivator;
import org.eclipse.equinox.internal.p2.engine.Messages;
import org.eclipse.osgi.service.datalocation.Location;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.BundleContext;

public class ProfileLock {
    private static final String LOCK_FILENAME = ".lock";
    private final Location location;
    private final Object lock;
    private Thread lockHolder;
    private int waiting;
    static /* synthetic */ Class class$0;

    public ProfileLock(Object lock, File profileDirectory) {
        this.lock = lock;
        this.location = ProfileLock.createLockLocation(profileDirectory);
    }

    private static Location createLockLocation(File parent) {
        BundleContext bundleContext = EngineActivator.getContext();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.osgi.service.datalocation.Location");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Location anyLoc = (Location)ServiceHelper.getService((BundleContext)bundleContext, (String)clazz.getName());
        try {
            URL url = parent.toURL();
            Location location = anyLoc.createLocation(null, url, false);
            location.set(url, false, LOCK_FILENAME);
            return location;
        }
        catch (MalformedURLException e) {
            throw new IllegalArgumentException(NLS.bind((String)Messages.SimpleProfileRegistry_Bad_profile_location, (Object)e.getLocalizedMessage()));
        }
        catch (IllegalStateException e) {
            throw e;
        }
        catch (IOException e) {
            throw new IllegalStateException(e.getLocalizedMessage());
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void checkLocked() {
        Object object = this.lock;
        synchronized (object) {
            if (this.lockHolder == null) {
                throw new IllegalStateException(Messages.SimpleProfileRegistry_Profile_not_locked);
            }
            Thread current = Thread.currentThread();
            if (this.lockHolder != current) {
                throw new IllegalStateException(Messages.thread_not_owner);
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public boolean lock() {
        Object object = this.lock;
        synchronized (object) {
            boolean locationLocked;
            Thread current = Thread.currentThread();
            if (this.lockHolder == current) {
                throw new IllegalStateException(Messages.profile_lock_not_reentrant);
            }
            boolean bl = locationLocked = this.waiting != 0;
            while (true) {
                if (this.lockHolder == null) {
                    try {
                        if (!locationLocked && !this.location.lock()) {
                            return false;
                        }
                        this.lockHolder = current;
                        break;
                    }
                    catch (IOException e) {
                        throw new IllegalStateException(NLS.bind((String)Messages.SimpleProfileRegistry_Profile_not_locked_due_to_exception, (Object)e.getLocalizedMessage()));
                    }
                }
                locationLocked = true;
                ++this.waiting;
                boolean interrupted = false;
                try {
                    try {
                        this.lock.wait();
                    }
                    catch (InterruptedException interruptedException) {
                        interrupted = true;
                        --this.waiting;
                        if (!interrupted) continue;
                        current.interrupt();
                        continue;
                    }
                }
                catch (Throwable throwable) {
                    --this.waiting;
                    if (interrupted) {
                        current.interrupt();
                    }
                    throw throwable;
                }
                --this.waiting;
                if (!interrupted) continue;
                current.interrupt();
            }
            return true;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void unlock() {
        Object object = this.lock;
        synchronized (object) {
            if (this.lockHolder == null) {
                throw new IllegalStateException(Messages.SimpleProfileRegistry_Profile_not_locked);
            }
            Thread current = Thread.currentThread();
            if (this.lockHolder != current) {
                throw new IllegalStateException(Messages.thread_not_owner);
            }
            this.lockHolder = null;
            if (this.waiting == 0) {
                this.location.release();
            } else {
                this.lock.notify();
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public boolean processHoldsLock() {
        Object object = this.lock;
        synchronized (object) {
            return this.lockHolder != null;
        }
    }
}

