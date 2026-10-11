/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.contexts.Context
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.dynamichelpers.ExtensionTracker
 *  org.eclipse.core.runtime.dynamichelpers.IExtensionChangeHandler
 *  org.eclipse.core.runtime.dynamichelpers.IExtensionTracker
 */
package org.eclipse.ui.internal.registry;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.commands.contexts.Context;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.dynamichelpers.ExtensionTracker;
import org.eclipse.core.runtime.dynamichelpers.IExtensionChangeHandler;
import org.eclipse.core.runtime.dynamichelpers.IExtensionTracker;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.contexts.IContextService;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.registry.ActionSetDescriptor;
import org.eclipse.ui.internal.registry.IActionSetDescriptor;

public class ActionSetRegistry
implements IExtensionChangeHandler {
    private ArrayList children = new ArrayList();
    private Map mapPartToActionSetIds = new HashMap();
    private Map mapPartToActionSets = new HashMap();
    private IContextService contextService;
    static /* synthetic */ Class class$0;

    public ActionSetRegistry() {
        IWorkbench iWorkbench = PlatformUI.getWorkbench();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.contexts.IContextService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.contextService = (IContextService)iWorkbench.getService(clazz);
        PlatformUI.getWorkbench().getExtensionTracker().registerHandler((IExtensionChangeHandler)this, ExtensionTracker.createExtensionPointFilter((IExtensionPoint[])new IExtensionPoint[]{this.getActionSetExtensionPoint(), this.getActionSetPartAssociationExtensionPoint()}));
        this.readFromRegistry();
    }

    private IExtensionPoint getActionSetPartAssociationExtensionPoint() {
        return Platform.getExtensionRegistry().getExtensionPoint("org.eclipse.ui", "actionSetPartAssociations");
    }

    private IExtensionPoint getActionSetExtensionPoint() {
        return Platform.getExtensionRegistry().getExtensionPoint("org.eclipse.ui", "actionSets");
    }

    private void addActionSet(ActionSetDescriptor desc) {
        this.children.add(desc);
        Context actionSetContext = this.contextService.getContext(desc.getId());
        if (!actionSetContext.isDefined()) {
            actionSetContext.define(desc.getLabel(), desc.getDescription(), "org.eclipse.ui.contexts.actionSet");
        }
    }

    private void removeActionSet(IActionSetDescriptor desc) {
        Context actionSetContext = this.contextService.getContext(desc.getId());
        if (actionSetContext.isDefined()) {
            actionSetContext.undefine();
        }
        this.children.remove(desc);
    }

    private Object addAssociation(String actionSetId, String partId) {
        ArrayList<String> actionSets = (ArrayList<String>)this.mapPartToActionSetIds.get(partId);
        if (actionSets == null) {
            actionSets = new ArrayList<String>();
            this.mapPartToActionSetIds.put(partId, actionSets);
        }
        actionSets.add(actionSetId);
        ActionSetPartAssociation association = new ActionSetPartAssociation(partId, actionSetId);
        return association;
    }

    public IActionSetDescriptor findActionSet(String id) {
        Iterator i = this.children.iterator();
        while (i.hasNext()) {
            IActionSetDescriptor desc = (IActionSetDescriptor)i.next();
            if (!desc.getId().equals(id)) continue;
            return desc;
        }
        return null;
    }

    public IActionSetDescriptor[] getActionSets() {
        return this.children.toArray(new IActionSetDescriptor[this.children.size()]);
    }

    public IActionSetDescriptor[] getActionSetsFor(String partId) {
        ArrayList<IActionSetDescriptor> actionSets = (ArrayList<IActionSetDescriptor>)this.mapPartToActionSets.get(partId);
        if (actionSets != null) {
            return actionSets.toArray(new IActionSetDescriptor[actionSets.size()]);
        }
        ArrayList actionSetIds = (ArrayList)this.mapPartToActionSetIds.get(partId);
        if (actionSetIds == null) {
            return new IActionSetDescriptor[0];
        }
        actionSets = new ArrayList<IActionSetDescriptor>(actionSetIds.size());
        Iterator i = actionSetIds.iterator();
        while (i.hasNext()) {
            String actionSetId = (String)i.next();
            IActionSetDescriptor actionSet = this.findActionSet(actionSetId);
            if (actionSet != null) {
                actionSets.add(actionSet);
                continue;
            }
            WorkbenchPlugin.log("Unable to associate action set with part: " + partId + ". Action set " + actionSetId + " not found.");
        }
        this.mapPartToActionSets.put(partId, actionSets);
        return actionSets.toArray(new IActionSetDescriptor[actionSets.size()]);
    }

    private void readFromRegistry() {
        IExtension[] extensions = this.getActionSetExtensionPoint().getExtensions();
        int i = 0;
        while (i < extensions.length) {
            this.addActionSets(PlatformUI.getWorkbench().getExtensionTracker(), extensions[i]);
            ++i;
        }
        extensions = this.getActionSetPartAssociationExtensionPoint().getExtensions();
        i = 0;
        while (i < extensions.length) {
            this.addActionSetPartAssociations(PlatformUI.getWorkbench().getExtensionTracker(), extensions[i]);
            ++i;
        }
    }

    public void addExtension(IExtensionTracker tracker, IExtension extension) {
        String extensionPointUniqueIdentifier = extension.getExtensionPointUniqueIdentifier();
        if (extensionPointUniqueIdentifier.equals(this.getActionSetExtensionPoint().getUniqueIdentifier())) {
            this.addActionSets(tracker, extension);
        } else if (extensionPointUniqueIdentifier.equals(this.getActionSetPartAssociationExtensionPoint().getUniqueIdentifier())) {
            this.addActionSetPartAssociations(tracker, extension);
        }
    }

    private void addActionSetPartAssociations(IExtensionTracker tracker, IExtension extension) {
        IConfigurationElement[] elements = extension.getConfigurationElements();
        int i = 0;
        while (i < elements.length) {
            IConfigurationElement element = elements[i];
            if (element.getName().equals("actionSetPartAssociation")) {
                String actionSetId = element.getAttribute("targetID");
                IConfigurationElement[] children = element.getChildren();
                int j = 0;
                while (j < children.length) {
                    IConfigurationElement child = children[j];
                    if (child.getName().equals("part")) {
                        Object trackingObject;
                        String partId = child.getAttribute("id");
                        if (partId != null && (trackingObject = this.addAssociation(actionSetId, partId)) != null) {
                            tracker.registerObject(extension, trackingObject, 0);
                        }
                    } else {
                        WorkbenchPlugin.log("Unable to process element: " + child.getName() + " in action set part associations extension: " + extension.getUniqueIdentifier());
                    }
                    ++j;
                }
            }
            ++i;
        }
        this.mapPartToActionSets.clear();
    }

    private void addActionSets(IExtensionTracker tracker, IExtension extension) {
        IConfigurationElement[] elements = extension.getConfigurationElements();
        int i = 0;
        while (i < elements.length) {
            IConfigurationElement element = elements[i];
            if (element.getName().equals("actionSet")) {
                try {
                    ActionSetDescriptor desc = new ActionSetDescriptor(element);
                    this.addActionSet(desc);
                    tracker.registerObject(extension, (Object)desc, 2);
                }
                catch (CoreException e) {
                    WorkbenchPlugin.log("Unable to create action set descriptor.", e.getStatus());
                }
            }
            ++i;
        }
        this.mapPartToActionSets.clear();
    }

    public void removeExtension(IExtension extension, Object[] objects) {
        String extensionPointUniqueIdentifier = extension.getExtensionPointUniqueIdentifier();
        if (extensionPointUniqueIdentifier.equals(this.getActionSetExtensionPoint().getUniqueIdentifier())) {
            this.removeActionSets(objects);
        } else if (extensionPointUniqueIdentifier.equals(this.getActionSetPartAssociationExtensionPoint().getUniqueIdentifier())) {
            this.removeActionSetPartAssociations(objects);
        }
    }

    private void removeActionSetPartAssociations(Object[] objects) {
        int i = 0;
        while (i < objects.length) {
            Object object = objects[i];
            if (object instanceof ActionSetPartAssociation) {
                ActionSetPartAssociation association = (ActionSetPartAssociation)object;
                String actionSetId = association.actionSetId;
                ArrayList actionSets = (ArrayList)this.mapPartToActionSetIds.get(association.partId);
                if (actionSets == null) {
                    return;
                }
                actionSets.remove(actionSetId);
                if (actionSets.isEmpty()) {
                    this.mapPartToActionSetIds.remove(association.partId);
                }
            }
            ++i;
        }
        this.mapPartToActionSets.clear();
    }

    private void removeActionSets(Object[] objects) {
        int i = 0;
        while (i < objects.length) {
            Object object = objects[i];
            if (object instanceof IActionSetDescriptor) {
                IActionSetDescriptor desc = (IActionSetDescriptor)object;
                this.removeActionSet(desc);
                Iterator j = this.mapPartToActionSetIds.values().iterator();
                while (j.hasNext()) {
                    ArrayList list = (ArrayList)j.next();
                    list.remove(desc.getId());
                    if (!list.isEmpty()) continue;
                    j.remove();
                }
            }
            ++i;
        }
        this.mapPartToActionSets.clear();
    }

    private class ActionSetPartAssociation {
        String partId;
        String actionSetId;

        public ActionSetPartAssociation(String partId, String actionSetId) {
            this.partId = partId;
            this.actionSetId = actionSetId;
        }
    }
}

