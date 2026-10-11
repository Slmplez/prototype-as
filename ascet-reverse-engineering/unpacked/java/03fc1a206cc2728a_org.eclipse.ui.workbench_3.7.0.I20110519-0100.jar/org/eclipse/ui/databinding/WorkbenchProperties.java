/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.list.ListDiff
 *  org.eclipse.core.databinding.property.INativePropertyListener
 *  org.eclipse.core.databinding.property.IProperty
 *  org.eclipse.core.databinding.property.ISimplePropertyListener
 *  org.eclipse.core.databinding.property.NativePropertyListener
 *  org.eclipse.core.databinding.property.list.IListProperty
 *  org.eclipse.core.databinding.property.list.SimpleListProperty
 *  org.eclipse.core.databinding.property.value.IValueProperty
 *  org.eclipse.core.databinding.property.value.SimpleValueProperty
 *  org.eclipse.core.runtime.IAdapterManager
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.IStructuredSelection
 */
package org.eclipse.ui.databinding;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.eclipse.core.databinding.observable.list.ListDiff;
import org.eclipse.core.databinding.property.INativePropertyListener;
import org.eclipse.core.databinding.property.IProperty;
import org.eclipse.core.databinding.property.ISimplePropertyListener;
import org.eclipse.core.databinding.property.NativePropertyListener;
import org.eclipse.core.databinding.property.list.IListProperty;
import org.eclipse.core.databinding.property.list.SimpleListProperty;
import org.eclipse.core.databinding.property.value.IValueProperty;
import org.eclipse.core.databinding.property.value.SimpleValueProperty;
import org.eclipse.core.runtime.IAdapterManager;
import org.eclipse.core.runtime.Platform;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.ui.ISelectionListener;
import org.eclipse.ui.ISelectionService;
import org.eclipse.ui.IWorkbenchPart;

public class WorkbenchProperties {
    static /* synthetic */ Class class$0;

    public static IValueProperty adaptedValue(Class adapter) {
        return WorkbenchProperties.adaptedValue(adapter, Platform.getAdapterManager());
    }

    static IValueProperty adaptedValue(Class adapter, IAdapterManager adapterManager) {
        return new AdaptedValueProperty(adapter, adapterManager);
    }

    public static IValueProperty singleSelection() {
        return WorkbenchProperties.singleSelection(null, false);
    }

    public static IValueProperty singleSelection(String partId, boolean postSelection) {
        return new SingleSelectionProperty(partId, postSelection);
    }

    public static IListProperty multipleSelection() {
        return WorkbenchProperties.multipleSelection(null, false);
    }

    public static IListProperty multipleSelection(String partId, boolean postSelection) {
        return new MultiSelectionProperty(partId, postSelection);
    }

    static final class AdaptedValueProperty
    extends SimpleValueProperty {
        private final Class adapter;
        private final IAdapterManager adapterManager;

        private AdaptedValueProperty(Class adapter, IAdapterManager adapterManager) {
            this.adapter = adapter;
            this.adapterManager = adapterManager;
        }

        public Object getValueType() {
            return this.adapter;
        }

        protected Object doGetValue(Object source) {
            if (this.adapter.isInstance(source)) {
                return source;
            }
            return this.adapterManager.getAdapter(source, this.adapter);
        }

        protected void doSetValue(Object source, Object value) {
            throw new UnsupportedOperationException();
        }

        public INativePropertyListener adaptListener(ISimplePropertyListener listener) {
            return null;
        }
    }

    static class MultiSelectionProperty
    extends SimpleListProperty {
        private final String partId;
        private final boolean post;

        MultiSelectionProperty(String partId, boolean post) {
            this.partId = partId;
            this.post = post;
        }

        public INativePropertyListener adaptListener(ISimplePropertyListener listener) {
            return new SelectionServiceListener((IProperty)this, listener, this.partId, this.post);
        }

        public Object getElementType() {
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("java.lang.Object");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            return clazz;
        }

        protected List doGetList(Object source) {
            ISelection selection = this.partId != null ? ((ISelectionService)source).getSelection(this.partId) : ((ISelectionService)source).getSelection();
            if (selection instanceof IStructuredSelection) {
                return new ArrayList(((IStructuredSelection)selection).toList());
            }
            return Collections.EMPTY_LIST;
        }

        protected void doSetList(Object source, List list, ListDiff diff) {
            throw new UnsupportedOperationException();
        }
    }

    static class SelectionServiceListener
    extends NativePropertyListener
    implements ISelectionListener {
        private final String partId;
        private final boolean post;

        public SelectionServiceListener(IProperty property, ISimplePropertyListener wrapped, String partID, boolean post) {
            super(property, wrapped);
            this.partId = partID;
            this.post = post;
        }

        protected void doAddTo(Object source) {
            ISelectionService selectionService = (ISelectionService)source;
            if (this.post) {
                if (this.partId != null) {
                    selectionService.addPostSelectionListener(this.partId, this);
                } else {
                    selectionService.addPostSelectionListener(this);
                }
            } else if (this.partId != null) {
                selectionService.addSelectionListener(this.partId, this);
            } else {
                selectionService.addSelectionListener(this);
            }
        }

        protected void doRemoveFrom(Object source) {
            ISelectionService selectionService = (ISelectionService)source;
            if (this.post) {
                if (this.partId != null) {
                    selectionService.removePostSelectionListener(this.partId, this);
                } else {
                    selectionService.removePostSelectionListener(this);
                }
            } else if (this.partId != null) {
                selectionService.removeSelectionListener(this.partId, this);
            } else {
                selectionService.removeSelectionListener(this);
            }
        }

        public void selectionChanged(IWorkbenchPart part, ISelection selection) {
            this.fireChange(null, null);
        }
    }

    static class SingleSelectionProperty
    extends SimpleValueProperty {
        private final String partId;
        private final boolean post;

        SingleSelectionProperty(String partId, boolean post) {
            this.partId = partId;
            this.post = post;
        }

        public INativePropertyListener adaptListener(ISimplePropertyListener listener) {
            return new SelectionServiceListener((IProperty)this, listener, this.partId, this.post);
        }

        protected Object doGetValue(Object source) {
            ISelection selection = this.partId != null ? ((ISelectionService)source).getSelection(this.partId) : ((ISelectionService)source).getSelection();
            if (selection instanceof IStructuredSelection) {
                return ((IStructuredSelection)selection).getFirstElement();
            }
            return null;
        }

        protected void doSetValue(Object source, Object value) {
            throw new UnsupportedOperationException();
        }

        public Object getValueType() {
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("java.lang.Object");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            return clazz;
        }
    }
}

