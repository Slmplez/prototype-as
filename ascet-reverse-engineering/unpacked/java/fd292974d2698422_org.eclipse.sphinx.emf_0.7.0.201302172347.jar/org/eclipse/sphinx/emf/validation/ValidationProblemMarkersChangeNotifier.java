/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.emf.ecore.EObject
 */
package org.eclipse.sphinx.emf.validation;

import java.util.EventObject;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.sphinx.emf.validation.IValidationProblemMarkersChangeListener;

public final class ValidationProblemMarkersChangeNotifier {
    public static ValidationProblemMarkersChangeNotifier INSTANCE = new ValidationProblemMarkersChangeNotifier();
    protected ListenerList listeners = new ListenerList();

    private ValidationProblemMarkersChangeNotifier() {
    }

    public void addListener(IValidationProblemMarkersChangeListener listener) {
        this.listeners.add((Object)listener);
    }

    public void removeListener(IValidationProblemMarkersChangeListener listener) {
        this.listeners.remove((Object)listener);
    }

    public void fireValidationProblemMarkersChanged(EObject eObject) {
        Object[] objectArray = this.listeners.getListeners();
        int n = objectArray.length;
        int n2 = 0;
        while (n2 < n) {
            Object listener = objectArray[n2];
            ((IValidationProblemMarkersChangeListener)listener).validationProblemMarkersChanged(new EventObject(eObject));
            ++n2;
        }
    }
}

