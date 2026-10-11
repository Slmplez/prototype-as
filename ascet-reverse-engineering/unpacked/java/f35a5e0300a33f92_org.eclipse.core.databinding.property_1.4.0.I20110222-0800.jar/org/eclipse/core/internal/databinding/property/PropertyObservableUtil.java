/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.DisposeEvent
 *  org.eclipse.core.databinding.observable.IDisposeListener
 *  org.eclipse.core.databinding.observable.IObservable
 */
package org.eclipse.core.internal.databinding.property;

import org.eclipse.core.databinding.observable.DisposeEvent;
import org.eclipse.core.databinding.observable.IDisposeListener;
import org.eclipse.core.databinding.observable.IObservable;

public class PropertyObservableUtil {
    public static void cascadeDispose(IObservable source, final IObservable target) {
        source.addDisposeListener(new IDisposeListener(){

            public void handleDispose(DisposeEvent staleEvent) {
                target.dispose();
            }
        });
    }
}

