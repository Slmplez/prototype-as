/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.IObservableCollection
 *  org.eclipse.core.databinding.observable.Realm
 *  org.eclipse.core.databinding.observable.value.ComputedValue
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.core.databinding;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import org.eclipse.core.databinding.DataBindingContext;
import org.eclipse.core.databinding.ValidationStatusProvider;
import org.eclipse.core.databinding.observable.IObservableCollection;
import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.observable.value.ComputedValue;
import org.eclipse.core.internal.databinding.BindingMessages;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.Status;

public final class AggregateValidationStatus
extends ComputedValue {
    public static final int MERGED = 1;
    public static final int MAX_SEVERITY = 2;
    private int strategy;
    private IObservableCollection validationStatusProviders;
    static /* synthetic */ Class class$0;

    public AggregateValidationStatus(DataBindingContext dbc, int strategy) {
        this(dbc.getValidationRealm(), (IObservableCollection)dbc.getValidationStatusProviders(), strategy);
    }

    public AggregateValidationStatus(IObservableCollection validationStatusProviders, int strategy) {
        this(Realm.getDefault(), validationStatusProviders, strategy);
    }

    public AggregateValidationStatus(Realm realm, IObservableCollection validationStatusProviders, int strategy) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.core.runtime.IStatus");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        super(realm, (Object)clazz);
        this.validationStatusProviders = validationStatusProviders;
        this.strategy = strategy;
    }

    protected Object calculate() {
        IStatus result = this.strategy == 1 ? AggregateValidationStatus.getStatusMerged((Collection)this.validationStatusProviders) : AggregateValidationStatus.getStatusMaxSeverity((Collection)this.validationStatusProviders);
        return result;
    }

    public static IStatus getStatusMerged(Collection validationStatusProviders) {
        IStatus status;
        ArrayList<IStatus> statuses = new ArrayList<IStatus>();
        Iterator it = validationStatusProviders.iterator();
        while (it.hasNext()) {
            ValidationStatusProvider validationStatusProvider = (ValidationStatusProvider)it.next();
            status = (IStatus)validationStatusProvider.getValidationStatus().getValue();
            if (status.isOK()) continue;
            statuses.add(status);
        }
        if (statuses.size() == 1) {
            return (IStatus)statuses.get(0);
        }
        if (!statuses.isEmpty()) {
            MultiStatus result = new MultiStatus("org.eclipse.core.databinding", 0, BindingMessages.getString("MultipleProblems"), null);
            Iterator it2 = statuses.iterator();
            while (it2.hasNext()) {
                status = (IStatus)it2.next();
                result.merge(status);
            }
            return result;
        }
        return Status.OK_STATUS;
    }

    public static IStatus getStatusMaxSeverity(Collection validationStatusProviders) {
        int maxSeverity = 0;
        IStatus maxStatus = Status.OK_STATUS;
        Iterator it = validationStatusProviders.iterator();
        while (it.hasNext()) {
            ValidationStatusProvider validationStatusProvider = (ValidationStatusProvider)it.next();
            IStatus status = (IStatus)validationStatusProvider.getValidationStatus().getValue();
            if (status.getSeverity() <= maxSeverity) continue;
            maxSeverity = status.getSeverity();
            maxStatus = status;
        }
        return maxStatus;
    }
}

