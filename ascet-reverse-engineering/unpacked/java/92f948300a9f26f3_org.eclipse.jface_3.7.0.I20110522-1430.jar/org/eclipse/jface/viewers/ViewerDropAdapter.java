/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.swt.dnd.DropTargetAdapter
 *  org.eclipse.swt.dnd.DropTargetEvent
 *  org.eclipse.swt.dnd.TransferData
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Item
 *  org.eclipse.swt.widgets.TableItem
 *  org.eclipse.swt.widgets.TreeItem
 */
package org.eclipse.jface.viewers;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.viewers.Viewer;
import org.eclipse.swt.dnd.DropTargetAdapter;
import org.eclipse.swt.dnd.DropTargetEvent;
import org.eclipse.swt.dnd.TransferData;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Item;
import org.eclipse.swt.widgets.TableItem;
import org.eclipse.swt.widgets.TreeItem;

public abstract class ViewerDropAdapter
extends DropTargetAdapter {
    public static final int LOCATION_BEFORE = 1;
    public static final int LOCATION_AFTER = 2;
    public static final int LOCATION_ON = 3;
    public static final int LOCATION_NONE = 4;
    private Viewer viewer;
    private int currentOperation = 0;
    private int lastValidOperation;
    private int overrideOperation = -1;
    private DropTargetEvent currentEvent;
    private Object currentTarget;
    private int currentLocation;
    private boolean feedbackEnabled = true;
    private boolean scrollEnabled = true;
    private boolean expandEnabled = true;
    private boolean selectFeedbackEnabled = true;

    protected ViewerDropAdapter(Viewer viewer) {
        this.viewer = viewer;
    }

    protected void clearState() {
        this.currentTarget = null;
    }

    protected int determineLocation(DropTargetEvent event) {
        if (!(event.item instanceof Item)) {
            return 4;
        }
        Item item = (Item)event.item;
        Point coordinates = new Point(event.x, event.y);
        coordinates = this.viewer.getControl().toControl(coordinates);
        if (item != null) {
            Rectangle bounds = this.getBounds(item);
            if (bounds == null) {
                return 4;
            }
            if (coordinates.y - bounds.y < 5) {
                return 1;
            }
            if (bounds.y + bounds.height - coordinates.y < 5) {
                return 2;
            }
        }
        return 3;
    }

    protected Object determineTarget(DropTargetEvent event) {
        return event.item == null ? null : event.item.getData();
    }

    private void doDropValidation(DropTargetEvent event) {
        if (event.detail != 0 && this.overrideOperation == -1) {
            this.lastValidOperation = event.detail;
        }
        this.currentOperation = this.lastValidOperation;
        this.currentEvent = event;
        this.overrideOperation = -1;
        if (!this.validateDrop(this.currentTarget, this.currentOperation, event.currentDataType)) {
            this.currentOperation = 0;
        }
        event.detail = this.overrideOperation != -1 ? this.overrideOperation : this.currentOperation;
        this.currentEvent = null;
    }

    public void dragEnter(DropTargetEvent event) {
        this.currentTarget = this.determineTarget(event);
        this.doDropValidation(event);
    }

    public void dragOperationChanged(DropTargetEvent event) {
        this.currentTarget = this.determineTarget(event);
        this.doDropValidation(event);
    }

    public void dragOver(DropTargetEvent event) {
        Object target = this.determineTarget(event);
        int oldLocation = this.currentLocation;
        this.currentLocation = this.determineLocation(event);
        this.setFeedback(event, this.currentLocation);
        if (target != this.currentTarget || this.currentLocation != oldLocation) {
            this.currentTarget = target;
            this.doDropValidation(event);
        }
    }

    public void drop(DropTargetEvent event) {
        this.currentLocation = this.determineLocation(event);
        this.currentEvent = event;
        if (this.overrideOperation != -1) {
            this.currentOperation = this.overrideOperation;
        }
        if (!this.performDrop(event.data)) {
            event.detail = 0;
        }
        this.currentOperation = 0;
        this.currentEvent = null;
    }

    public void dropAccept(DropTargetEvent event) {
        this.currentEvent = event;
        if (!this.validateDrop(this.currentTarget, event.detail, event.currentDataType)) {
            event.detail = 0;
            this.currentOperation = 0;
        }
        this.currentEvent = null;
    }

    protected Rectangle getBounds(Item item) {
        if (item instanceof TreeItem) {
            return ((TreeItem)item).getBounds();
        }
        if (item instanceof TableItem) {
            return ((TableItem)item).getBounds(0);
        }
        return null;
    }

    protected int getCurrentLocation() {
        return this.currentLocation;
    }

    protected int getCurrentOperation() {
        return this.currentOperation;
    }

    protected Object getCurrentTarget() {
        return this.currentTarget;
    }

    protected DropTargetEvent getCurrentEvent() {
        Assert.isTrue((this.currentEvent != null ? 1 : 0) != 0);
        return this.currentEvent;
    }

    public boolean getFeedbackEnabled() {
        return this.feedbackEnabled;
    }

    protected Object getSelectedObject() {
        ISelection selection = this.viewer.getSelection();
        if (selection instanceof IStructuredSelection && !selection.isEmpty()) {
            IStructuredSelection structured = (IStructuredSelection)selection;
            return structured.getFirstElement();
        }
        return null;
    }

    protected Viewer getViewer() {
        return this.viewer;
    }

    protected void handleException(Throwable exception, DropTargetEvent event) {
        exception.printStackTrace();
        event.detail = 0;
    }

    public abstract boolean performDrop(Object var1);

    protected void overrideOperation(int operation) {
        this.overrideOperation = operation;
    }

    private void setFeedback(DropTargetEvent event, int location) {
        if (this.feedbackEnabled) {
            switch (location) {
                case 1: {
                    event.feedback = 2;
                    break;
                }
                case 2: {
                    event.feedback = 4;
                    break;
                }
                default: {
                    event.feedback = 1;
                }
            }
        }
        if (!this.selectFeedbackEnabled) {
            event.feedback &= 0xFFFFFFFE;
        }
        if (this.expandEnabled) {
            event.feedback |= 0x10;
        }
        if (this.scrollEnabled) {
            event.feedback |= 8;
        }
    }

    public void setFeedbackEnabled(boolean value) {
        this.feedbackEnabled = value;
    }

    public void setSelectionFeedbackEnabled(boolean value) {
        this.selectFeedbackEnabled = value;
    }

    public void setScrollExpandEnabled(boolean value) {
        this.expandEnabled = value;
        this.scrollEnabled = value;
    }

    public void setExpandEnabled(boolean value) {
        this.expandEnabled = value;
    }

    public void setScrollEnabled(boolean value) {
        this.scrollEnabled = value;
    }

    public abstract boolean validateDrop(Object var1, int var2, TransferData var3);
}

