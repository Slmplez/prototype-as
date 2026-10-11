/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.Command
 *  org.eclipse.core.commands.ParameterizedCommand
 *  org.eclipse.core.commands.common.NotDefinedException
 *  org.eclipse.jface.bindings.Binding
 *  org.eclipse.jface.bindings.BindingManager
 *  org.eclipse.jface.bindings.TriggerSequence
 *  org.eclipse.jface.bindings.keys.KeyBinding
 *  org.eclipse.jface.bindings.keys.KeySequence
 */
package org.eclipse.ui.internal.keys.model;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.commands.Command;
import org.eclipse.core.commands.ParameterizedCommand;
import org.eclipse.core.commands.common.NotDefinedException;
import org.eclipse.jface.bindings.Binding;
import org.eclipse.jface.bindings.BindingManager;
import org.eclipse.jface.bindings.TriggerSequence;
import org.eclipse.jface.bindings.keys.KeyBinding;
import org.eclipse.jface.bindings.keys.KeySequence;
import org.eclipse.ui.commands.ICommandService;
import org.eclipse.ui.internal.keys.model.BindingElement;
import org.eclipse.ui.internal.keys.model.CommonModel;
import org.eclipse.ui.internal.keys.model.ConflictModel;
import org.eclipse.ui.internal.keys.model.ContextModel;
import org.eclipse.ui.internal.keys.model.KeyController;
import org.eclipse.ui.internal.util.Util;
import org.eclipse.ui.services.IServiceLocator;

public class BindingModel
extends CommonModel {
    public static final String PROP_BINDING_ADD = "bindingAdd";
    public static final String PROP_BINDING_ELEMENT_MAP = "bindingElementMap";
    public static final String PROP_BINDING_FILTER = "bindingFilter";
    public static final String PROP_BINDING_REMOVE = "bindingRemove";
    public static final String PROP_BINDINGS = "bindings";
    public static final String PROP_CONFLICT_ELEMENT_MAP = "bindingConfictMap";
    private Collection allParameterizedCommands;
    private BindingManager bindingManager;
    private HashSet bindingElements;
    private Map bindingToElement;
    private Map commandToElement;
    static /* synthetic */ Class class$0;

    static final boolean deletes(Binding del, Binding binding) {
        boolean deletes = true;
        deletes &= Util.equals(del.getContextId(), binding.getContextId());
        deletes &= Util.equals(del.getTriggerSequence(), binding.getTriggerSequence());
        if (del.getLocale() != null) {
            deletes &= Util.equals(del.getLocale(), binding.getLocale());
        }
        if (del.getPlatform() != null) {
            deletes &= Util.equals(del.getPlatform(), binding.getPlatform());
        }
        deletes &= binding.getType() == 0;
        return deletes &= Util.equals(del.getParameterizedCommand(), null);
    }

    public BindingModel(KeyController kc) {
        super(kc);
    }

    public void copy() {
        BindingElement element = (BindingElement)this.getSelectedElement();
        this.copy(element);
    }

    public void copy(BindingElement element) {
        if (element == null || !(element.getModelObject() instanceof Binding)) {
            return;
        }
        BindingElement be = new BindingElement(this.controller);
        ParameterizedCommand parameterizedCommand = ((Binding)element.getModelObject()).getParameterizedCommand();
        be.init(parameterizedCommand);
        be.setParent(this);
        this.bindingElements.add(be);
        this.commandToElement.put(parameterizedCommand, be);
        this.controller.firePropertyChange(this, PROP_BINDING_ADD, null, be);
        this.setSelectedElement(be);
    }

    public HashSet getBindings() {
        return this.bindingElements;
    }

    public Map getBindingToElement() {
        return this.bindingToElement;
    }

    public Map getCommandToElement() {
        return this.commandToElement;
    }

    public void init(IServiceLocator locator, BindingManager manager, ContextModel model) {
        HashSet<ParameterizedCommand> cmdsForBindings = new HashSet<ParameterizedCommand>();
        this.bindingToElement = new HashMap();
        this.commandToElement = new HashMap();
        this.bindingElements = new HashSet();
        this.bindingManager = manager;
        Iterator i = manager.getActiveBindingsDisregardingContextFlat().iterator();
        while (i.hasNext()) {
            Binding b = (Binding)i.next();
            BindingElement be = new BindingElement(this.controller);
            be.init(b, model);
            be.setParent(this);
            this.bindingElements.add(be);
            this.bindingToElement.put(b, be);
            cmdsForBindings.add(b.getParameterizedCommand());
        }
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.commands.ICommandService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        ICommandService commandService = (ICommandService)locator.getService(clazz);
        Collection commandIds = commandService.getDefinedCommandIds();
        this.allParameterizedCommands = new HashSet();
        Iterator commandIdItr = commandIds.iterator();
        while (commandIdItr.hasNext()) {
            String currentCommandId = (String)commandIdItr.next();
            Command currentCommand = commandService.getCommand(currentCommandId);
            try {
                this.allParameterizedCommands.addAll(ParameterizedCommand.generateCombinations((Command)currentCommand));
            }
            catch (NotDefinedException notDefinedException) {}
        }
        i = this.allParameterizedCommands.iterator();
        while (i.hasNext()) {
            ParameterizedCommand cmd = (ParameterizedCommand)i.next();
            if (cmdsForBindings.contains(cmd)) continue;
            BindingElement be = new BindingElement(this.controller);
            be.init(cmd);
            be.setParent(this);
            this.bindingElements.add(be);
            this.commandToElement.put(cmd, be);
        }
    }

    public void refresh(ContextModel contextModel) {
        HashSet<Object> cmdsForBindings = new HashSet<Object>();
        Collection activeManagerBindings = this.bindingManager.getActiveBindingsDisregardingContextFlat();
        Iterator i = activeManagerBindings.iterator();
        while (i.hasNext()) {
            KeyBinding b = (KeyBinding)i.next();
            ParameterizedCommand parameterizedCommand = b.getParameterizedCommand();
            cmdsForBindings.add(parameterizedCommand);
            if (this.bindingToElement.containsKey(b)) continue;
            BindingElement be = new BindingElement(this.controller);
            be.init((Binding)b, contextModel);
            be.setParent(this);
            this.bindingElements.add(be);
            this.bindingToElement.put(b, be);
            this.controller.firePropertyChange(this, PROP_BINDING_ADD, null, be);
            if (!this.commandToElement.containsKey(parameterizedCommand) || be.getUserDelta() != 0) continue;
            Object remove = this.commandToElement.remove(parameterizedCommand);
            this.bindingElements.remove(remove);
            this.controller.firePropertyChange(this, PROP_BINDING_REMOVE, null, remove);
        }
        i = this.bindingElements.iterator();
        while (i.hasNext()) {
            BindingElement be = (BindingElement)i.next();
            Object obj = be.getModelObject();
            if (obj instanceof Binding) {
                Binding b = (Binding)obj;
                if (activeManagerBindings.contains(b)) continue;
                be.fill(b.getParameterizedCommand());
                this.bindingToElement.remove(b);
                i.remove();
                this.controller.firePropertyChange(this, PROP_BINDING_REMOVE, null, be);
                continue;
            }
            cmdsForBindings.add(obj);
        }
        i = this.allParameterizedCommands.iterator();
        while (i.hasNext()) {
            ParameterizedCommand cmd = (ParameterizedCommand)i.next();
            if (cmdsForBindings.contains(cmd)) continue;
            BindingElement be = new BindingElement(this.controller);
            be.init(cmd);
            be.setParent(this);
            this.bindingElements.add(be);
            this.commandToElement.put(cmd, be);
            this.controller.firePropertyChange(this, PROP_BINDING_ADD, null, be);
        }
    }

    public void remove() {
        BindingElement element = (BindingElement)this.getSelectedElement();
        this.remove(element);
    }

    public void remove(BindingElement bindingElement) {
        if (bindingElement == null || !(bindingElement.getModelObject() instanceof Binding)) {
            return;
        }
        KeyBinding keyBinding = (KeyBinding)bindingElement.getModelObject();
        if (keyBinding.getType() == 1) {
            this.bindingManager.removeBinding((Binding)keyBinding);
        } else {
            KeySequence keySequence = keyBinding.getKeySequence();
            this.bindingManager.addBinding((Binding)new KeyBinding(keySequence, null, keyBinding.getSchemeId(), keyBinding.getContextId(), null, null, null, 1));
            ConflictModel conflictModel = this.controller.getConflictModel();
            conflictModel.updateConflictsFor(bindingElement);
            Collection conflictsList = conflictModel.getConflicts();
            if (conflictsList != null) {
                Object[] conflicts = conflictsList.toArray();
                int i = 0;
                while (i < conflicts.length) {
                    Binding binding;
                    Object modelObject;
                    BindingElement be = (BindingElement)conflicts[i];
                    if (be != bindingElement && (modelObject = be.getModelObject()) instanceof Binding && (binding = (Binding)modelObject).getType() == 0) {
                        ParameterizedCommand pCommand = binding.getParameterizedCommand();
                        be.fill(pCommand);
                        this.commandToElement.put(pCommand, be);
                    }
                    ++i;
                }
            }
        }
        ParameterizedCommand parameterizedCommand = keyBinding.getParameterizedCommand();
        bindingElement.fill(parameterizedCommand);
        this.commandToElement.put(parameterizedCommand, bindingElement);
        this.controller.firePropertyChange(this, PROP_CONFLICT_ELEMENT_MAP, null, bindingElement);
    }

    public void restoreBinding(BindingElement element) {
        if (element == null) {
            return;
        }
        Object modelObject = element.getModelObject();
        ParameterizedCommand cmd = null;
        if (modelObject instanceof ParameterizedCommand) {
            cmd = (ParameterizedCommand)modelObject;
            TriggerSequence trigger = this.bindingManager.getBestActiveBindingFor(cmd.getId());
            Binding binding = this.bindingManager.getPerfectMatch(trigger);
            if (binding != null && binding.getType() == 0) {
                return;
            }
        } else if (modelObject instanceof KeyBinding) {
            cmd = ((KeyBinding)modelObject).getParameterizedCommand();
        }
        Binding[] managerBindings = this.bindingManager.getBindings();
        ArrayList<Binding> systemBindings = new ArrayList<Binding>();
        ArrayList<Binding> removalBindings = new ArrayList<Binding>();
        int i = 0;
        while (i < managerBindings.length) {
            if (managerBindings[i].getParameterizedCommand() == null) {
                removalBindings.add(managerBindings[i]);
            } else if (managerBindings[i].getParameterizedCommand().equals((Object)cmd)) {
                if (managerBindings[i].getType() == 1) {
                    this.bindingManager.removeBinding(managerBindings[i]);
                } else if (managerBindings[i].getType() == 0) {
                    systemBindings.add(managerBindings[i]);
                }
            }
            ++i;
        }
        Iterator i2 = systemBindings.iterator();
        while (i2.hasNext()) {
            Binding sys = (Binding)i2.next();
            Iterator j = removalBindings.iterator();
            while (j.hasNext()) {
                Binding del = (Binding)j.next();
                if (!BindingModel.deletes(del, sys) || del.getType() != 1) continue;
                this.bindingManager.removeBinding(del);
            }
        }
        this.setSelectedElement(null);
        this.bindingElements.remove(element);
        this.bindingToElement.remove(modelObject);
        this.commandToElement.remove(modelObject);
        this.controller.firePropertyChange(this, PROP_BINDING_REMOVE, null, element);
    }

    public void restoreBinding(ContextModel contextModel) {
        BindingElement element = (BindingElement)this.getSelectedElement();
        if (element == null) {
            return;
        }
        this.restoreBinding(element);
        this.refresh(contextModel);
        Object obj = element.getModelObject();
        ParameterizedCommand cmd = null;
        if (obj instanceof ParameterizedCommand) {
            cmd = (ParameterizedCommand)obj;
        } else if (obj instanceof KeyBinding) {
            cmd = ((KeyBinding)obj).getParameterizedCommand();
        }
        boolean done = false;
        Iterator i = this.bindingElements.iterator();
        while (i.hasNext() && !done) {
            BindingElement be = (BindingElement)i.next();
            obj = be.getModelObject();
            ParameterizedCommand pcmd = null;
            if (obj instanceof ParameterizedCommand) {
                pcmd = (ParameterizedCommand)obj;
            } else if (obj instanceof KeyBinding) {
                pcmd = ((KeyBinding)obj).getParameterizedCommand();
            }
            if (!cmd.equals((Object)pcmd)) continue;
            done = true;
            this.setSelectedElement(be);
        }
    }

    public void setBindings(HashSet bindings) {
        HashSet old = this.bindingElements;
        this.bindingElements = bindings;
        this.controller.firePropertyChange(this, PROP_BINDINGS, old, bindings);
    }

    public void setBindingToElement(Map bindingToElement) {
        Map old = this.bindingToElement;
        this.bindingToElement = bindingToElement;
        this.controller.firePropertyChange(this, PROP_BINDING_ELEMENT_MAP, old, bindingToElement);
    }
}

