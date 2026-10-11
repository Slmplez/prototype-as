/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.ui.internal.progress;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.ui.internal.progress.AbstractProgressViewer;
import org.eclipse.ui.internal.progress.FinishedJobs;
import org.eclipse.ui.internal.progress.GroupInfo;
import org.eclipse.ui.internal.progress.JobInfo;
import org.eclipse.ui.internal.progress.JobTreeElement;
import org.eclipse.ui.internal.progress.ProgressContentProvider;
import org.eclipse.ui.progress.WorkbenchJob;

public class ProgressViewerContentProvider
extends ProgressContentProvider {
    protected AbstractProgressViewer progressViewer;
    private FinishedJobs.KeptJobsListener keptJobListener;
    private boolean showFinished;

    public ProgressViewerContentProvider(AbstractProgressViewer structured, boolean debug, boolean showFinished) {
        super(debug);
        this.progressViewer = structured;
        this.showFinished = showFinished;
        if (showFinished) {
            FinishedJobs.getInstance().addListener(this.getKeptJobListener());
        }
    }

    private FinishedJobs.KeptJobsListener getKeptJobListener() {
        this.keptJobListener = new FinishedJobs.KeptJobsListener(){

            public void finished(JobTreeElement jte) {
                JobTreeElement element = jte;
                WorkbenchJob updateJob = new WorkbenchJob(this, "Refresh finished", element){
                    final /* synthetic */ 1 this$1;
                    private final /* synthetic */ JobTreeElement val$element;
                    {
                        this.this$1 = var1_1;
                        this.val$element = jobTreeElement;
                    }

                    public IStatus runInUIThread(IProgressMonitor monitor) {
                        1.access$0(this.this$1).refresh(new Object[]{this.val$element});
                        return Status.OK_STATUS;
                    }

                    public boolean shouldSchedule() {
                        return !1.access$0(this.this$1).progressViewer.getControl().isDisposed();
                    }

                    public boolean shouldRun() {
                        return !1.access$0(this.this$1).progressViewer.getControl().isDisposed();
                    }
                };
                updateJob.setSystem(true);
                updateJob.schedule();
            }

            public void removed(JobTreeElement jte) {
                JobTreeElement element = jte;
                WorkbenchJob updateJob = new WorkbenchJob(this, "Remove finished", element){
                    final /* synthetic */ 1 this$1;
                    private final /* synthetic */ JobTreeElement val$element;
                    {
                        this.this$1 = var1_1;
                        this.val$element = jobTreeElement;
                    }

                    public IStatus runInUIThread(IProgressMonitor monitor) {
                        if (this.val$element == null) {
                            1.access$0(this.this$1).refresh();
                        } else {
                            1.access$0(this.this$1).remove(new Object[]{this.val$element});
                        }
                        return Status.OK_STATUS;
                    }
                };
                updateJob.setSystem(true);
                updateJob.schedule();
            }

            static /* synthetic */ ProgressViewerContentProvider access$0(1 var0) {
                return var0.ProgressViewerContentProvider.this;
            }
        };
        return this.keptJobListener;
    }

    public void refresh() {
        this.progressViewer.refresh(true);
    }

    public void refresh(Object[] elements) {
        Object[] refreshes = this.getRoots(elements, true);
        int i = 0;
        while (i < refreshes.length) {
            this.progressViewer.refresh(refreshes[i], true);
            ++i;
        }
    }

    public Object[] getElements(Object inputElement) {
        Object[] elements = super.getElements(inputElement);
        if (!this.showFinished) {
            return elements;
        }
        Set kept = FinishedJobs.getInstance().getKeptAsSet();
        if (kept.size() == 0) {
            return elements;
        }
        HashSet<Object> all = new HashSet<Object>();
        int i = 0;
        while (i < elements.length) {
            Object element = elements[i];
            all.add(element);
            ++i;
        }
        Iterator keptIterator = kept.iterator();
        while (keptIterator.hasNext()) {
            JobTreeElement next = (JobTreeElement)keptIterator.next();
            if (next.getParent() != null && all.contains(next.getParent())) continue;
            all.add(next);
        }
        return all.toArray();
    }

    private Object[] getRoots(Object[] elements, boolean subWithParent) {
        if (elements.length == 0) {
            return elements;
        }
        HashSet<JobTreeElement> roots = new HashSet<JobTreeElement>();
        int i = 0;
        while (i < elements.length) {
            JobTreeElement element = (JobTreeElement)elements[i];
            if (element.isJobInfo()) {
                GroupInfo group = ((JobInfo)element).getGroupInfo();
                if (group == null) {
                    roots.add(element);
                } else if (subWithParent) {
                    roots.add(group);
                }
            } else {
                roots.add(element);
            }
            ++i;
        }
        return roots.toArray();
    }

    public void add(Object[] elements) {
        this.progressViewer.add(elements);
    }

    public void remove(Object[] elements) {
        this.progressViewer.remove(elements);
    }

    public void dispose() {
        super.dispose();
        if (this.keptJobListener != null) {
            FinishedJobs.getInstance().removeListener(this.keptJobListener);
        }
    }
}

