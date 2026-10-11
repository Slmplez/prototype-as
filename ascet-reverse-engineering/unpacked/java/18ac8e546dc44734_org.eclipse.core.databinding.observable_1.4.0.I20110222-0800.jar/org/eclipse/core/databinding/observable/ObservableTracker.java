/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.core.databinding.observable;

import java.util.Set;
import org.eclipse.core.databinding.observable.IChangeListener;
import org.eclipse.core.databinding.observable.IObservable;
import org.eclipse.core.databinding.observable.IStaleListener;
import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.util.Policy;
import org.eclipse.core.internal.databinding.identity.IdentitySet;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;

public class ObservableTracker {
    private static ThreadLocal currentChangeListener = new ThreadLocal();
    private static ThreadLocal currentStaleListener = new ThreadLocal();
    private static ThreadLocal currentGetterCalledSet = new ThreadLocal();
    private static ThreadLocal currentObservableCreatedSet = new ThreadLocal();
    private static ThreadLocal currentIgnoreCount = new ThreadLocal();

    public static IObservable[] runAndMonitor(Runnable runnable, IChangeListener changeListener, IStaleListener staleListener) {
        Set lastObservableSet = (Set)currentGetterCalledSet.get();
        IChangeListener lastChangeListener = (IChangeListener)currentChangeListener.get();
        IStaleListener lastStaleListener = (IStaleListener)currentStaleListener.get();
        Integer lastIgnore = (Integer)currentIgnoreCount.get();
        IdentitySet observableSet = new IdentitySet();
        currentGetterCalledSet.set(observableSet);
        currentChangeListener.set(changeListener);
        currentStaleListener.set(staleListener);
        currentIgnoreCount.set(null);
        try {
            runnable.run();
        }
        finally {
            currentGetterCalledSet.set(lastObservableSet);
            currentChangeListener.set(lastChangeListener);
            currentStaleListener.set(lastStaleListener);
            ObservableTracker.checkUnmatchedIgnore(runnable);
            currentIgnoreCount.set(lastIgnore);
        }
        return observableSet.toArray((T[])new IObservable[observableSet.size()]);
    }

    public static IObservable[] runAndCollect(Runnable runnable) {
        Set lastObservableCreatedSet = (Set)currentObservableCreatedSet.get();
        Integer lastIgnore = (Integer)currentIgnoreCount.get();
        IdentitySet observableSet = new IdentitySet();
        currentObservableCreatedSet.set(observableSet);
        currentIgnoreCount.set(null);
        try {
            runnable.run();
        }
        finally {
            currentObservableCreatedSet.set(lastObservableCreatedSet);
            ObservableTracker.checkUnmatchedIgnore(runnable);
            currentIgnoreCount.set(lastIgnore);
        }
        return observableSet.toArray((T[])new IObservable[observableSet.size()]);
    }

    private static void checkUnmatchedIgnore(Runnable runnable) {
        if (ObservableTracker.isIgnore()) {
            Policy.getLog().log((IStatus)new Status(4, "org.eclipse.core.databinding", "There were " + currentIgnoreCount.get() + " unmatched setIgnore(true) invocations in runnable " + runnable));
        }
    }

    public static void setIgnore(boolean ignore) {
        Integer lastCount = (Integer)currentIgnoreCount.get();
        int newCount = (lastCount == null ? 0 : lastCount) + (ignore ? 1 : -1);
        if (newCount < 0) {
            throw new IllegalStateException("Ignore count is already zero");
        }
        currentIgnoreCount.set(newCount == 0 ? null : new Integer(newCount));
    }

    public static void runAndIgnore(Runnable runnable) {
        ObservableTracker.setIgnore(true);
        try {
            runnable.run();
        }
        finally {
            ObservableTracker.setIgnore(false);
        }
    }

    private static String toString(IObservable observable) {
        return String.valueOf(observable.getClass().getName()) + "@" + Integer.toHexString(System.identityHashCode(observable));
    }

    private static boolean isIgnore() {
        return currentIgnoreCount.get() != null;
    }

    public static void getterCalled(IObservable observable) {
        Realm realm;
        if (observable.isDisposed()) {
            Assert.isTrue((boolean)false, (String)("Getter called on disposed observable " + ObservableTracker.toString(observable)));
        }
        if (!(realm = observable.getRealm()).isCurrent()) {
            Assert.isTrue((boolean)false, (String)("Getter called outside realm of observable " + ObservableTracker.toString(observable)));
        }
        if (ObservableTracker.isIgnore()) {
            return;
        }
        Set getterCalledSet = (Set)currentGetterCalledSet.get();
        if (getterCalledSet != null && getterCalledSet.add(observable)) {
            IStaleListener staleListener;
            IChangeListener changeListener = (IChangeListener)currentChangeListener.get();
            if (changeListener != null) {
                observable.addChangeListener(changeListener);
            }
            if ((staleListener = (IStaleListener)currentStaleListener.get()) != null) {
                observable.addStaleListener(staleListener);
            }
        }
    }

    public static void observableCreated(IObservable observable) {
        if (ObservableTracker.isIgnore()) {
            return;
        }
        Set observableCreatedSet = (Set)currentObservableCreatedSet.get();
        if (observableCreatedSet != null) {
            observableCreatedSet.add(observable);
        }
    }
}

