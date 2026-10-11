/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.resource.JFaceResources
 *  org.eclipse.jface.viewers.Viewer
 *  org.eclipse.jface.viewers.ViewerComparator
 *  org.eclipse.swt.custom.ScrolledComposite
 *  org.eclipse.swt.events.ControlEvent
 *  org.eclipse.swt.events.ControlListener
 *  org.eclipse.swt.events.FocusAdapter
 *  org.eclipse.swt.events.FocusEvent
 *  org.eclipse.swt.events.FocusListener
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Text
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.ui.internal.progress;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.viewers.Viewer;
import org.eclipse.jface.viewers.ViewerComparator;
import org.eclipse.swt.custom.ScrolledComposite;
import org.eclipse.swt.events.ControlEvent;
import org.eclipse.swt.events.ControlListener;
import org.eclipse.swt.events.FocusAdapter;
import org.eclipse.swt.events.FocusEvent;
import org.eclipse.swt.events.FocusListener;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Text;
import org.eclipse.swt.widgets.Widget;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.progress.AbstractProgressViewer;
import org.eclipse.ui.internal.progress.FinishedJobs;
import org.eclipse.ui.internal.progress.JobTreeElement;
import org.eclipse.ui.internal.progress.ProgressInfoItem;
import org.eclipse.ui.internal.progress.ProgressMessages;

public class DetailedProgressViewer
extends AbstractProgressViewer {
    private static final int MAX_DISPLAYED = 20;
    Composite control;
    private ScrolledComposite scrolled;
    private Composite noEntryArea;

    public DetailedProgressViewer(Composite parent, int style) {
        this.scrolled = new ScrolledComposite(parent, 0x200 | style);
        int height = JFaceResources.getDefaultFont().getFontData()[0].getHeight();
        this.scrolled.getVerticalBar().setIncrement(height * 2);
        this.scrolled.setExpandHorizontal(true);
        this.scrolled.setExpandVertical(true);
        this.control = new Composite((Composite)this.scrolled, 0);
        GridLayout layout = new GridLayout();
        layout.marginHeight = 0;
        layout.marginWidth = 0;
        this.control.setLayout((Layout)layout);
        this.control.setBackground(parent.getDisplay().getSystemColor(25));
        this.control.addFocusListener((FocusListener)new FocusAdapter(){
            private boolean settingFocus = false;

            public void focusGained(FocusEvent e) {
                if (!this.settingFocus) {
                    this.settingFocus = true;
                    DetailedProgressViewer.this.setFocus();
                    this.settingFocus = false;
                }
            }
        });
        this.control.addControlListener(new ControlListener(){

            public void controlMoved(ControlEvent e) {
                DetailedProgressViewer.this.updateVisibleItems();
            }

            public void controlResized(ControlEvent e) {
                DetailedProgressViewer.this.updateVisibleItems();
            }
        });
        PlatformUI.getWorkbench().getHelpSystem().setHelp((Control)this.control, "org.eclipse.ui.responsive_ui_context");
        this.scrolled.setContent((Control)this.control);
        this.hookControl((Control)this.control);
        this.noEntryArea = new Composite((Composite)this.scrolled, 0);
        this.noEntryArea.setLayout((Layout)new GridLayout());
        Text noEntryLabel = new Text(this.noEntryArea, 4);
        noEntryLabel.setText(ProgressMessages.ProgressView_NoOperations);
        noEntryLabel.setBackground(this.noEntryArea.getDisplay().getSystemColor(22));
        GridData textData = new GridData(2);
        noEntryLabel.setLayoutData((Object)textData);
        noEntryLabel.setEditable(false);
        PlatformUI.getWorkbench().getHelpSystem().setHelp((Control)noEntryLabel, "org.eclipse.ui.responsive_ui_context");
    }

    public void add(Object[] elements) {
        ViewerComparator sorter = this.getComparator();
        HashSet<Object> newItems = new HashSet<Object>(elements.length);
        Control[] existingChildren = this.control.getChildren();
        int i = 0;
        while (i < existingChildren.length) {
            if (existingChildren[i].getData() != null) {
                newItems.add(existingChildren[i].getData());
            }
            ++i;
        }
        i = 0;
        while (i < elements.length) {
            if (elements[i] != null) {
                newItems.add(elements[i]);
            }
            ++i;
        }
        Object[] infos = new JobTreeElement[newItems.size()];
        newItems.toArray(infos);
        if (sorter != null) {
            sorter.sort((Viewer)this, infos);
        }
        int i2 = 0;
        while (i2 < existingChildren.length) {
            ((ProgressInfoItem)existingChildren[i2]).dispose();
            ++i2;
        }
        int totalSize = Math.min(newItems.size(), 20);
        int i3 = 0;
        while (i3 < totalSize) {
            ProgressInfoItem item = this.createNewItem((JobTreeElement)infos[i3]);
            item.setColor(i3);
            ++i3;
        }
        this.control.layout(true);
        this.updateForShowingProgress();
    }

    private void updateForShowingProgress() {
        if (this.control.getChildren().length > 0) {
            this.scrolled.setContent((Control)this.control);
        } else {
            this.scrolled.setContent((Control)this.noEntryArea);
        }
    }

    private ProgressInfoItem createNewItem(JobTreeElement info) {
        final ProgressInfoItem item = new ProgressInfoItem(this.control, 0, info);
        item.setIndexListener(new ProgressInfoItem.IndexListener(){

            public void selectNext() {
                DetailedProgressViewer.this.selectNext(item);
            }

            public void selectPrevious() {
                DetailedProgressViewer.this.selectPrevious(item);
            }

            public void select() {
                Control[] children = DetailedProgressViewer.this.control.getChildren();
                int i = 0;
                while (i < children.length) {
                    ProgressInfoItem child = (ProgressInfoItem)children[i];
                    if (!((Object)((Object)item)).equals((Object)child)) {
                        child.selectWidgets(false);
                    }
                    ++i;
                }
                item.selectWidgets(true);
            }
        });
        item.refresh();
        return item;
    }

    protected void selectPrevious(ProgressInfoItem item) {
        Control[] children = this.control.getChildren();
        int i = 0;
        while (i < children.length) {
            ProgressInfoItem child = (ProgressInfoItem)children[i];
            if (((Object)((Object)item)).equals((Object)child)) {
                ProgressInfoItem previous = i == 0 ? (ProgressInfoItem)children[children.length - 1] : (ProgressInfoItem)children[i - 1];
                item.selectWidgets(false);
                previous.selectWidgets(true);
                return;
            }
            ++i;
        }
    }

    protected void selectNext(ProgressInfoItem item) {
        Control[] children = this.control.getChildren();
        int i = 0;
        while (i < children.length) {
            ProgressInfoItem child = (ProgressInfoItem)children[i];
            if (((Object)((Object)item)).equals((Object)child)) {
                ProgressInfoItem next = i == children.length - 1 ? (ProgressInfoItem)children[0] : (ProgressInfoItem)children[i + 1];
                item.selectWidgets(false);
                next.selectWidgets(true);
                return;
            }
            ++i;
        }
    }

    protected Widget doFindInputItem(Object element) {
        return null;
    }

    protected Widget doFindItem(Object element) {
        Control[] existingChildren = this.control.getChildren();
        int i = 0;
        while (i < existingChildren.length) {
            if (!existingChildren[i].isDisposed() && existingChildren[i].getData() != null && existingChildren[i].getData().equals(element)) {
                return existingChildren[i];
            }
            ++i;
        }
        return null;
    }

    protected void doUpdateItem(Widget item, Object element, boolean fullMap) {
        if (this.usingElementMap()) {
            this.unmapElement(item);
        }
        item.dispose();
        this.add(new Object[]{element});
    }

    public Control getControl() {
        return this.scrolled;
    }

    protected List getSelectionFromWidget() {
        return new ArrayList(0);
    }

    protected void inputChanged(Object input, Object oldInput) {
        super.inputChanged(input, oldInput);
        this.refreshAll();
        this.updateForShowingProgress();
    }

    protected void internalRefresh(Object element) {
        if (element == null) {
            return;
        }
        if (element.equals(this.getRoot())) {
            this.refreshAll();
            return;
        }
        Widget widget = this.findItem(element);
        if (widget == null) {
            this.add(new Object[]{element});
            return;
        }
        ((ProgressInfoItem)widget).refresh();
        Point size = this.control.computeSize(-1, -1);
        size.x += 4;
        size.y += 4;
        this.scrolled.setMinSize(size);
    }

    public void remove(Object[] elements) {
        Object item;
        int i = 0;
        while (i < elements.length) {
            JobTreeElement treeElement = (JobTreeElement)elements[i];
            if (FinishedJobs.getInstance().isKept(treeElement)) {
                item = this.doFindItem(elements[i]);
                if (item != null) {
                    ((ProgressInfoItem)((Object)item)).refresh();
                }
            } else {
                Object parent;
                item = this.doFindItem(treeElement);
                if (item == null && (parent = treeElement.getParent()) != null) {
                    item = this.doFindItem(parent);
                }
                if (item != null) {
                    this.unmapElement(elements[i]);
                    item.dispose();
                }
            }
            ++i;
        }
        Control[] existingChildren = this.control.getChildren();
        int i2 = 0;
        while (i2 < existingChildren.length) {
            item = (ProgressInfoItem)existingChildren[i2];
            ((ProgressInfoItem)((Object)item)).setColor(i2);
            ++i2;
        }
        this.control.layout(true);
        this.updateForShowingProgress();
    }

    public void reveal(Object element) {
    }

    protected void setSelectionToWidget(List l, boolean reveal) {
    }

    public void cancelSelection() {
    }

    public void setFocus() {
        Control[] children = this.control.getChildren();
        if (children.length > 0) {
            ((ProgressInfoItem)children[0]).setButtonFocus();
        } else {
            this.noEntryArea.setFocus();
        }
    }

    private void refreshAll() {
        Object[] infos = this.getSortedChildren(this.getRoot());
        Control[] existingChildren = this.control.getChildren();
        int i = 0;
        while (i < existingChildren.length) {
            existingChildren[i].dispose();
            ++i;
        }
        int maxLength = Math.min(infos.length, 20);
        int i2 = 0;
        while (i2 < maxLength) {
            ProgressInfoItem item = this.createNewItem((JobTreeElement)infos[i2]);
            item.setColor(i2);
            ++i2;
        }
        this.control.layout(true);
        this.updateForShowingProgress();
    }

    private void updateVisibleItems() {
        Control[] children = this.control.getChildren();
        int top = this.scrolled.getOrigin().y;
        int bottom = top + this.scrolled.getParent().getBounds().height;
        int i = 0;
        while (i < children.length) {
            ProgressInfoItem item = (ProgressInfoItem)children[i];
            item.setDisplayed(top, bottom);
            ++i;
        }
    }

    public ProgressInfoItem[] getProgressInfoItems() {
        Control[] children = this.control.getChildren();
        ProgressInfoItem[] progressInfoItems = new ProgressInfoItem[children.length];
        System.arraycopy(children, 0, progressInfoItems, 0, children.length);
        return progressInfoItems;
    }
}

