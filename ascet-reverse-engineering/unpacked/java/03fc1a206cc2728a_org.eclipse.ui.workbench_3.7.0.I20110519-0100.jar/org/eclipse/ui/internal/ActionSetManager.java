/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.ListenerList
 */
package org.eclipse.ui.internal;

import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.ui.IPropertyListener;
import org.eclipse.ui.contexts.IContextActivation;
import org.eclipse.ui.contexts.IContextService;
import org.eclipse.ui.internal.registry.IActionSetDescriptor;
import org.eclipse.ui.services.IServiceLocator;

public class ActionSetManager {
    private HashMap actionSets = new HashMap();
    private HashSet visibleItems = new HashSet();
    public static final int PROP_VISIBLE = 0;
    public static final int PROP_HIDDEN = 1;
    public static final int CHANGE_MASK = 0;
    public static final int CHANGE_UNMASK = 1;
    public static final int CHANGE_SHOW = 2;
    public static final int CHANGE_HIDE = 3;
    private ListenerList listeners = new ListenerList();
    private IPropertyListener contextListener;
    private Map activationsById = new HashMap();
    private IContextService contextService;
    static /* synthetic */ Class class$0;

    public ActionSetManager(IServiceLocator locator) {
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
        this.addListener(this.getContextListener());
    }

    private IPropertyListener getContextListener() {
        if (this.contextListener == null) {
            this.contextListener = new IPropertyListener(){

                public void propertyChanged(Object source, int propId) {
                    if (source instanceof IActionSetDescriptor) {
                        IContextActivation act;
                        IActionSetDescriptor desc = (IActionSetDescriptor)source;
                        String id = desc.getId();
                        if (propId == 0) {
                            ActionSetManager.this.activationsById.put(id, ActionSetManager.this.contextService.activateContext(id));
                        } else if (propId == 1 && (act = (IContextActivation)ActionSetManager.this.activationsById.remove(id)) != null) {
                            ActionSetManager.this.contextService.deactivateContext(act);
                        }
                    }
                }
            };
        }
        return this.contextListener;
    }

    public void addListener(IPropertyListener l) {
        this.listeners.add((Object)l);
    }

    public void removeListener(IPropertyListener l) {
        this.listeners.remove((Object)l);
    }

    private void firePropertyChange(IActionSetDescriptor descriptor, int id) {
        Object[] l = this.listeners.getListeners();
        int i = 0;
        while (i < l.length) {
            IPropertyListener listener = (IPropertyListener)l[i];
            listener.propertyChanged(descriptor, id);
            ++i;
        }
    }

    private ActionSetRec getRec(IActionSetDescriptor descriptor) {
        ActionSetRec rec = (ActionSetRec)this.actionSets.get(descriptor);
        if (rec == null) {
            rec = new ActionSetRec();
            this.actionSets.put(descriptor, rec);
        }
        return rec;
    }

    public void showAction(IActionSetDescriptor descriptor) {
        ActionSetRec rec = this.getRec(descriptor);
        boolean wasVisible = rec.isVisible();
        ++rec.showCount;
        if (!wasVisible && rec.isVisible()) {
            this.visibleItems.add(descriptor);
            this.firePropertyChange(descriptor, 0);
            if (rec.isEmpty()) {
                this.actionSets.remove(descriptor);
            }
        }
    }

    public void hideAction(IActionSetDescriptor descriptor) {
        ActionSetRec rec = this.getRec(descriptor);
        boolean wasVisible = rec.isVisible();
        --rec.showCount;
        if (wasVisible && !rec.isVisible()) {
            this.visibleItems.remove(descriptor);
            this.firePropertyChange(descriptor, 1);
            if (rec.isEmpty()) {
                this.actionSets.remove(descriptor);
            }
        }
    }

    public void maskAction(IActionSetDescriptor descriptor) {
        ActionSetRec rec = this.getRec(descriptor);
        boolean wasVisible = rec.isVisible();
        ++rec.maskCount;
        if (wasVisible && !rec.isVisible()) {
            this.visibleItems.remove(descriptor);
            this.firePropertyChange(descriptor, 1);
            if (rec.isEmpty()) {
                this.actionSets.remove(descriptor);
            }
        }
    }

    public void unmaskAction(IActionSetDescriptor descriptor) {
        ActionSetRec rec = this.getRec(descriptor);
        boolean wasVisible = rec.isVisible();
        --rec.maskCount;
        if (!wasVisible && rec.isVisible()) {
            this.visibleItems.add(descriptor);
            this.firePropertyChange(descriptor, 0);
            if (rec.isEmpty()) {
                this.actionSets.remove(descriptor);
            }
        }
    }

    public Collection getVisibleItems() {
        return this.visibleItems;
    }

    public void change(IActionSetDescriptor descriptor, int changeType) {
        switch (changeType) {
            case 2: {
                this.showAction(descriptor);
                break;
            }
            case 3: {
                this.hideAction(descriptor);
                break;
            }
            case 0: {
                this.maskAction(descriptor);
                break;
            }
            case 1: {
                this.unmaskAction(descriptor);
            }
        }
    }

    private static class ActionSetRec {
        int showCount;
        int maskCount;

        private ActionSetRec() {
        }

        public boolean isVisible() {
            return this.maskCount == 0 && this.showCount > 0;
        }

        public boolean isEmpty() {
            return this.maskCount == 0 && this.showCount == 0;
        }
    }
}

