/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.bindings.Binding
 *  org.eclipse.jface.bindings.BindingManager
 *  org.eclipse.jface.bindings.TriggerSequence
 *  org.eclipse.jface.util.IPropertyChangeListener
 *  org.eclipse.jface.util.PropertyChangeEvent
 */
package org.eclipse.ui.internal.keys.model;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.jface.bindings.Binding;
import org.eclipse.jface.bindings.BindingManager;
import org.eclipse.jface.bindings.TriggerSequence;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.ui.internal.keys.model.BindingElement;
import org.eclipse.ui.internal.keys.model.BindingModel;
import org.eclipse.ui.internal.keys.model.CommonModel;
import org.eclipse.ui.internal.keys.model.KeyController;

public class ConflictModel
extends CommonModel {
    public static final String PROP_CONFLICTS = "conflicts";
    public static final String PROP_CONFLICTS_ADD = "conflictsAdd";
    public static final String PROP_CONFLICTS_REMOVE = "conflictsRemove";
    private Collection conflicts;
    private BindingManager bindingManager;
    private BindingModel bindingModel;
    private Map conflictsMap;

    public ConflictModel(KeyController kc) {
        super(kc);
    }

    public Collection getConflicts() {
        return this.conflicts;
    }

    public void setConflicts(Collection conflicts) {
        Collection old = this.conflicts;
        this.conflicts = conflicts;
        if (this.conflicts != null) {
            Iterator i = this.conflicts.iterator();
            Map bindingToElement = this.bindingModel.getBindingToElement();
            while (i.hasNext()) {
                Object next = i.next();
                if (bindingToElement.containsValue(next) || next.equals(this.getSelectedElement())) continue;
                i.remove();
            }
        }
        this.controller.firePropertyChange(this, PROP_CONFLICTS, old, conflicts);
    }

    public void updateConflictsFor(BindingElement source) {
        this.updateConflictsFor(source, false);
    }

    public void updateConflictsFor(BindingElement oldValue, BindingElement newValue) {
        this.updateConflictsFor(oldValue, newValue, false);
    }

    public void updateConflictsFor(BindingElement source, boolean removal) {
        this.updateConflictsFor(null, source, removal);
    }

    private void updateConflictsFor(BindingElement oldValue, BindingElement newValue, boolean removal) {
        this.updateConflictsFor(newValue, oldValue == null ? null : oldValue.getTrigger(), newValue == null ? null : newValue.getTrigger(), removal);
    }

    public void updateConflictsFor(BindingElement newValue, TriggerSequence oldTrigger, TriggerSequence newTrigger, boolean removal) {
        Collection matches = (Collection)this.conflictsMap.get(newValue);
        if (matches != null) {
            if (newTrigger == null || removal) {
                matches.remove(newValue);
                this.conflictsMap.remove(newValue);
                if (matches == this.conflicts) {
                    this.controller.firePropertyChange(this, PROP_CONFLICTS_REMOVE, null, newValue);
                }
                if (matches.size() == 1) {
                    BindingElement tbe = (BindingElement)matches.iterator().next();
                    this.conflictsMap.remove(tbe);
                    tbe.setConflict(Boolean.FALSE);
                    if (matches == this.conflicts) {
                        this.setConflicts(null);
                    }
                }
                return;
            }
            if (oldTrigger != null && !newTrigger.equals((Object)oldTrigger)) {
                matches.remove(newValue);
                this.conflictsMap.remove(newValue);
                if (matches == this.conflicts) {
                    this.controller.firePropertyChange(this, PROP_CONFLICTS_REMOVE, null, newValue);
                }
                if (matches.size() == 1) {
                    BindingElement tbe = (BindingElement)matches.iterator().next();
                    this.conflictsMap.remove(tbe);
                    tbe.setConflict(Boolean.FALSE);
                    if (matches == this.conflicts) {
                        this.setConflicts(null);
                    }
                }
            } else {
                return;
            }
        }
        if (newValue.getTrigger() == null || !(newValue.getModelObject() instanceof Binding)) {
            return;
        }
        Binding binding = (Binding)newValue.getModelObject();
        TriggerSequence trigger = binding.getTriggerSequence();
        matches = (Collection)this.bindingManager.getActiveBindingsDisregardingContext().get(trigger);
        ArrayList<BindingElement> localConflicts = new ArrayList<BindingElement>();
        if (matches != null) {
            localConflicts.add(newValue);
            Iterator i = matches.iterator();
            while (i.hasNext()) {
                Object element;
                Binding b = (Binding)i.next();
                if (binding == b || !b.getContextId().equals(binding.getContextId()) || !b.getSchemeId().equals(binding.getSchemeId()) || (element = this.bindingModel.getBindingToElement().get(b)) == null) continue;
                localConflicts.add((BindingElement)element);
            }
        }
        if (localConflicts.size() > 1) {
            Collection knownConflicts = null;
            Iterator i = localConflicts.iterator();
            while (i.hasNext() && knownConflicts == null) {
                BindingElement tbe = (BindingElement)i.next();
                knownConflicts = (Collection)this.conflictsMap.get(tbe);
            }
            if (knownConflicts != null) {
                knownConflicts.add(newValue);
                this.conflictsMap.put(newValue, knownConflicts);
                newValue.setConflict(Boolean.TRUE);
                if (knownConflicts == this.conflicts) {
                    this.controller.firePropertyChange(this, PROP_CONFLICTS_ADD, null, newValue);
                } else if (newValue == this.getSelectedElement()) {
                    this.setConflicts(knownConflicts);
                }
                return;
            }
            boolean isSelected = false;
            i = localConflicts.iterator();
            while (i.hasNext()) {
                BindingElement tbe = (BindingElement)i.next();
                if (tbe != null) {
                    this.conflictsMap.put(tbe, localConflicts);
                    tbe.setConflict(Boolean.TRUE);
                }
                if (tbe != this.getSelectedElement()) continue;
                isSelected = true;
            }
            if (isSelected) {
                this.setConflicts(localConflicts);
            }
        }
    }

    public void init(BindingManager manager, BindingModel model) {
        this.bindingManager = manager;
        this.bindingModel = model;
        this.conflictsMap = new HashMap();
        Iterator i = this.bindingModel.getBindings().iterator();
        while (i.hasNext()) {
            BindingElement be = (BindingElement)i.next();
            if (!(be.getModelObject() instanceof Binding)) continue;
            this.updateConflictsFor(be);
        }
        this.controller.addPropertyChangeListener(new IPropertyChangeListener(){

            public void propertyChange(PropertyChangeEvent event) {
                if (event.getSource() == ConflictModel.this && "selectedElement".equals(event.getProperty())) {
                    if (event.getNewValue() != null) {
                        ConflictModel.this.updateConflictsFor((BindingElement)event.getOldValue(), (BindingElement)event.getNewValue());
                        ConflictModel.this.setConflicts((Collection)ConflictModel.this.conflictsMap.get(event.getNewValue()));
                    } else {
                        ConflictModel.this.setConflicts(null);
                    }
                } else if ("bindingRemove".equals(event.getProperty())) {
                    ConflictModel.this.updateConflictsFor((BindingElement)event.getOldValue(), (BindingElement)event.getNewValue(), true);
                }
            }
        });
    }
}

