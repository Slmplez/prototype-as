/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.Binding
 *  org.eclipse.core.databinding.DataBindingContext
 *  org.eclipse.core.databinding.UpdateValueStrategy
 *  org.eclipse.core.databinding.observable.ChangeEvent
 *  org.eclipse.core.databinding.observable.IChangeListener
 *  org.eclipse.core.databinding.observable.value.IObservableValue
 *  org.eclipse.core.databinding.property.value.IValueProperty
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.viewers.CellEditor
 *  org.eclipse.jface.viewers.ColumnViewer
 *  org.eclipse.jface.viewers.ColumnViewerEditorActivationEvent
 *  org.eclipse.jface.viewers.ColumnViewerEditorActivationListener
 *  org.eclipse.jface.viewers.ColumnViewerEditorDeactivationEvent
 *  org.eclipse.jface.viewers.EditingSupport
 *  org.eclipse.jface.viewers.ViewerCell
 */
package org.eclipse.jface.databinding.viewers;

import org.eclipse.core.databinding.Binding;
import org.eclipse.core.databinding.DataBindingContext;
import org.eclipse.core.databinding.UpdateValueStrategy;
import org.eclipse.core.databinding.observable.ChangeEvent;
import org.eclipse.core.databinding.observable.IChangeListener;
import org.eclipse.core.databinding.observable.value.IObservableValue;
import org.eclipse.core.databinding.property.value.IValueProperty;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.viewers.CellEditor;
import org.eclipse.jface.viewers.ColumnViewer;
import org.eclipse.jface.viewers.ColumnViewerEditorActivationEvent;
import org.eclipse.jface.viewers.ColumnViewerEditorActivationListener;
import org.eclipse.jface.viewers.ColumnViewerEditorDeactivationEvent;
import org.eclipse.jface.viewers.EditingSupport;
import org.eclipse.jface.viewers.ViewerCell;

public abstract class ObservableValueEditingSupport
extends EditingSupport {
    private EditingState editingState;
    private final ColumnViewerEditorActivationListenerHelper activationListener = new ColumnViewerEditorActivationListenerHelper();
    private ColumnViewer viewer;
    private DataBindingContext dbc;
    boolean dirty = false;

    public static EditingSupport create(ColumnViewer viewer, DataBindingContext dbc, final CellEditor cellEditor, final IValueProperty cellEditorProperty, final IValueProperty elementProperty) {
        return new ObservableValueEditingSupport(viewer, dbc){

            protected IObservableValue doCreateCellEditorObservable(CellEditor cellEditor2) {
                return cellEditorProperty.observe((Object)cellEditor2);
            }

            protected IObservableValue doCreateElementObservable(Object element, ViewerCell cell) {
                return elementProperty.observe(element);
            }

            protected CellEditor getCellEditor(Object element) {
                return cellEditor;
            }
        };
    }

    public ObservableValueEditingSupport(ColumnViewer viewer, DataBindingContext dbc) {
        super(viewer);
        if (dbc == null) {
            throw new IllegalArgumentException("Parameter dbc was null.");
        }
        this.viewer = viewer;
        this.dbc = dbc;
    }

    protected boolean canEdit(Object element) {
        return true;
    }

    protected Object getValue(Object element) {
        return null;
    }

    protected void setValue(Object element, Object value) {
    }

    protected final void initializeCellEditorValue(CellEditor cellEditor, ViewerCell cell) {
        IObservableValue target = this.doCreateCellEditorObservable(cellEditor);
        Assert.isNotNull((Object)target, (String)"doCreateCellEditorObservable(...) did not return an observable");
        IObservableValue model = this.doCreateElementObservable(cell.getElement(), cell);
        Assert.isNotNull((Object)model, (String)"doCreateElementObservable(...) did not return an observable");
        this.dirty = false;
        Binding binding = this.createBinding(target, model);
        target.addChangeListener(new IChangeListener(){

            public void handleChange(ChangeEvent event) {
                ObservableValueEditingSupport.this.dirty = true;
            }
        });
        Assert.isNotNull((Object)binding, (String)"createBinding(...) did not return a binding");
        this.editingState = new EditingState(binding, target, model);
        this.getViewer().getColumnViewerEditor().addEditorActivationListener((ColumnViewerEditorActivationListener)this.activationListener);
    }

    protected abstract IObservableValue doCreateCellEditorObservable(CellEditor var1);

    protected abstract IObservableValue doCreateElementObservable(Object var1, ViewerCell var2);

    protected Binding createBinding(IObservableValue target, IObservableValue model) {
        return this.dbc.bindValue(target, model, new UpdateValueStrategy(UpdateValueStrategy.POLICY_CONVERT), null);
    }

    protected final void saveCellEditorValue(CellEditor cellEditor, ViewerCell cell) {
        if (this.dirty) {
            this.editingState.binding.updateTargetToModel();
            this.dirty = false;
        }
    }

    private class ColumnViewerEditorActivationListenerHelper
    extends ColumnViewerEditorActivationListener {
        private ColumnViewerEditorActivationListenerHelper() {
        }

        public void afterEditorActivated(ColumnViewerEditorActivationEvent event) {
        }

        public void afterEditorDeactivated(ColumnViewerEditorDeactivationEvent event) {
            ObservableValueEditingSupport.this.editingState.dispose();
            ObservableValueEditingSupport.this.editingState = null;
            ObservableValueEditingSupport.this.viewer.getColumnViewerEditor().removeEditorActivationListener((ColumnViewerEditorActivationListener)this);
        }

        public void beforeEditorActivated(ColumnViewerEditorActivationEvent event) {
        }

        public void beforeEditorDeactivated(ColumnViewerEditorDeactivationEvent event) {
        }
    }

    private static class EditingState {
        IObservableValue target;
        IObservableValue model;
        Binding binding;

        EditingState(Binding binding, IObservableValue target, IObservableValue model) {
            this.binding = binding;
            this.target = target;
            this.model = model;
        }

        void dispose() {
            this.binding.dispose();
            this.target.dispose();
            this.model.dispose();
        }
    }
}

