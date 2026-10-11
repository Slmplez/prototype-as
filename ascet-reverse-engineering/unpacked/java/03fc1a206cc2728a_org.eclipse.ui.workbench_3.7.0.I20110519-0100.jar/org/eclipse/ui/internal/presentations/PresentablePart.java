/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.jface.util.IPropertyChangeListener
 *  org.eclipse.jface.util.PropertyChangeEvent
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.ui.internal.presentations;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.ui.IPropertyListener;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.PartPane;
import org.eclipse.ui.internal.WorkbenchPartReference;
import org.eclipse.ui.internal.dnd.SwtUtil;
import org.eclipse.ui.presentations.IPartMenu;
import org.eclipse.ui.presentations.IPresentablePart;

public class PresentablePart
implements IPresentablePart {
    private PartPane part;
    private List listeners = new ArrayList();
    private IPropertyListener lazyPropertyListenerProxy;
    private ListenerList partPropertyChangeListeners = new ListenerList();
    private IPropertyChangeListener lazyPartPropertyChangeListener;
    private IPartMenu viewMenu;
    private boolean enableInputs = true;
    private boolean enableOutputs = true;
    private Rectangle savedBounds = new Rectangle(0, 0, 0, 0);
    private boolean isVisible = false;
    private String name = "";
    private String titleStatus = "";
    private boolean isDirty = false;
    private boolean isBusy = false;
    private boolean hasViewMenu = false;

    public PresentablePart(PartPane part, Composite parent) {
        this.part = part;
        this.getPane().addPropertyListener(this.getPropertyListenerProxy());
        this.getPane().addPartPropertyListener(this.getPartPropertyListenerProxy());
    }

    public PartPane getPane() {
        return this.part;
    }

    private IPropertyListener getPropertyListenerProxy() {
        if (this.lazyPropertyListenerProxy == null) {
            this.lazyPropertyListenerProxy = new IPropertyListener(){

                public void propertyChanged(Object source, int propId) {
                    PresentablePart.this.firePropertyChange(propId);
                }
            };
        }
        return this.lazyPropertyListenerProxy;
    }

    private IPropertyChangeListener getPartPropertyListenerProxy() {
        if (this.lazyPartPropertyChangeListener == null) {
            this.lazyPartPropertyChangeListener = new IPropertyChangeListener(){

                public void propertyChange(PropertyChangeEvent event) {
                    PropertyChangeEvent e = new PropertyChangeEvent((Object)this, event.getProperty(), event.getOldValue(), event.getNewValue());
                    PresentablePart.this.firePartPropertyChange(e);
                }
            };
        }
        return this.lazyPartPropertyChangeListener;
    }

    public void dispose() {
        this.getPane().removePropertyListener(this.getPropertyListenerProxy());
        this.getPane().removePartPropertyListener(this.getPartPropertyListenerProxy());
        this.part = null;
        this.listeners.clear();
        this.listeners = null;
        this.partPropertyChangeListeners.clear();
        this.partPropertyChangeListeners = null;
    }

    public void firePropertyChange(int propertyId) {
        int i = 0;
        while (i < this.listeners.size()) {
            ((IPropertyListener)this.listeners.get(i)).propertyChanged(this, propertyId);
            ++i;
        }
    }

    public void addPropertyListener(IPropertyListener listener) {
        this.listeners.add(listener);
    }

    public void removePropertyListener(IPropertyListener listener) {
        this.listeners.remove(listener);
    }

    protected void firePartPropertyChange(PropertyChangeEvent event) {
        Object[] l = this.partPropertyChangeListeners.getListeners();
        int i = 0;
        while (i < l.length) {
            ((IPropertyChangeListener)l[i]).propertyChange(event);
            ++i;
        }
    }

    public void addPartPropertyListener(IPropertyChangeListener listener) {
        this.partPropertyChangeListeners.add((Object)listener);
    }

    public void removePartPropertyListener(IPropertyChangeListener listener) {
        this.partPropertyChangeListeners.remove((Object)listener);
    }

    public void setBounds(Rectangle bounds) {
        this.savedBounds = bounds;
        if (this.enableInputs && !SwtUtil.isDisposed(this.part.getControl())) {
            this.part.setBounds(bounds);
        }
    }

    public void setVisible(boolean isVisible) {
        this.isVisible = isVisible;
        if (this.enableInputs) {
            this.part.setVisible(isVisible);
        }
    }

    public void setFocus() {
        if (!SwtUtil.isDisposed(this.part.getControl())) {
            if (this.part.getPage().getActivePart() == this.part.getPartReference().getPart(false)) {
                this.part.setFocus();
            } else {
                this.part.requestActivation();
            }
        }
    }

    private WorkbenchPartReference getPartReference() {
        return (WorkbenchPartReference)this.part.getPartReference();
    }

    public String getName() {
        if (this.enableOutputs) {
            return this.getPartReference().getPartName();
        }
        return this.name;
    }

    public String getTitle() {
        return this.getPartReference().getTitle();
    }

    public String getTitleStatus() {
        if (this.enableOutputs) {
            return this.getPartReference().getContentDescription();
        }
        return this.titleStatus;
    }

    public Image getTitleImage() {
        if (this.enableOutputs) {
            return this.getPartReference().getTitleImage();
        }
        return PlatformUI.getWorkbench().getSharedImages().getImage("IMG_DEF_VIEW");
    }

    public String getTitleToolTip() {
        return this.getPartReference().getTitleToolTip();
    }

    public boolean isDirty() {
        if (this.enableOutputs) {
            return this.getPartReference().isDirty();
        }
        return this.isDirty;
    }

    public boolean isBusy() {
        if (this.enableOutputs) {
            return this.part.isBusy();
        }
        return this.isBusy;
    }

    public Control getToolBar() {
        if (this.enableOutputs) {
            return this.getPane().getToolBar();
        }
        return null;
    }

    public IPartMenu getMenu() {
        boolean hasMenu = this.enableOutputs ? this.part.hasViewMenu() : this.hasViewMenu;
        if (!hasMenu) {
            return null;
        }
        if (this.viewMenu == null) {
            this.viewMenu = new IPartMenu(){

                public void showMenu(Point location) {
                    PresentablePart.this.part.showViewMenu(location);
                }
            };
        }
        return this.viewMenu;
    }

    public boolean isCloseable() {
        return this.part.isCloseable();
    }

    public Control getControl() {
        return this.part.getControl();
    }

    public void enableOutputs(boolean isActive) {
        if (isActive == this.enableOutputs) {
            return;
        }
        this.enableOutputs = isActive;
        if (isActive) {
            if (this.isBusy != this.getPane().isBusy()) {
                this.firePropertyChange(146);
            }
            if (this.isDirty != this.isDirty()) {
                this.firePropertyChange(257);
            }
            if (!this.name.equals(this.getName())) {
                this.firePropertyChange(260);
            }
            if (!this.titleStatus.equals(this.getTitleStatus())) {
                this.firePropertyChange(261);
            }
            if (this.hasViewMenu != this.getPane().hasViewMenu()) {
                this.firePropertyChange(770);
            }
            this.firePropertyChange(147);
            this.firePropertyChange(1);
            this.getPane().addPropertyListener(this.getPropertyListenerProxy());
        } else {
            this.getPane().removePropertyListener(this.getPropertyListenerProxy());
            WorkbenchPartReference ref = this.getPartReference();
            this.isBusy = this.getPane().isBusy();
            this.isDirty = ref.isDirty();
            this.name = ref.getPartName();
            this.titleStatus = ref.getContentDescription();
            this.hasViewMenu = this.getPane().hasViewMenu();
            this.firePropertyChange(1);
            this.firePropertyChange(147);
        }
    }

    public void enableInputs(boolean isActive) {
        if (isActive == this.enableInputs) {
            return;
        }
        this.enableInputs = isActive;
        if (isActive) {
            if (isActive && !SwtUtil.isDisposed(this.part.getControl())) {
                this.part.setBounds(this.savedBounds);
            }
            this.part.setVisible(this.isVisible);
        }
    }

    public String getPartProperty(String key) {
        return this.getPartReference().getPartProperty(key);
    }

    public int computePreferredSize(boolean width, int availableParallel, int availablePerpendicular, int preferredResult) {
        return this.getPane().computePreferredSize(width, availableParallel, availablePerpendicular, preferredResult);
    }

    public int getSizeFlags(boolean width) {
        return this.getPane().getSizeFlags(width);
    }
}

