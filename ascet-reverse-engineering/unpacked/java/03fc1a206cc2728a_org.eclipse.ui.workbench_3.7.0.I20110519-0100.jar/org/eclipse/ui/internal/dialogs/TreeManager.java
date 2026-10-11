/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.jface.resource.JFaceResources
 *  org.eclipse.jface.resource.LocalResourceManager
 *  org.eclipse.jface.viewers.CheckStateChangedEvent
 *  org.eclipse.jface.viewers.CheckboxTableViewer
 *  org.eclipse.jface.viewers.CheckboxTreeViewer
 *  org.eclipse.jface.viewers.IBaseLabelProvider
 *  org.eclipse.jface.viewers.ICheckStateListener
 *  org.eclipse.jface.viewers.ICheckStateProvider
 *  org.eclipse.jface.viewers.ICheckable
 *  org.eclipse.jface.viewers.IContentProvider
 *  org.eclipse.jface.viewers.ITreeContentProvider
 *  org.eclipse.jface.viewers.LabelProvider
 *  org.eclipse.jface.viewers.Viewer
 *  org.eclipse.swt.graphics.Image
 */
package org.eclipse.ui.internal.dialogs;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.resource.LocalResourceManager;
import org.eclipse.jface.viewers.CheckStateChangedEvent;
import org.eclipse.jface.viewers.CheckboxTableViewer;
import org.eclipse.jface.viewers.CheckboxTreeViewer;
import org.eclipse.jface.viewers.IBaseLabelProvider;
import org.eclipse.jface.viewers.ICheckStateListener;
import org.eclipse.jface.viewers.ICheckStateProvider;
import org.eclipse.jface.viewers.ICheckable;
import org.eclipse.jface.viewers.IContentProvider;
import org.eclipse.jface.viewers.ITreeContentProvider;
import org.eclipse.jface.viewers.LabelProvider;
import org.eclipse.jface.viewers.Viewer;
import org.eclipse.swt.graphics.Image;

public class TreeManager {
    static final int CHECKSTATE_UNCHECKED = 0;
    static final int CHECKSTATE_GRAY = 1;
    static final int CHECKSTATE_CHECKED = 2;
    private static ICheckStateProvider checkStateProvider = null;
    private static IBaseLabelProvider labelProvider = null;
    private static ICheckStateListener viewerCheckListener = null;
    private static ITreeContentProvider treeContentProvider = null;
    private List listeners = new ArrayList();
    private LocalResourceManager resourceManager = new LocalResourceManager(JFaceResources.getResources());

    public static ICheckStateProvider getCheckStateProvider() {
        if (checkStateProvider == null) {
            checkStateProvider = new CheckStateProvider();
        }
        return checkStateProvider;
    }

    public static IBaseLabelProvider getLabelProvider() {
        if (labelProvider == null) {
            labelProvider = new TreeItemLabelProvider();
        }
        return labelProvider;
    }

    public static ITreeContentProvider getTreeContentProvider() {
        if (treeContentProvider == null) {
            treeContentProvider = new TreeItemContentProvider();
        }
        return treeContentProvider;
    }

    public ICheckStateListener getViewerCheckStateListener() {
        if (viewerCheckListener == null) {
            viewerCheckListener = new ViewerCheckStateListener();
        }
        return viewerCheckListener;
    }

    public TreeManager() {
        this.listeners = new ArrayList();
    }

    public void addListener(CheckListener listener) {
        this.listeners.add(listener);
    }

    public CheckListener getCheckListener(ICheckable viewer) {
        if (viewer instanceof CheckboxTreeViewer) {
            return new ModelListenerForCheckboxTree(this, (CheckboxTreeViewer)viewer);
        }
        if (viewer instanceof CheckboxTableViewer) {
            return new ModelListenerForCheckboxTable(this, (CheckboxTableViewer)viewer);
        }
        return null;
    }

    public void attachAll(CheckboxTreeViewer viewer) {
        viewer.setLabelProvider(TreeManager.getLabelProvider());
        viewer.setCheckStateProvider(TreeManager.getCheckStateProvider());
        viewer.setContentProvider((IContentProvider)TreeManager.getTreeContentProvider());
        viewer.addCheckStateListener(this.getViewerCheckStateListener());
        this.getCheckListener((ICheckable)viewer);
    }

    public void attachAll(CheckboxTableViewer viewer) {
        viewer.setLabelProvider(TreeManager.getLabelProvider());
        viewer.setCheckStateProvider(TreeManager.getCheckStateProvider());
        viewer.setContentProvider((IContentProvider)TreeManager.getTreeContentProvider());
        viewer.addCheckStateListener(this.getViewerCheckStateListener());
        this.getCheckListener((ICheckable)viewer);
    }

    public void removeListener(CheckListener listener) {
        this.listeners.remove(listener);
    }

    private void fireListeners(TreeItem item) {
        Iterator i = this.listeners.iterator();
        while (i.hasNext()) {
            CheckListener listener = (CheckListener)i.next();
            listener.checkChanged(item);
        }
    }

    public void dispose() {
        this.resourceManager.dispose();
        this.resourceManager = null;
        this.listeners.clear();
        this.listeners = null;
    }

    public static interface CheckListener {
        public void checkChanged(TreeItem var1);
    }

    public static class CheckStateProvider
    implements ICheckStateProvider {
        public boolean isChecked(Object element) {
            return ((TreeItem)element).checkState != 0;
        }

        public boolean isGrayed(Object element) {
            return ((TreeItem)element).checkState == 1;
        }
    }

    public static class ModelListenerForCheckboxTable
    implements CheckListener {
        private CheckboxTableViewer tableViewer;

        public ModelListenerForCheckboxTable(TreeManager manager, CheckboxTableViewer tableViewer) {
            this.tableViewer = tableViewer;
            manager.addListener(this);
        }

        public void checkChanged(TreeItem changedItem) {
            this.tableViewer.update((Object)changedItem, null);
        }
    }

    public static class ModelListenerForCheckboxTree
    implements CheckListener {
        private CheckboxTreeViewer treeViewer;

        public ModelListenerForCheckboxTree(TreeManager manager, CheckboxTreeViewer treeViewer) {
            this.treeViewer = treeViewer;
            manager.addListener(this);
        }

        public void checkChanged(TreeItem changedItem) {
            this.treeViewer.update((Object)changedItem, null);
        }
    }

    public class TreeItem {
        private String label;
        private ImageDescriptor imageDescriptor;
        private Image image;
        private TreeItem parent;
        private List children;
        private int checkState;
        private boolean changedByUser = false;

        public TreeItem(String label) {
            this.label = label;
            this.children = new ArrayList();
        }

        public String getLabel() {
            return this.label;
        }

        public void setLabel(String label) {
            this.label = label;
        }

        public Image getImage() {
            if (this.image == null) {
                if (this.imageDescriptor == null) {
                    return null;
                }
                this.image = TreeManager.this.resourceManager.createImage(this.imageDescriptor);
            }
            return this.image;
        }

        public void setImageDescriptor(ImageDescriptor imageDescriptor) {
            this.imageDescriptor = imageDescriptor;
        }

        public void addChild(TreeItem newChild) {
            newChild.parent = this;
            this.children.add(newChild);
            this.synchParents(newChild);
        }

        public List getChildren() {
            return this.children;
        }

        public TreeItem getParent() {
            return this.parent;
        }

        private void internalSetCheckState(int newState) {
            if (newState == this.checkState) {
                return;
            }
            this.checkState = newState;
            TreeManager.this.fireListeners(this);
        }

        public void setCheckState(boolean checked) {
            int newState;
            int n = newState = checked ? 2 : 0;
            if (this.checkState == newState) {
                return;
            }
            this.internalSetCheckState(newState);
            this.synchChildren(this);
            this.synchParents(this);
        }

        public boolean getState() {
            return this.checkState != 0;
        }

        int getCheckState() {
            return this.checkState;
        }

        private void synchChildren(TreeItem changedItem) {
            int newState = changedItem.checkState;
            if (newState != 1) {
                Iterator iterator = changedItem.children.iterator();
                while (iterator.hasNext()) {
                    TreeItem curItem = (TreeItem)iterator.next();
                    curItem.internalSetCheckState(newState);
                    curItem.setChangedByUser(changedItem.isChangedByUser());
                    this.synchChildren(curItem);
                }
            }
        }

        private void synchParents(TreeItem changedItem) {
            if (changedItem.parent == null) {
                return;
            }
            int newState = changedItem.checkState;
            if (newState == 1) {
                while (changedItem.parent != null && changedItem.parent.checkState != 1) {
                    changedItem.parent.internalSetCheckState(1);
                    changedItem = changedItem.parent;
                }
            } else {
                boolean checkedFound = newState == 2;
                boolean uncheckedFound = newState == 0;
                Iterator i = changedItem.parent.children.iterator();
                while (!(!i.hasNext() || checkedFound && uncheckedFound)) {
                    TreeItem item = (TreeItem)i.next();
                    switch (item.checkState) {
                        case 2: {
                            checkedFound = true;
                            break;
                        }
                        case 1: {
                            uncheckedFound = true;
                            checkedFound = true;
                            break;
                        }
                        case 0: {
                            uncheckedFound = true;
                        }
                    }
                }
                int oldState = changedItem.parent.checkState;
                if (checkedFound && uncheckedFound) {
                    changedItem.parent.internalSetCheckState(1);
                } else if (checkedFound) {
                    changedItem.parent.internalSetCheckState(2);
                } else {
                    changedItem.parent.internalSetCheckState(0);
                }
                if (oldState != changedItem.parent.checkState) {
                    this.synchParents(changedItem.parent);
                }
            }
        }

        public void setChangedByUser(boolean changedByUser) {
            this.changedByUser = changedByUser;
        }

        public boolean isChangedByUser() {
            return this.changedByUser;
        }
    }

    public static class TreeItemContentProvider
    implements ITreeContentProvider {
        public Object[] getChildren(Object parentElement) {
            return ((TreeItem)parentElement).getChildren().toArray();
        }

        public Object getParent(Object element) {
            return ((TreeItem)element).getParent();
        }

        public boolean hasChildren(Object element) {
            return this.getChildren(element).length > 0;
        }

        public Object[] getElements(Object inputElement) {
            return this.getChildren(inputElement);
        }

        public void dispose() {
        }

        public void inputChanged(Viewer viewer, Object oldInput, Object newInput) {
        }
    }

    public static class TreeItemLabelProvider
    extends LabelProvider {
        public String getText(Object element) {
            return ((TreeItem)element).getLabel();
        }

        public Image getImage(Object element) {
            return ((TreeItem)element).getImage();
        }
    }

    public static class ViewerCheckStateListener
    implements ICheckStateListener {
        public void checkStateChanged(CheckStateChangedEvent event) {
            Object checked = event.getElement();
            if (checked instanceof TreeItem) {
                ((TreeItem)checked).setChangedByUser(true);
                ((TreeItem)checked).setCheckState(event.getChecked());
            }
        }
    }
}

