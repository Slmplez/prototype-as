/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.util.TreeIterator
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.change.ChangeDescription
 *  org.eclipse.emf.ecore.change.util.ChangeRecorder
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.ecore.resource.ResourceSet
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package org.eclipse.emf.transaction.impl;

import java.util.Collections;
import java.util.Iterator;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.util.TreeIterator;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.change.ChangeDescription;
import org.eclipse.emf.ecore.change.util.ChangeRecorder;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.ResourceSet;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;
import org.eclipse.emf.transaction.NotificationFilter;
import org.eclipse.emf.transaction.impl.InternalTransaction;
import org.eclipse.emf.transaction.impl.InternalTransactionalEditingDomain;
import org.eclipse.emf.transaction.impl.ResourceSetManager;
import org.eclipse.emf.transaction.internal.EMFTransactionDebugOptions;
import org.eclipse.emf.transaction.internal.EMFTransactionPlugin;
import org.eclipse.emf.transaction.internal.Tracing;
import org.eclipse.emf.transaction.internal.l10n.Messages;
import org.eclipse.emf.transaction.util.ValidateEditSupport;

public class TransactionChangeRecorder
extends ChangeRecorder {
    private InternalTransactionalEditingDomain domain;
    private boolean paused;
    private boolean disposed;
    private ValidateEditSupport validateEdit;

    public TransactionChangeRecorder(InternalTransactionalEditingDomain domain, ResourceSet rset) {
        super(rset);
        this.domain = domain;
        this.endRecording();
        this.setResolveProxies(false);
        ResourceSetManager.getInstance().observe(rset);
    }

    public final InternalTransactionalEditingDomain getEditingDomain() {
        return this.domain;
    }

    public void beginRecording() {
        if (this.disposed) {
            throw new IllegalStateException("cannot begin a disposed recorder");
        }
        this.beginRecording(Collections.singleton(this.getEditingDomain().getResourceSet()));
    }

    public ChangeDescription endRecording() {
        if (this.disposed) {
            throw new IllegalStateException("cannot end a disposed recorder");
        }
        ChangeDescription result = super.endRecording();
        this.changeDescription = null;
        return result;
    }

    public void setTarget(Notifier target) {
        if (!this.disposed) {
            Iterator contents;
            Iterator iterator = target instanceof EObject ? (this.isResolveProxies() ? ((EObject)target).eContents().iterator() : ((InternalEList)((EObject)target).eContents()).basicIterator()) : (target instanceof ResourceSet ? ((ResourceSet)target).getResources().iterator() : (contents = target instanceof Resource ? ((Resource)target).getContents().iterator() : null));
            if (contents != null) {
                while (contents.hasNext()) {
                    Notifier notifier = (Notifier)contents.next();
                    this.addAdapter(notifier);
                }
            }
        }
    }

    public void notifyChanged(Notification notification) {
        if (this.disposed) {
            Object notifier = notification.getNotifier();
            if (notifier instanceof Notifier) {
                this.removeAdapter((Notifier)notifier);
            }
            return;
        }
        boolean record = true;
        switch (notification.getEventType()) {
            case 1: 
            case 2: 
            case 3: 
            case 4: 
            case 5: 
            case 6: {
                Resource sourceRes = null;
                Object notifier = notification.getNotifier();
                if (notifier instanceof Resource) {
                    sourceRes = (Resource)notifier;
                } else if (notifier instanceof EObject) {
                    sourceRes = ((EObject)notifier).eResource();
                }
                if (sourceRes == null) break;
                if (!ResourceSetManager.getInstance().isLoaded(sourceRes)) {
                    record = false;
                }
                if (notification.isTouch() || this.getValidateEditSupport() == null) break;
                this.getValidateEditSupport().handleResourceChange(sourceRes, notification);
            }
        }
        if (record && !this.isPaused() || !this.isRecording()) {
            super.notifyChanged(notification);
        } else {
            boolean wasRecording = this.recording;
            try {
                this.recording = false;
                super.notifyChanged(notification);
            }
            finally {
                this.recording = wasRecording;
            }
        }
        if (notification.getEventType() != 8) {
            Object notifier = notification.getNotifier();
            if (notifier instanceof ResourceSet) {
                this.processResourceSetNotification(notification);
            } else if (notifier instanceof Resource) {
                this.processResourceNotification(notification);
            } else if (record) {
                this.processObjectNotification(notification);
            }
        }
    }

    protected void processResourceSetNotification(Notification notification) {
        ResourceSetManager.getInstance().observe((ResourceSet)notification.getNotifier(), notification);
        this.appendNotification(notification);
    }

    protected void processResourceNotification(Notification notification) {
        ResourceSetManager.getInstance().observe((Resource)notification.getNotifier(), notification);
        this.appendNotification(notification);
    }

    protected void processObjectNotification(Notification notification) {
        this.appendNotification(notification);
    }

    protected void appendNotification(Notification notification) {
        InternalTransaction tx;
        if (!NotificationFilter.READ.matches(notification)) {
            this.assertWriting();
        }
        if ((tx = this.getEditingDomain().getActiveTransaction()) != null) {
            if (tx.getOwner() == Thread.currentThread()) {
                tx.add(notification);
            } else if (Tracing.shouldTrace(EMFTransactionDebugOptions.TRANSACTIONS)) {
                Tracing.trace("Read notification from thread " + Thread.currentThread().getName() + " not appended to " + tx);
            }
        } else {
            this.getEditingDomain().broadcastUnbatched(notification);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void assertWriting() {
        InternalTransaction tx = this.domain.getActiveTransaction();
        if (tx == null || tx.isReadOnly() || tx.getOwner() != Thread.currentThread()) {
            InternalTransactionalEditingDomain internalTransactionalEditingDomain = this.domain;
            synchronized (internalTransactionalEditingDomain) {
                tx = this.domain.getActiveTransaction();
                if (tx != null) {
                    tx.abort((IStatus)new Status(4, EMFTransactionPlugin.getPluginId(), 40, Messages.concurrentWrite, null));
                }
            }
            IllegalStateException ise = new IllegalStateException(Messages.noWriteTx);
            Tracing.throwing(TransactionChangeRecorder.class, "assertWriting", ise);
            throw ise;
        }
    }

    public void pause() {
        assert (this.isRecording()) : "Cannot pause when not recording";
        this.paused = true;
    }

    public boolean isPaused() {
        return this.paused;
    }

    public void resume() {
        assert (this.isPaused()) : "Cannot resume when not paused";
        this.paused = false;
    }

    public void dispose() {
        if (!this.disposed) {
            super.dispose();
            this.disposed = true;
            ResourceSet rset = this.domain.getResourceSet();
            if (rset != null) {
                this.removeAdapter((Notifier)rset);
                TreeIterator iter = EcoreUtil.getAllProperContents((ResourceSet)rset, (boolean)false);
                while (iter.hasNext()) {
                    this.removeAdapter((Notifier)iter.next());
                }
            }
            this.domain = null;
        }
    }

    public ValidateEditSupport getValidateEditSupport() {
        return this.validateEdit;
    }

    public void setValidateEditSupport(ValidateEditSupport validateEdit) {
        this.validateEdit = validateEdit;
    }
}

