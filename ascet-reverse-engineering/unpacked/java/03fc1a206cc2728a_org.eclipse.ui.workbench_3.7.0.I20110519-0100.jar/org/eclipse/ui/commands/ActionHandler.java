/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.util.IPropertyChangeListener
 *  org.eclipse.jface.util.PropertyChangeEvent
 *  org.eclipse.swt.widgets.Event
 */
package org.eclipse.ui.commands;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.swt.widgets.Event;
import org.eclipse.ui.actions.RetargetAction;
import org.eclipse.ui.commands.AbstractHandler;
import org.eclipse.ui.commands.ExecutionException;
import org.eclipse.ui.commands.HandlerEvent;
import org.eclipse.ui.commands.IHandlerListener;

public final class ActionHandler
extends AbstractHandler {
    private static final String ATTRIBUTE_CHECKED = "checked";
    private static final String ATTRIBUTE_ENABLED = "enabled";
    private static final String ATTRIBUTE_HANDLED = "handled";
    private static final String ATTRIBUTE_ID = "id";
    private static final String ATTRIBUTE_STYLE = "style";
    private final IAction action;
    private Map attributeValuesByName;
    private IPropertyChangeListener propertyChangeListener;

    public ActionHandler(IAction action) {
        if (action == null) {
            throw new NullPointerException();
        }
        this.action = action;
    }

    public void addHandlerListener(IHandlerListener handlerListener) {
        if (!this.hasListeners()) {
            this.attachListener();
        }
        super.addHandlerListener(handlerListener);
    }

    private final void attachListener() {
        if (this.propertyChangeListener == null) {
            this.attributeValuesByName = this.getAttributeValuesByNameFromAction();
            this.propertyChangeListener = new IPropertyChangeListener(){

                public void propertyChange(PropertyChangeEvent propertyChangeEvent) {
                    String property = propertyChangeEvent.getProperty();
                    if (ActionHandler.ATTRIBUTE_ENABLED.equals(property) || ActionHandler.ATTRIBUTE_CHECKED.equals(property) || ActionHandler.ATTRIBUTE_HANDLED.equals(property)) {
                        Map previousAttributeValuesByName = ActionHandler.this.attributeValuesByName;
                        ActionHandler.this.attributeValuesByName = ActionHandler.this.getAttributeValuesByNameFromAction();
                        if (!ActionHandler.this.attributeValuesByName.equals(previousAttributeValuesByName)) {
                            ActionHandler.this.fireHandlerChanged(new HandlerEvent(ActionHandler.this, true, previousAttributeValuesByName));
                        }
                    }
                }
            };
        }
        this.action.addPropertyChangeListener(this.propertyChangeListener);
    }

    private final void detachListener() {
        this.action.removePropertyChangeListener(this.propertyChangeListener);
        this.propertyChangeListener = null;
        this.attributeValuesByName = null;
    }

    public void dispose() {
        if (this.hasListeners()) {
            this.action.removePropertyChangeListener(this.propertyChangeListener);
        }
    }

    public Object execute(Map parameterValuesByName) throws ExecutionException {
        if (this.action.getStyle() == 2 || this.action.getStyle() == 8) {
            this.action.setChecked(!this.action.isChecked());
        }
        try {
            this.action.runWithEvent(new Event());
        }
        catch (Exception e) {
            throw new ExecutionException("While executing the action, an exception occurred", e);
        }
        return null;
    }

    public IAction getAction() {
        return this.action;
    }

    public Map getAttributeValuesByName() {
        if (this.attributeValuesByName == null) {
            return this.getAttributeValuesByNameFromAction();
        }
        return this.attributeValuesByName;
    }

    private Map getAttributeValuesByNameFromAction() {
        HashMap<String, Object> map = new HashMap<String, Object>();
        map.put(ATTRIBUTE_CHECKED, this.action.isChecked() ? Boolean.TRUE : Boolean.FALSE);
        map.put(ATTRIBUTE_ENABLED, this.action.isEnabled() ? Boolean.TRUE : Boolean.FALSE);
        boolean handled = true;
        if (this.action instanceof RetargetAction) {
            RetargetAction retargetAction = (RetargetAction)this.action;
            handled = retargetAction.getActionHandler() != null;
        }
        map.put(ATTRIBUTE_HANDLED, handled ? Boolean.TRUE : Boolean.FALSE);
        map.put(ATTRIBUTE_ID, this.action.getId());
        map.put(ATTRIBUTE_STYLE, new Integer(this.action.getStyle()));
        return Collections.unmodifiableMap(map);
    }

    public void removeHandlerListener(IHandlerListener handlerListener) {
        super.removeHandlerListener(handlerListener);
        if (!this.hasListeners()) {
            this.detachListener();
        }
    }

    public final String toString() {
        StringBuffer buffer = new StringBuffer();
        buffer.append("ActionHandler(action=");
        buffer.append(this.action);
        buffer.append(')');
        return buffer.toString();
    }
}

