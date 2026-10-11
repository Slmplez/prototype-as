/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.Realm
 *  org.eclipse.core.databinding.observable.list.IObservableList
 *  org.eclipse.core.databinding.observable.list.ListDiff
 *  org.eclipse.core.databinding.property.list.ListProperty
 */
package org.eclipse.core.internal.databinding;

import java.util.List;
import org.eclipse.core.databinding.DataBindingContext;
import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.observable.list.IObservableList;
import org.eclipse.core.databinding.observable.list.ListDiff;
import org.eclipse.core.databinding.property.list.ListProperty;

public final class DataBindingContextValidationStatusProvidersProperty
extends ListProperty {
    static /* synthetic */ Class class$0;

    public Object getElementType() {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.core.databinding.ValidationStatusProvider");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return clazz;
    }

    protected List doGetList(Object source) {
        return ((DataBindingContext)source).getValidationStatusProviders();
    }

    protected void doSetList(Object source, List list) {
        throw new UnsupportedOperationException(String.valueOf(this.toString()) + " is unmodifiable");
    }

    protected void doUpdateList(Object source, ListDiff diff) {
        throw new UnsupportedOperationException(String.valueOf(this.toString()) + " is unmodifiable");
    }

    public IObservableList observe(Realm realm, Object source) {
        return ((DataBindingContext)source).getValidationStatusProviders();
    }

    public String toString() {
        return "Binding#validationStatusProviders[] <ValidationStatusProvider>";
    }
}

