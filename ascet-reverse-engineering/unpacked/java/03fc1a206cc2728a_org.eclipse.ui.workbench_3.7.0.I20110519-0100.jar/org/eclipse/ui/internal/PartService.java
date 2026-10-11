/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.dialogs.PageChangedEvent
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Listener
 */
package org.eclipse.ui.internal;

import java.util.ArrayList;
import org.eclipse.jface.dialogs.PageChangedEvent;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.ui.IPartListener;
import org.eclipse.ui.IPartListener2;
import org.eclipse.ui.IPartService;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.IWorkbenchPartReference;
import org.eclipse.ui.internal.PartListenerList;
import org.eclipse.ui.internal.PartListenerList2;
import org.eclipse.ui.internal.PartSite;
import org.eclipse.ui.internal.misc.UIListenerLogging;

public class PartService
implements IPartService {
    private static Point ZERO = new Point(0, 0);
    private PartListenerList listeners = new PartListenerList();
    private PartListenerList2 listeners2 = new PartListenerList2();
    private IWorkbenchPartReference activePart = null;
    private String debugListenersKey;
    private String debugListeners2Key;
    private ArrayList activeControlJobs = new ArrayList();
    private PartListener partListener = new PartListener();

    public PartService(String debugListenersKey, String debugListeners2Key) {
        this.debugListeners2Key = debugListeners2Key;
        this.debugListenersKey = debugListenersKey;
    }

    public void addPartListener(IPartListener l) {
        this.listeners.addPartListener(l);
    }

    public void addPartListener(IPartListener2 l) {
        this.listeners2.addPartListener(l);
    }

    public void removePartListener(IPartListener l) {
        this.listeners.removePartListener(l);
    }

    public void removePartListener(IPartListener2 l) {
        this.listeners2.removePartListener(l);
    }

    private Control deferControl(IWorkbenchPartReference ref) {
        Control control;
        IWorkbenchPart part = ref.getPart(false);
        if (!(part == null || (control = ((PartSite)part.getSite()).getPane().getControl()) == null || control.isDisposed() || control.isVisible() && !control.getSize().equals((Object)ZERO))) {
            return control;
        }
        return null;
    }

    private void addControlListener(Control control, PartJob listener) {
        control.addListener(11, (Listener)this.partListener);
        control.addListener(26, (Listener)this.partListener);
        control.addListener(12, (Listener)this.partListener);
        this.activeControlJobs.add(listener);
    }

    void processPartJobs() {
        if (this.activeControlJobs.isEmpty()) {
            return;
        }
        ArrayList<PartJob> toRemove = new ArrayList<PartJob>();
        PartJob[] jobs = this.activeControlJobs.toArray(new PartJob[this.activeControlJobs.size()]);
        int i = 0;
        while (i < jobs.length) {
            PartJob job = jobs[i];
            Control control = job.control;
            if (!control.isDisposed() && !control.getSize().equals((Object)ZERO) && control.isVisible()) {
                toRemove.add(job);
                control.removeListener(11, (Listener)this.partListener);
                control.removeListener(26, (Listener)this.partListener);
                control.removeListener(12, (Listener)this.partListener);
                job.fire();
            } else if (control.isDisposed()) {
                toRemove.add(job);
            }
            ++i;
        }
        if (toRemove.isEmpty()) {
            return;
        }
        this.activeControlJobs.removeAll(toRemove);
    }

    private void firePartActivated(IWorkbenchPartReference ref) {
        IWorkbenchPart part = ref.getPart(false);
        if (part != null) {
            Control control = this.deferControl(ref);
            if (control != null) {
                this.addControlListener(control, new PartActivated(ref, control));
                return;
            }
            UIListenerLogging.logPartListenerEvent(this.debugListenersKey, this, part, "partActivated");
            this.listeners.firePartActivated(part);
        }
        UIListenerLogging.logPartListener2Event(this.debugListeners2Key, this, ref, "partActivated");
        this.listeners2.firePartActivated(ref);
    }

    public void firePartBroughtToTop(IWorkbenchPartReference ref) {
        IWorkbenchPart part = ref.getPart(false);
        if (part != null) {
            Control control = this.deferControl(ref);
            if (control != null) {
                this.addControlListener(control, new PartTop(ref, control));
                return;
            }
            UIListenerLogging.logPartListenerEvent(this.debugListenersKey, this, part, "partBroughtToTop");
            this.listeners.firePartBroughtToTop(part);
        }
        UIListenerLogging.logPartListener2Event(this.debugListeners2Key, this, ref, "partBroughtToTop");
        this.listeners2.firePartBroughtToTop(ref);
    }

    public void firePartClosed(IWorkbenchPartReference ref) {
        IWorkbenchPart part = ref.getPart(false);
        if (part != null) {
            UIListenerLogging.logPartListenerEvent(this.debugListenersKey, this, part, "partClosed");
            this.listeners.firePartClosed(part);
        }
        UIListenerLogging.logPartListener2Event(this.debugListeners2Key, this, ref, "partClosed");
        this.listeners2.firePartClosed(ref);
    }

    private void firePartDeactivated(IWorkbenchPartReference ref) {
        IWorkbenchPart part = ref.getPart(false);
        if (part != null) {
            UIListenerLogging.logPartListenerEvent(this.debugListenersKey, this, part, "partDeactivated");
            this.listeners.firePartDeactivated(part);
        }
        UIListenerLogging.logPartListener2Event(this.debugListeners2Key, this, ref, "partDectivated");
        this.listeners2.firePartDeactivated(ref);
    }

    public void firePartVisible(IWorkbenchPartReference ref) {
        Control control = this.deferControl(ref);
        if (control != null) {
            this.addControlListener(control, new PartVisible(ref, control));
            return;
        }
        UIListenerLogging.logPartListener2Event(this.debugListeners2Key, this, ref, "partVisible");
        this.listeners2.firePartVisible(ref);
    }

    public void firePartHidden(IWorkbenchPartReference ref) {
        UIListenerLogging.logPartListener2Event(this.debugListeners2Key, this, ref, "partHidden");
        this.listeners2.firePartHidden(ref);
    }

    public void firePartInputChanged(IWorkbenchPartReference ref) {
        UIListenerLogging.logPartListener2Event(this.debugListeners2Key, this, ref, "partInputChanged");
        this.listeners2.firePartInputChanged(ref);
    }

    public void firePartOpened(IWorkbenchPartReference ref) {
        IWorkbenchPart part = ref.getPart(false);
        if (part != null) {
            UIListenerLogging.logPartListenerEvent(this.debugListenersKey, this, part, "partOpened");
            this.listeners.firePartOpened(part);
        }
        UIListenerLogging.logPartListener2Event(this.debugListeners2Key, this, ref, "partOpened");
        this.listeners2.firePartOpened(ref);
    }

    public IWorkbenchPart getActivePart() {
        return this.activePart == null ? null : this.activePart.getPart(false);
    }

    public IWorkbenchPartReference getActivePartReference() {
        return this.activePart;
    }

    public void setActivePart(IWorkbenchPartReference ref) {
        IWorkbenchPartReference oldRef = this.activePart;
        if (oldRef == ref) {
            return;
        }
        if (oldRef != null) {
            this.firePartDeactivated(oldRef);
        }
        this.activePart = ref;
        if (ref != null) {
            this.firePartActivated(ref);
        }
    }

    public void firePageChanged(PageChangedEvent event) {
        this.listeners2.firePageChanged(event);
    }

    private class PartActivated
    extends PartJob {
        public PartActivated(IWorkbenchPartReference ref, Control c) {
            super(ref, c);
        }

        void fire() {
            PartService.this.firePartActivated(this.ref);
        }
    }

    private abstract class PartJob {
        IWorkbenchPartReference ref;
        Control control;

        public PartJob(IWorkbenchPartReference ref, Control c) {
            this.ref = ref;
            this.control = c;
        }

        abstract void fire();
    }

    private class PartListener
    implements Listener {
        private PartListener() {
        }

        public void handleEvent(Event event) {
            PartService.this.processPartJobs();
        }
    }

    private class PartTop
    extends PartJob {
        public PartTop(IWorkbenchPartReference ref, Control c) {
            super(ref, c);
        }

        void fire() {
            PartService.this.firePartBroughtToTop(this.ref);
        }
    }

    private class PartVisible
    extends PartJob {
        public PartVisible(IWorkbenchPartReference ref, Control c) {
            super(ref, c);
        }

        void fire() {
            PartService.this.firePartVisible(this.ref);
        }
    }
}

