/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.ParameterizedCommand
 *  org.eclipse.core.commands.common.NotDefinedException
 *  org.eclipse.jface.bindings.Binding
 *  org.eclipse.jface.bindings.TriggerSequence
 *  org.eclipse.jface.bindings.keys.KeyBinding
 *  org.eclipse.swt.graphics.Image
 */
package org.eclipse.ui.internal.keys.model;

import org.eclipse.core.commands.ParameterizedCommand;
import org.eclipse.core.commands.common.NotDefinedException;
import org.eclipse.jface.bindings.Binding;
import org.eclipse.jface.bindings.TriggerSequence;
import org.eclipse.jface.bindings.keys.KeyBinding;
import org.eclipse.swt.graphics.Image;
import org.eclipse.ui.internal.keys.NewKeysPreferenceMessages;
import org.eclipse.ui.internal.keys.model.ContextElement;
import org.eclipse.ui.internal.keys.model.ContextModel;
import org.eclipse.ui.internal.keys.model.KeyController;
import org.eclipse.ui.internal.keys.model.ModelElement;

public class BindingElement
extends ModelElement {
    public static final String PROP_TRIGGER = "trigger";
    public static final String PROP_CONTEXT = "bindingContext";
    public static final String PROP_CATEGORY = "category";
    public static final String PROP_USER_DELTA = "userDelta";
    private static final String PROP_IMAGE = "image";
    public static final String PROP_CONFLICT = "bindingConflict";
    private TriggerSequence trigger;
    private ContextElement context;
    private String category;
    private Integer userDelta;
    private Image image;
    private Boolean conflict;

    public BindingElement(KeyController kc) {
        super(kc);
    }

    public void init(Binding b, ContextModel model) {
        this.setCommandInfo(b.getParameterizedCommand());
        this.setTrigger(b.getTriggerSequence());
        this.setContext((ContextElement)model.getContextIdToElement().get(b.getContextId()));
        this.setUserDelta(new Integer(b.getType()));
        this.setModelObject(b);
    }

    private void setCommandInfo(ParameterizedCommand bindingCommand) {
        this.setId(bindingCommand.getId());
        try {
            this.setName(bindingCommand.getName());
        }
        catch (NotDefinedException notDefinedException) {
            this.setName(NewKeysPreferenceMessages.Undefined_Command);
        }
        try {
            this.setDescription(bindingCommand.getCommand().getDescription());
        }
        catch (NotDefinedException notDefinedException) {
            this.setDescription("");
        }
        try {
            this.setCategory(bindingCommand.getCommand().getCategory().getName());
        }
        catch (NotDefinedException notDefinedException) {
            this.setCategory(NewKeysPreferenceMessages.Unavailable_Category);
        }
        this.setConflict(Boolean.FALSE);
    }

    public void init(ParameterizedCommand cmd) {
        this.setCommandInfo(cmd);
        this.setTrigger(null);
        this.setContext(null);
        this.setUserDelta(new Integer(0));
        this.setModelObject(cmd);
    }

    public TriggerSequence getTrigger() {
        return this.trigger;
    }

    public void setTrigger(TriggerSequence trigger) {
        TriggerSequence old = this.trigger;
        this.trigger = trigger;
        this.controller.firePropertyChange(this, PROP_TRIGGER, old, trigger);
    }

    public ContextElement getContext() {
        return this.context;
    }

    public void setContext(ContextElement context) {
        ContextElement old = this.context;
        this.context = context;
        this.controller.firePropertyChange(this, PROP_CONTEXT, old, context);
    }

    public String getCategory() {
        return this.category;
    }

    public void setCategory(String category) {
        String old = this.category;
        this.category = category;
        this.controller.firePropertyChange(this, PROP_CATEGORY, old, category);
    }

    public Integer getUserDelta() {
        return this.userDelta;
    }

    public void setUserDelta(Integer userDelta) {
        Integer old = this.userDelta;
        this.userDelta = userDelta;
        this.controller.firePropertyChange(this, PROP_USER_DELTA, old, userDelta);
    }

    public Image getImage() {
        return this.image;
    }

    public void setImage(Image image) {
        Image old = this.image;
        this.image = image;
        this.controller.firePropertyChange(this, PROP_IMAGE, old, image);
    }

    public Boolean getConflict() {
        return this.conflict;
    }

    public void setConflict(Boolean conflict) {
        Boolean old = this.conflict;
        this.conflict = conflict;
        this.controller.firePropertyChange(this, PROP_CONFLICT, old, conflict);
    }

    public void fill(KeyBinding binding, ContextModel contextModel) {
        this.setCommandInfo(binding.getParameterizedCommand());
        this.setTrigger(binding.getTriggerSequence());
        this.setContext((ContextElement)contextModel.getContextIdToElement().get(binding.getContextId()));
        this.setUserDelta(new Integer(binding.getType()));
        this.setModelObject(binding);
    }

    public void fill(ParameterizedCommand parameterizedCommand) {
        this.setCommandInfo(parameterizedCommand);
        this.setTrigger(null);
        this.setContext(null);
        this.setUserDelta(new Integer(0));
        this.setModelObject(parameterizedCommand);
    }
}

