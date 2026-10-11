/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.jface.resource.ResourceManager
 *  org.eclipse.jface.viewers.DecorationContext
 *  org.eclipse.jface.viewers.IBaseLabelProvider
 *  org.eclipse.jface.viewers.IDecorationContext
 *  org.eclipse.jface.viewers.ILabelProviderListener
 *  org.eclipse.jface.viewers.LabelProviderChangedEvent
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.graphics.Image
 */
package org.eclipse.ui.internal.decorators;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.jface.resource.ResourceManager;
import org.eclipse.jface.viewers.DecorationContext;
import org.eclipse.jface.viewers.IBaseLabelProvider;
import org.eclipse.jface.viewers.IDecorationContext;
import org.eclipse.jface.viewers.ILabelProviderListener;
import org.eclipse.jface.viewers.LabelProviderChangedEvent;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.Image;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.decorators.DecorationBuilder;
import org.eclipse.ui.internal.decorators.DecorationReference;
import org.eclipse.ui.internal.decorators.DecorationResult;
import org.eclipse.ui.internal.decorators.DecoratorManager;
import org.eclipse.ui.progress.UIJob;
import org.eclipse.ui.progress.WorkbenchJob;

public class DecorationScheduler {
    static final ILabelProviderListener[] EMPTY_LISTENER_LIST = new ILabelProviderListener[0];
    Map resultCache = new HashMap();
    List awaitingDecoration = new ArrayList();
    Set pendingUpdate = new HashSet();
    Object pendingKey = new Object();
    Map awaitingDecorationValues = new HashMap();
    DecoratorManager decoratorManager;
    boolean shutdown = false;
    Job decorationJob;
    UIJob updateJob;
    private Collection removedListeners = Collections.synchronizedSet(new HashSet());
    private Job clearJob;
    static final int NEEDS_INIT = -1;
    static final int UPDATE_DELAY = 100;

    DecorationScheduler(DecoratorManager manager) {
        this.decoratorManager = manager;
        this.createDecorationJob();
    }

    public String decorateWithText(String text, Object element, Object adaptedElement, IDecorationContext context) {
        DecorationResult decoration = this.getResult(element, adaptedElement, context);
        if (decoration == null) {
            return text;
        }
        return decoration.decorateWithText(text);
    }

    synchronized void queueForDecoration(Object element, Object adaptedElement, boolean forceUpdate, String undecoratedText, IDecorationContext context) {
        Assert.isNotNull((Object)context);
        DecorationReference reference = (DecorationReference)this.awaitingDecorationValues.get(element);
        if (reference != null) {
            if (forceUpdate) {
                reference.setForceUpdate(forceUpdate);
            }
            reference.addContext(context);
        } else {
            reference = new DecorationReference(element, adaptedElement, context);
            reference.setForceUpdate(forceUpdate);
            reference.setUndecoratedText(undecoratedText);
            this.awaitingDecorationValues.put(element, reference);
            this.awaitingDecoration.add(element);
            if (this.shutdown) {
                return;
            }
            this.decorationJob.schedule();
        }
    }

    public Image decorateWithOverlays(Image image, Object element, Object adaptedElement, IDecorationContext context, ResourceManager manager) {
        DecorationResult decoration = this.getResult(element, adaptedElement, context);
        if (decoration == null) {
            return image;
        }
        return decoration.decorateWithOverlays(image, manager);
    }

    private DecorationResult getResult(Object element, Object adaptedElement, IDecorationContext context) {
        if (element == null) {
            return null;
        }
        DecorationResult decoration = this.internalGetResult(element, context);
        if (decoration == null) {
            this.queueForDecoration(element, adaptedElement, false, null, context);
            return null;
        }
        return decoration;
    }

    private DecorationResult internalGetResult(Object element, IDecorationContext context) {
        Map results = (Map)this.resultCache.get(context);
        if (results != null) {
            return (DecorationResult)results.get(element);
        }
        return null;
    }

    protected void internalPutResult(Object element, IDecorationContext context, DecorationResult result) {
        HashMap<Object, DecorationResult> results = (HashMap<Object, DecorationResult>)this.resultCache.get(context);
        if (results == null) {
            results = new HashMap<Object, DecorationResult>();
            this.resultCache.put(context, results);
        }
        results.put(element, result);
    }

    synchronized void decorated() {
        if (this.shutdown) {
            return;
        }
        if (this.updateJob == null) {
            this.updateJob = this.getUpdateJob();
        }
        this.updateJob.schedule(100L);
    }

    synchronized void shutdown() {
        this.shutdown = true;
    }

    synchronized DecorationReference nextElement() {
        if (this.shutdown || this.awaitingDecoration.isEmpty()) {
            return null;
        }
        Object element = this.awaitingDecoration.remove(0);
        return (DecorationReference)this.awaitingDecorationValues.remove(element);
    }

    private void createDecorationJob() {
        this.decorationJob = new Job(WorkbenchMessages.DecorationScheduler_CalculationJobName){

            /*
             * WARNING - Removed try catching itself - possible behaviour change.
             * Unable to fully structure code
             */
            public IStatus run(IProgressMonitor monitor) {
                var2_2 = DecorationScheduler.this;
                synchronized (var2_2) {
                    if (DecorationScheduler.this.shutdown) {
                        return Status.CANCEL_STATUS;
                    }
                    // MONITOREXIT @DISABLED, blocks:[0, 3] lbl7 : MonitorExitStatement: MONITOREXIT : var2_2
                    if (true) ** GOTO lbl17
                }
                do {
                    try {
                        Thread.sleep(100L);
                    }
                    catch (InterruptedException v1) {
                        this.schedule();
                        return Status.CANCEL_STATUS;
                    }
lbl17:
                    // 2 sources

                } while (DecorationScheduler.this.updatesPending());
                monitor.beginTask(WorkbenchMessages.DecorationScheduler_CalculatingTask, 100);
                monitor.worked(5);
                workCount = 5;
                while ((reference = DecorationScheduler.this.nextElement()) != null) {
                    if (workCount < 90) {
                        monitor.worked(1);
                        ++workCount;
                    }
                    monitor.subTask(reference.getSubTask());
                    element = reference.getElement();
                    force = reference.shouldForceUpdate();
                    contexts = reference.getContexts();
                    i = 0;
                    while (i < contexts.length) {
                        context = contexts[i];
                        this.ensureResultCached(element, force, context);
                        ++i;
                    }
                    var7_7 = DecorationScheduler.this;
                    synchronized (var7_7) {
                        if (DecorationScheduler.this.awaitingDecoration.isEmpty()) {
                            DecorationScheduler.this.decorated();
                        }
                    }
                }
                monitor.worked(100 - workCount);
                monitor.done();
                return Status.OK_STATUS;
            }

            /*
             * WARNING - Removed try catching itself - possible behaviour change.
             */
            private void ensureResultCached(Object element, boolean force, IDecorationContext context) {
                boolean elementIsCached;
                boolean bl = elementIsCached = DecorationScheduler.this.internalGetResult(element, context) != null;
                if (elementIsCached) {
                    Object object = DecorationScheduler.this.pendingKey;
                    synchronized (object) {
                        DecorationScheduler.this.pendingUpdate.add(element);
                    }
                }
                if (!elementIsCached) {
                    DecorationBuilder cacheResult = new DecorationBuilder(context);
                    DecorationScheduler.this.decoratorManager.getLightweightManager().getDecorations(element, cacheResult);
                    if (cacheResult.hasValue() || force) {
                        DecorationScheduler.this.internalPutResult(element, context, cacheResult.createResult());
                        Object object = DecorationScheduler.this.pendingKey;
                        synchronized (object) {
                            DecorationScheduler.this.pendingUpdate.add(element);
                        }
                    }
                }
            }

            public boolean belongsTo(Object family) {
                return DecoratorManager.FAMILY_DECORATE == family;
            }

            public boolean shouldRun() {
                return PlatformUI.isWorkbenchRunning();
            }
        };
        this.decorationJob.setSystem(true);
        this.decorationJob.setPriority(50);
        this.decorationJob.schedule();
    }

    protected boolean updatesPending() {
        if (this.updateJob != null && this.updateJob.getState() != 0) {
            return true;
        }
        return this.clearJob != null && this.clearJob.getState() != 0;
    }

    void clearResults() {
        if (this.clearJob == null) {
            this.clearJob = this.getClearJob();
        }
        this.clearJob.schedule();
    }

    private Job getClearJob() {
        Job clear = new Job(WorkbenchMessages.DecorationScheduler_ClearResultsJob){

            protected IStatus run(IProgressMonitor monitor) {
                DecorationScheduler.this.resultCache.clear();
                return Status.OK_STATUS;
            }

            public boolean shouldRun() {
                return PlatformUI.isWorkbenchRunning();
            }
        };
        clear.setSystem(true);
        return clear;
    }

    private WorkbenchJob getUpdateJob() {
        WorkbenchJob job = new WorkbenchJob(WorkbenchMessages.DecorationScheduler_UpdateJobName){
            int currentIndex = -1;
            LabelProviderChangedEvent labelProviderChangedEvent;
            ILabelProviderListener[] listeners;

            /*
             * WARNING - Removed try catching itself - possible behaviour change.
             */
            public IStatus runInUIThread(IProgressMonitor monitor) {
                DecorationScheduler decorationScheduler = DecorationScheduler.this;
                synchronized (decorationScheduler) {
                    if (DecorationScheduler.this.shutdown) {
                        return Status.CANCEL_STATUS;
                    }
                }
                if (this.currentIndex == -1) {
                    if (DecorationScheduler.this.hasPendingUpdates()) {
                        this.resetState();
                        return Status.OK_STATUS;
                    }
                    this.setUpUpdates();
                }
                if (this.listeners.length == 0) {
                    this.resetState();
                    return Status.OK_STATUS;
                }
                monitor.beginTask(WorkbenchMessages.DecorationScheduler_UpdatingTask, -1);
                long startTime = System.currentTimeMillis();
                while (this.currentIndex < this.listeners.length) {
                    ILabelProviderListener listener = this.listeners[this.currentIndex];
                    ++this.currentIndex;
                    if (!DecorationScheduler.this.removedListeners.contains(listener)) {
                        DecorationScheduler.this.decoratorManager.fireListener(this.labelProviderChangedEvent, listener);
                    }
                    if (System.currentTimeMillis() - startTime >= 50L) break;
                }
                monitor.done();
                if (this.currentIndex >= this.listeners.length) {
                    this.resetState();
                    if (!DecorationScheduler.this.hasPendingUpdates()) {
                        DecorationScheduler.this.decorated();
                    }
                    this.labelProviderChangedEvent = null;
                    this.listeners = EMPTY_LISTENER_LIST;
                } else {
                    this.schedule(100L);
                }
                return Status.OK_STATUS;
            }

            private void resetState() {
                this.currentIndex = -1;
                DecorationScheduler.this.removedListeners.clear();
                if (DecorationScheduler.this.awaitingDecoration.isEmpty()) {
                    DecorationScheduler.this.resultCache.clear();
                }
            }

            /*
             * WARNING - Removed try catching itself - possible behaviour change.
             */
            private void setUpUpdates() {
                DecorationScheduler.this.removedListeners.clear();
                this.currentIndex = 0;
                Object object = DecorationScheduler.this.pendingKey;
                synchronized (object) {
                    Object[] elements = DecorationScheduler.this.pendingUpdate.toArray(new Object[DecorationScheduler.this.pendingUpdate.size()]);
                    DecorationScheduler.this.pendingUpdate.clear();
                    this.labelProviderChangedEvent = new LabelProviderChangedEvent((IBaseLabelProvider)DecorationScheduler.this.decoratorManager, elements);
                }
                this.listeners = DecorationScheduler.this.decoratorManager.getListeners();
            }

            public boolean belongsTo(Object family) {
                return DecoratorManager.FAMILY_DECORATE == family;
            }

            public boolean shouldRun() {
                return PlatformUI.isWorkbenchRunning();
            }
        };
        job.setSystem(true);
        return job;
    }

    public boolean isDecorationReady(Object element, IDecorationContext context) {
        return this.internalGetResult(element, context) != null;
    }

    public Color getBackgroundColor(Object element, Object adaptedElement) {
        DecorationResult decoration = this.getResult(element, adaptedElement, DecorationContext.DEFAULT_CONTEXT);
        if (decoration == null) {
            return null;
        }
        return decoration.getBackgroundColor();
    }

    public Font getFont(Object element, Object adaptedElement) {
        DecorationResult decoration = this.getResult(element, adaptedElement, DecorationContext.DEFAULT_CONTEXT);
        if (decoration == null) {
            return null;
        }
        return decoration.getFont();
    }

    public Color getForegroundColor(Object element, Object adaptedElement) {
        DecorationResult decoration = this.getResult(element, adaptedElement, DecorationContext.DEFAULT_CONTEXT);
        if (decoration == null) {
            return null;
        }
        return decoration.getForegroundColor();
    }

    public boolean processingUpdates() {
        return !this.hasPendingUpdates() && !this.awaitingDecoration.isEmpty();
    }

    void listenerRemoved(ILabelProviderListener listener) {
        if (this.updatesPending()) {
            this.removedListeners.add(listener);
        }
        if (!this.updatesPending()) {
            this.removedListeners.remove(listener);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    boolean hasPendingUpdates() {
        Object object = this.pendingKey;
        synchronized (object) {
            return this.pendingUpdate.isEmpty();
        }
    }
}

