/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.emf.common.notify.Notification
 */
package org.eclipse.emf.validation.service;

import org.eclipse.core.runtime.IStatus;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.validation.service.IValidator;
import org.eclipse.emf.validation.util.FilteredCollection;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ILiveValidator
extends IValidator<Notification> {
    @Override
    public IStatus validate(Notification var1);

    public FilteredCollection.Filter<Notification> getNotificationFilter();

    public void setNotificationFilter(FilteredCollection.Filter<Notification> var1);
}

