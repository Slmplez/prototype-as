/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.common.NotDefinedException
 *  org.eclipse.core.commands.contexts.Context
 */
package org.eclipse.ui.internal.keys.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.core.commands.common.NotDefinedException;
import org.eclipse.core.commands.contexts.Context;
import org.eclipse.ui.contexts.IContextService;
import org.eclipse.ui.internal.keys.model.CommonModel;
import org.eclipse.ui.internal.keys.model.ContextElement;
import org.eclipse.ui.internal.keys.model.KeyController;
import org.eclipse.ui.services.IServiceLocator;

public class ContextModel
extends CommonModel {
    private static final String CONTEXT_ID_ACTION_SETS = "org.eclipse.ui.contexts.actionSet";
    private static final String CONTEXT_ID_INTERNAL = ".internal.";
    public static final String PROP_CONTEXTS = "contexts";
    public static final String PROP_CONTEXT_MAP = "contextIdElementMap";
    private List contexts;
    private Map contextIdToFilteredContexts;
    private Map contextIdToElement;
    private IContextService contextService;
    static /* synthetic */ Class class$0;

    public ContextModel(KeyController kc) {
        super(kc);
    }

    public void init(IServiceLocator locator) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.contexts.IContextService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.contextService = (IContextService)locator.getService(clazz);
        this.contexts = new ArrayList();
        this.contextIdToFilteredContexts = new HashMap();
        this.contextIdToElement = new HashMap();
        Context[] definedContexts = this.contextService.getDefinedContexts();
        int i = 0;
        while (i < definedContexts.length) {
            ContextElement ce = new ContextElement(this.controller);
            ce.init(definedContexts[i]);
            ce.setParent(this);
            this.contexts.add(ce);
            this.contextIdToElement.put(definedContexts[i].getId(), ce);
            ++i;
        }
    }

    public List getContexts() {
        return this.contexts;
    }

    public void setContexts(List contexts) {
        List old = this.contexts;
        this.contexts = contexts;
        this.controller.firePropertyChange(this, PROP_CONTEXTS, old, contexts);
    }

    public Map getContextIdToElement() {
        return this.contextIdToElement;
    }

    public void setContextIdToElement(Map contextToElement) {
        Map old = this.contextIdToElement;
        this.contextIdToElement = contextToElement;
        this.controller.firePropertyChange(this, PROP_CONTEXT_MAP, old, contextToElement);
    }

    public void filterContexts(boolean actionSets, boolean internal, boolean workbenchMenu) {
        String parentId;
        ContextElement contextElement;
        int i = 0;
        while (i < this.contexts.size()) {
            boolean removeContext = false;
            contextElement = (ContextElement)this.contexts.get(i);
            if (actionSets && contextElement.getId().equalsIgnoreCase(CONTEXT_ID_ACTION_SETS)) {
                removeContext = true;
            } else {
                try {
                    parentId = ((Context)contextElement.getModelObject()).getParentId();
                    while (parentId != null) {
                        if (parentId.equalsIgnoreCase(CONTEXT_ID_ACTION_SETS)) {
                            removeContext = true;
                        }
                        parentId = this.contextService.getContext(parentId).getParentId();
                    }
                }
                catch (NotDefinedException notDefinedException) {}
            }
            if (internal && contextElement.getId().indexOf(CONTEXT_ID_INTERNAL) != -1) {
                removeContext = true;
            }
            if (workbenchMenu && contextElement.getId().equals("org.eclipse.ui.contexts.workbenchMenu")) {
                removeContext = true;
            }
            if (removeContext) {
                this.contextIdToFilteredContexts.put(contextElement.getId(), contextElement);
                this.contextIdToElement.remove(contextElement);
            }
            ++i;
        }
        this.contexts.removeAll(this.contextIdToFilteredContexts.values());
        Iterator iterator = this.contextIdToFilteredContexts.keySet().iterator();
        while (iterator.hasNext()) {
            boolean restoreContext = false;
            contextElement = (ContextElement)this.contextIdToFilteredContexts.get(iterator.next());
            try {
                if (!actionSets) {
                    if (contextElement.getId().equalsIgnoreCase(CONTEXT_ID_ACTION_SETS)) {
                        restoreContext = true;
                    } else {
                        parentId = ((Context)contextElement.getModelObject()).getParentId();
                        if (parentId != null && parentId.equalsIgnoreCase(CONTEXT_ID_ACTION_SETS)) {
                            restoreContext = true;
                        }
                    }
                }
            }
            catch (NotDefinedException notDefinedException) {}
            if (!internal && contextElement.getId().indexOf(CONTEXT_ID_INTERNAL) != -1) {
                restoreContext = true;
            }
            if (!workbenchMenu && contextElement.getId().equals("org.eclipse.ui.contexts.workbenchMenu")) {
                restoreContext = true;
            }
            if (!restoreContext) continue;
            this.contexts.add(contextElement);
            this.contextIdToElement.put(contextElement.getId(), contextElement);
            iterator.remove();
        }
    }
}

