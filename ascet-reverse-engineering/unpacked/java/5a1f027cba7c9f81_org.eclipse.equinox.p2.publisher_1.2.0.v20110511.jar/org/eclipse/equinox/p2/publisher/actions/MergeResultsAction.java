/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.equinox.p2.publisher.actions;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.p2.publisher.AbstractPublisherAction;
import org.eclipse.equinox.p2.publisher.IPublisherAction;
import org.eclipse.equinox.p2.publisher.IPublisherInfo;
import org.eclipse.equinox.p2.publisher.IPublisherResult;
import org.eclipse.equinox.p2.publisher.PublisherResult;

public class MergeResultsAction
extends AbstractPublisherAction {
    private IPublisherAction[] actions;
    private int mode;
    static /* synthetic */ Class class$0;

    public MergeResultsAction(IPublisherAction[] actions, int mode) {
        this.actions = actions;
        this.mode = mode;
    }

    public IStatus perform(IPublisherInfo publisherInfo, IPublisherResult results, IProgressMonitor monitor) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.equinox.p2.publisher.actions.MergeResultsAction");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        MultiStatus finalStatus = new MultiStatus(clazz.getName(), 0, "publishing result", null);
        int i = 0;
        while (i < this.actions.length) {
            if (monitor.isCanceled()) {
                return Status.CANCEL_STATUS;
            }
            IPublisherAction action = this.actions[i];
            PublisherResult result = new PublisherResult();
            finalStatus.merge(action.perform(publisherInfo, result, monitor));
            results.merge(result, this.mode);
            ++i;
        }
        if (!finalStatus.isOK()) {
            return finalStatus;
        }
        return Status.OK_STATUS;
    }
}

