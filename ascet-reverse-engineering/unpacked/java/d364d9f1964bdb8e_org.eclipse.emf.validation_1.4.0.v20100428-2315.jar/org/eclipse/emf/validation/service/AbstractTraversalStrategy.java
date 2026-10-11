/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.SubProgressMonitor
 *  org.eclipse.emf.ecore.EObject
 */
package org.eclipse.emf.validation.service;

import java.util.Collection;
import java.util.Iterator;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.SubProgressMonitor;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.validation.internal.l10n.ValidationMessages;
import org.eclipse.emf.validation.service.ITraversalStrategy;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class AbstractTraversalStrategy
implements ITraversalStrategy {
    private static final String VALIDATING_TASK = ValidationMessages.progress_task_validating;
    private static final int PROGRESS_EXPANSION_COEFFICIENT = 8;
    private static final int MAX_PROGRESS_TICKS = 2048;
    private Iterator<? extends EObject> iterator;
    private IProgressMonitor monitor;

    @Override
    public void startTraversal(Collection<? extends EObject> traversalRoots, IProgressMonitor progressMonitor) {
        int taskSize;
        int scaledSize = taskSize = this.countElements(traversalRoots);
        while (scaledSize > 2048) {
            scaledSize /= 8;
        }
        progressMonitor.beginTask(this.getTaskLabel(), scaledSize);
        if (scaledSize == taskSize) {
            this.monitor = progressMonitor;
        } else {
            this.monitor = new SubProgressMonitor(progressMonitor, scaledSize, 2);
            this.monitor.beginTask("", taskSize);
        }
        this.iterator = this.createIterator(traversalRoots);
    }

    protected String getTaskLabel() {
        return VALIDATING_TASK;
    }

    protected abstract int countElements(Collection<? extends EObject> var1);

    protected abstract Iterator<? extends EObject> createIterator(Collection<? extends EObject> var1);

    protected IProgressMonitor getProgressMonitor() {
        return this.monitor;
    }

    @Override
    public boolean hasNext() {
        return this.iterator.hasNext();
    }

    @Override
    public EObject next() {
        return this.iterator.next();
    }

    @Override
    public boolean isClientContextChanged() {
        return true;
    }

    @Override
    public void elementValidated(EObject element, IStatus status) {
        this.getProgressMonitor().worked(1);
    }
}

