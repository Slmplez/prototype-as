/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.DataBindingContext
 *  org.eclipse.core.databinding.ValidationStatusProvider
 *  org.eclipse.core.databinding.observable.value.ComputedValue
 *  org.eclipse.core.runtime.IStatus
 */
package org.eclipse.jface.databinding.dialog;

import java.util.Collection;
import java.util.Iterator;
import org.eclipse.core.databinding.DataBindingContext;
import org.eclipse.core.databinding.ValidationStatusProvider;
import org.eclipse.core.databinding.observable.value.ComputedValue;
import org.eclipse.core.runtime.IStatus;

class MaxSeverityValidationStatusProvider
extends ComputedValue {
    private Collection validationStatusProviders;
    static /* synthetic */ Class class$0;

    public MaxSeverityValidationStatusProvider(DataBindingContext dbc) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.core.databinding.ValidationStatusProvider");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        super((Object)clazz);
        this.validationStatusProviders = dbc.getValidationStatusProviders();
    }

    protected Object calculate() {
        int maxSeverity = 0;
        ValidationStatusProvider maxSeverityProvider = null;
        Iterator it = this.validationStatusProviders.iterator();
        while (it.hasNext()) {
            ValidationStatusProvider provider = (ValidationStatusProvider)it.next();
            IStatus status = (IStatus)provider.getValidationStatus().getValue();
            if (status.getSeverity() <= maxSeverity) continue;
            maxSeverity = status.getSeverity();
            maxSeverityProvider = provider;
        }
        return maxSeverityProvider;
    }

    public synchronized void dispose() {
        this.validationStatusProviders = null;
        super.dispose();
    }
}

