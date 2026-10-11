/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.ValidationStatusProvider
 *  org.eclipse.core.databinding.observable.DisposeEvent
 *  org.eclipse.core.databinding.observable.IDecoratingObservable
 *  org.eclipse.core.databinding.observable.IDisposeListener
 *  org.eclipse.core.databinding.observable.IObservable
 *  org.eclipse.core.databinding.observable.IObserving
 *  org.eclipse.core.databinding.observable.list.IListChangeListener
 *  org.eclipse.core.databinding.observable.list.IObservableList
 *  org.eclipse.core.databinding.observable.list.ListChangeEvent
 *  org.eclipse.core.databinding.observable.list.ListDiffVisitor
 *  org.eclipse.core.databinding.observable.value.IObservableValue
 *  org.eclipse.core.databinding.observable.value.IValueChangeListener
 *  org.eclipse.core.databinding.observable.value.ValueChangeEvent
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.jface.fieldassist.ControlDecoration
 *  org.eclipse.jface.viewers.Viewer
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.jface.databinding.fieldassist;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.core.databinding.ValidationStatusProvider;
import org.eclipse.core.databinding.observable.DisposeEvent;
import org.eclipse.core.databinding.observable.IDecoratingObservable;
import org.eclipse.core.databinding.observable.IDisposeListener;
import org.eclipse.core.databinding.observable.IObservable;
import org.eclipse.core.databinding.observable.IObserving;
import org.eclipse.core.databinding.observable.list.IListChangeListener;
import org.eclipse.core.databinding.observable.list.IObservableList;
import org.eclipse.core.databinding.observable.list.ListChangeEvent;
import org.eclipse.core.databinding.observable.list.ListDiffVisitor;
import org.eclipse.core.databinding.observable.value.IObservableValue;
import org.eclipse.core.databinding.observable.value.IValueChangeListener;
import org.eclipse.core.databinding.observable.value.ValueChangeEvent;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.jface.databinding.fieldassist.ControlDecorationUpdater;
import org.eclipse.jface.databinding.swt.ISWTObservable;
import org.eclipse.jface.databinding.viewers.IViewerObservable;
import org.eclipse.jface.fieldassist.ControlDecoration;
import org.eclipse.jface.viewers.Viewer;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Widget;

public class ControlDecorationSupport {
    private final int position;
    private final Composite composite;
    private final ControlDecorationUpdater updater;
    private IObservableValue validationStatus;
    private IObservableList targets;
    private IDisposeListener disposeListener = new IDisposeListener(){

        public void handleDispose(DisposeEvent staleEvent) {
            ControlDecorationSupport.this.dispose();
        }
    };
    private IValueChangeListener statusChangeListener = new IValueChangeListener(){

        public void handleValueChange(ValueChangeEvent event) {
            ControlDecorationSupport.this.statusChanged((IStatus)ControlDecorationSupport.this.validationStatus.getValue());
        }
    };
    private IListChangeListener targetsChangeListener = new IListChangeListener(){

        public void handleListChange(ListChangeEvent event) {
            event.diff.accept(new ListDiffVisitor(this){
                final /* synthetic */ 3 this$1;
                {
                    this.this$1 = var1_1;
                }

                public void handleAdd(int index, Object element) {
                    ControlDecorationSupport.access$2(3.access$0(this.this$1), (IObservable)element);
                }

                public void handleRemove(int index, Object element) {
                    ControlDecorationSupport.access$3(3.access$0(this.this$1), (IObservable)element);
                }
            });
            ControlDecorationSupport.this.statusChanged((IStatus)ControlDecorationSupport.this.validationStatus.getValue());
        }

        static /* synthetic */ ControlDecorationSupport access$0(3 var0) {
            return var0.ControlDecorationSupport.this;
        }
    };
    private List targetDecorations;

    public static ControlDecorationSupport create(ValidationStatusProvider validationStatusProvider, int position) {
        return ControlDecorationSupport.create(validationStatusProvider, position, null, new ControlDecorationUpdater());
    }

    public static ControlDecorationSupport create(ValidationStatusProvider validationStatusProvider, int position, Composite composite) {
        return ControlDecorationSupport.create(validationStatusProvider, position, composite, new ControlDecorationUpdater());
    }

    public static ControlDecorationSupport create(ValidationStatusProvider validationStatusProvider, int position, Composite composite, ControlDecorationUpdater updater) {
        return new ControlDecorationSupport(validationStatusProvider, position, composite, updater);
    }

    private ControlDecorationSupport(ValidationStatusProvider validationStatusProvider, int position, Composite composite, ControlDecorationUpdater updater) {
        this.position = position;
        this.composite = composite;
        this.updater = updater;
        this.validationStatus = validationStatusProvider.getValidationStatus();
        Assert.isTrue((!this.validationStatus.isDisposed() ? 1 : 0) != 0);
        this.targets = validationStatusProvider.getTargets();
        Assert.isTrue((!this.targets.isDisposed() ? 1 : 0) != 0);
        this.targetDecorations = new ArrayList();
        this.validationStatus.addDisposeListener(this.disposeListener);
        this.validationStatus.addValueChangeListener(this.statusChangeListener);
        this.targets.addDisposeListener(this.disposeListener);
        this.targets.addListChangeListener(this.targetsChangeListener);
        Iterator it = this.targets.iterator();
        while (it.hasNext()) {
            this.targetAdded((IObservable)it.next());
        }
        this.statusChanged((IStatus)this.validationStatus.getValue());
    }

    private void targetAdded(IObservable target) {
        Control control = this.findControl(target);
        if (control != null) {
            this.targetDecorations.add(new TargetDecoration(target, new ControlDecoration(control, this.position, this.composite)));
        }
    }

    private void targetRemoved(IObservable target) {
        Iterator it = this.targetDecorations.iterator();
        while (it.hasNext()) {
            TargetDecoration targetDecoration = (TargetDecoration)it.next();
            if (targetDecoration.target != target) continue;
            targetDecoration.decoration.dispose();
            it.remove();
        }
    }

    private Control findControl(IObservable target) {
        Object observed;
        IObservable decorated;
        Control control;
        Widget widget;
        if (target instanceof ISWTObservable && (widget = ((ISWTObservable)target).getWidget()) instanceof Control) {
            return (Control)widget;
        }
        if (target instanceof IViewerObservable) {
            Viewer viewer = ((IViewerObservable)target).getViewer();
            return viewer.getControl();
        }
        if (target instanceof IDecoratingObservable && (control = this.findControl(decorated = ((IDecoratingObservable)target).getDecorated())) != null) {
            return control;
        }
        if (target instanceof IObserving && (observed = ((IObserving)target).getObserved()) instanceof IObservable) {
            return this.findControl((IObservable)observed);
        }
        return null;
    }

    private void statusChanged(IStatus status) {
        Iterator it = this.targetDecorations.iterator();
        while (it.hasNext()) {
            TargetDecoration targetDecoration = (TargetDecoration)it.next();
            ControlDecoration decoration = targetDecoration.decoration;
            this.updater.update(decoration, status);
        }
    }

    public void dispose() {
        if (this.validationStatus != null) {
            this.validationStatus.removeDisposeListener(this.disposeListener);
            this.validationStatus.removeValueChangeListener(this.statusChangeListener);
            this.validationStatus = null;
        }
        if (this.targets != null) {
            this.targets.removeDisposeListener(this.disposeListener);
            this.targets.removeListChangeListener(this.targetsChangeListener);
            this.targets = null;
        }
        this.disposeListener = null;
        this.statusChangeListener = null;
        this.targetsChangeListener = null;
        if (this.targetDecorations != null) {
            Iterator it = this.targetDecorations.iterator();
            while (it.hasNext()) {
                TargetDecoration targetDecoration = (TargetDecoration)it.next();
                targetDecoration.decoration.dispose();
            }
            this.targetDecorations.clear();
            this.targetDecorations = null;
        }
    }

    static /* synthetic */ void access$2(ControlDecorationSupport controlDecorationSupport, IObservable iObservable) {
        controlDecorationSupport.targetAdded(iObservable);
    }

    static /* synthetic */ void access$3(ControlDecorationSupport controlDecorationSupport, IObservable iObservable) {
        controlDecorationSupport.targetRemoved(iObservable);
    }

    private static class TargetDecoration {
        public final IObservable target;
        public final ControlDecoration decoration;

        TargetDecoration(IObservable target, ControlDecoration decoration) {
            this.target = target;
            this.decoration = decoration;
        }
    }
}

