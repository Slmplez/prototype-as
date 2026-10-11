/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.util.IPropertyChangeListener
 *  org.eclipse.jface.util.PropertyChangeEvent
 *  org.eclipse.swt.events.HelpEvent
 *  org.eclipse.swt.events.HelpListener
 *  org.eclipse.swt.widgets.Event
 */
package org.eclipse.ui.actions;

import org.eclipse.jface.action.IAction;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.swt.events.HelpEvent;
import org.eclipse.swt.events.HelpListener;
import org.eclipse.swt.widgets.Event;
import org.eclipse.ui.IActionBars;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.IWorkbenchPartSite;
import org.eclipse.ui.SubActionBars;
import org.eclipse.ui.actions.ActionFactory;
import org.eclipse.ui.actions.PartEventAction;
import org.eclipse.ui.internal.PartSite;

public class RetargetAction
extends PartEventAction
implements ActionFactory.IWorkbenchAction {
    private HelpListener localHelpListener;
    private boolean enableAccelerator = true;
    private IAction handler;
    private IPropertyChangeListener propertyChangeListener = new IPropertyChangeListener(){

        public void propertyChange(PropertyChangeEvent event) {
            RetargetAction.this.propagateChange(event);
        }
    };

    public RetargetAction(String actionID, String text) {
        this(actionID, text, 0);
    }

    public RetargetAction(String actionID, String text, int style) {
        super(text, style);
        this.setId(actionID);
        this.setEnabled(false);
        super.setHelpListener(new HelpListener(){

            public void helpRequested(HelpEvent e) {
                HelpListener listener = null;
                if (RetargetAction.this.handler != null && (listener = RetargetAction.this.handler.getHelpListener()) == null) {
                    listener = RetargetAction.this.localHelpListener;
                }
                if (listener != null) {
                    listener.helpRequested(e);
                }
            }
        });
    }

    public void dispose() {
        IWorkbenchPart part;
        if (this.handler != null) {
            this.handler.removePropertyChangeListener(this.propertyChangeListener);
            this.handler = null;
        }
        if ((part = this.getActivePart()) != null) {
            IWorkbenchPartSite site = part.getSite();
            SubActionBars bars = (SubActionBars)((PartSite)site).getActionBars();
            bars.removePropertyChangeListener(this.propertyChangeListener);
        }
    }

    public void enableAccelerator(boolean b) {
        this.enableAccelerator = b;
    }

    public int getAccelerator() {
        if (this.enableAccelerator) {
            return super.getAccelerator();
        }
        return 0;
    }

    public void partActivated(IWorkbenchPart part) {
        super.partActivated(part);
        IWorkbenchPartSite site = part.getSite();
        SubActionBars bars = (SubActionBars)((PartSite)site).getActionBars();
        bars.addPropertyChangeListener(this.propertyChangeListener);
        this.setActionHandler(bars.getGlobalActionHandler(this.getId()));
    }

    public void partClosed(IWorkbenchPart part) {
        IWorkbenchPart activePart = part.getSite().getPage().getActivePart();
        if (activePart != null) {
            return;
        }
        if (part == this.getActivePart()) {
            this.setActionHandler(null);
        }
        super.partClosed(part);
    }

    public void partDeactivated(IWorkbenchPart part) {
        super.partDeactivated(part);
        IWorkbenchPartSite site = part.getSite();
        SubActionBars bars = (SubActionBars)((PartSite)site).getActionBars();
        bars.removePropertyChangeListener(this.propertyChangeListener);
        IWorkbenchPart activePart = part.getSite().getPage().getActivePart();
        if (activePart != null) {
            return;
        }
        this.setActionHandler(null);
    }

    protected void propagateChange(PropertyChangeEvent event) {
        if (event.getProperty().equals("enabled")) {
            Boolean bool = (Boolean)event.getNewValue();
            this.setEnabled(bool);
        } else if (event.getProperty().equals("checked")) {
            Boolean bool = (Boolean)event.getNewValue();
            this.setChecked(bool);
        } else if (event.getProperty().equals("org.eclipse.ui.internal.actionHandlers") && event.getSource() instanceof IActionBars) {
            IActionBars bars = (IActionBars)event.getSource();
            this.setActionHandler(bars.getGlobalActionHandler(this.getId()));
        }
    }

    public void run() {
        if (this.handler != null) {
            this.handler.run();
        }
    }

    public void runWithEvent(Event event) {
        if (this.handler != null) {
            this.handler.runWithEvent(event);
        }
    }

    public IAction getActionHandler() {
        return this.handler;
    }

    public final boolean isHandled() {
        return this.handler != null;
    }

    protected void setActionHandler(IAction newHandler) {
        if (newHandler == this.handler) {
            return;
        }
        if (this.handler != null) {
            this.handler.removePropertyChangeListener(this.propertyChangeListener);
            this.handler = null;
        }
        IAction oldHandler = this.handler;
        this.handler = newHandler;
        if (this.handler == null) {
            this.setEnabled(false);
            if (this.getStyle() == 2 || this.getStyle() == 8) {
                this.setChecked(false);
            }
        } else {
            this.setEnabled(this.handler.isEnabled());
            if (this.getStyle() == 2 || this.getStyle() == 8) {
                this.setChecked(this.handler.isChecked());
            }
            this.handler.addPropertyChangeListener(this.propertyChangeListener);
        }
        this.firePropertyChange("handled", oldHandler, newHandler);
    }

    public void setChecked(boolean checked) {
        super.setChecked(checked);
        if (this.handler != null) {
            this.handler.setChecked(checked);
        }
    }

    public void setHelpListener(HelpListener listener) {
        this.localHelpListener = listener;
    }

    public final String toString() {
        StringBuffer buffer = new StringBuffer();
        buffer.append("RetargetAction(");
        buffer.append(this.getId());
        buffer.append(')');
        return buffer.toString();
    }
}

