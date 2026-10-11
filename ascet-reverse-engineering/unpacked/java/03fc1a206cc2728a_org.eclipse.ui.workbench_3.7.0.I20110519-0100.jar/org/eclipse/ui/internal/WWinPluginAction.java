/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.jface.util.IPropertyChangeListener
 *  org.eclipse.jface.util.PropertyChangeEvent
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.swt.events.HelpEvent
 *  org.eclipse.swt.events.HelpListener
 *  org.eclipse.swt.widgets.Event
 */
package org.eclipse.ui.internal;

import java.util.ArrayList;
import java.util.Iterator;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.swt.events.HelpEvent;
import org.eclipse.swt.events.HelpListener;
import org.eclipse.swt.widgets.Event;
import org.eclipse.ui.IActionDelegate;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.IWorkbenchWindowActionDelegate;
import org.eclipse.ui.WorkbenchException;
import org.eclipse.ui.actions.LabelRetargetAction;
import org.eclipse.ui.actions.RetargetAction;
import org.eclipse.ui.internal.IActionSetContributionItem;
import org.eclipse.ui.internal.PluginAction;

public class WWinPluginAction
extends PluginAction
implements IActionSetContributionItem {
    private HelpListener localHelpListener;
    private IWorkbenchWindow window;
    private String actionSetId;
    private RetargetAction retargetAction;
    private static ArrayList staticActionList = new ArrayList(50);

    public WWinPluginAction(IConfigurationElement actionElement, IWorkbenchWindow window, String id, int style) {
        super(actionElement, id, style);
        this.window = window;
        String retarget = actionElement.getAttribute("retarget");
        if (retarget != null && Boolean.valueOf(retarget).booleanValue()) {
            String allowLabelUpdate = actionElement.getAttribute("allowLabelUpdate");
            String label = actionElement.getAttribute("label");
            this.retargetAction = allowLabelUpdate != null && Boolean.valueOf(allowLabelUpdate) != false ? new LabelRetargetAction(id, label, style) : new RetargetAction(id, label, style);
            this.retargetAction.addPropertyChangeListener(new IPropertyChangeListener(){

                public void propertyChange(PropertyChangeEvent event) {
                    Object val;
                    if (event.getProperty().equals("enabled")) {
                        Object val2 = event.getNewValue();
                        if (val2 instanceof Boolean) {
                            WWinPluginAction.this.setEnabled((Boolean)val2);
                        }
                    } else if (event.getProperty().equals("checked")) {
                        Object val3 = event.getNewValue();
                        if (val3 instanceof Boolean) {
                            WWinPluginAction.this.setChecked((Boolean)val3);
                        }
                    } else if (event.getProperty().equals("text")) {
                        Object val4 = event.getNewValue();
                        if (val4 instanceof String) {
                            WWinPluginAction.this.setText((String)val4);
                        }
                    } else if (event.getProperty().equals("toolTipText") && (val = event.getNewValue()) instanceof String) {
                        WWinPluginAction.this.setToolTipText((String)val);
                    }
                }
            });
            this.retargetAction.setEnabled(false);
            this.setEnabled(false);
            window.getPartService().addPartListener(this.retargetAction);
            IWorkbenchPart activePart = window.getPartService().getActivePart();
            if (activePart != null) {
                this.retargetAction.partActivated(activePart);
            }
        } else {
            window.getSelectionService().addSelectionListener(this);
            this.refreshSelection();
        }
        WWinPluginAction.addToActionList(this);
        super.setHelpListener(new HelpListener(){

            public void helpRequested(HelpEvent e) {
                HelpListener listener = null;
                if (WWinPluginAction.this.retargetAction != null) {
                    listener = WWinPluginAction.this.retargetAction.getHelpListener();
                }
                if (listener == null) {
                    listener = WWinPluginAction.this.localHelpListener;
                }
                if (listener != null) {
                    listener.helpRequested(e);
                }
            }
        });
    }

    private static void addToActionList(WWinPluginAction action) {
        staticActionList.add(action);
    }

    private static void removeFromActionList(WWinPluginAction action) {
        staticActionList.remove(action);
    }

    public static void refreshActionList() {
        Iterator iter = staticActionList.iterator();
        while (iter.hasNext()) {
            WWinPluginAction action = (WWinPluginAction)iter.next();
            if (action.getDelegate() != null || !action.isOkToCreateDelegate()) continue;
            action.createDelegate();
        }
    }

    protected IActionDelegate validateDelegate(Object obj) throws WorkbenchException {
        if (obj instanceof IWorkbenchWindowActionDelegate) {
            return (IWorkbenchWindowActionDelegate)obj;
        }
        throw new WorkbenchException("Action must implement IWorkbenchWindowActionDelegate");
    }

    protected void initDelegate() {
        super.initDelegate();
        ((IWorkbenchWindowActionDelegate)this.getDelegate()).init(this.window);
    }

    public void dispose() {
        WWinPluginAction.removeFromActionList(this);
        if (this.retargetAction != null) {
            this.window.getPartService().removePartListener(this.retargetAction);
            this.retargetAction.dispose();
            this.retargetAction = null;
        }
        this.window.getSelectionService().removeSelectionListener(this);
        super.dispose();
    }

    public String getActionSetId() {
        return this.actionSetId;
    }

    public boolean isOkToCreateDelegate() {
        return super.isOkToCreateDelegate() && this.window != null && this.retargetAction == null;
    }

    public void runWithEvent(Event event) {
        if (this.retargetAction == null) {
            super.runWithEvent(event);
            return;
        }
        if (event != null) {
            this.retargetAction.runWithEvent(event);
        } else {
            this.retargetAction.run();
        }
    }

    public void setActionSetId(String newActionSetId) {
        this.actionSetId = newActionSetId;
    }

    public void setHelpListener(HelpListener listener) {
        this.localHelpListener = listener;
    }

    public void setChecked(boolean checked) {
        super.setChecked(checked);
        if (this.retargetAction != null) {
            this.retargetAction.setChecked(checked);
        }
    }

    protected void refreshSelection() {
        ISelection selection = this.window.getSelectionService().getSelection();
        this.selectionChanged(selection);
    }
}

