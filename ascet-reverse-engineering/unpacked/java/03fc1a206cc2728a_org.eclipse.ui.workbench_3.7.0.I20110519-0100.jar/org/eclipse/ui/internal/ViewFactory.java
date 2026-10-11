/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.SafeRunner
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.dynamichelpers.IExtensionChangeHandler
 *  org.eclipse.core.runtime.dynamichelpers.IExtensionTracker
 *  org.eclipse.jface.util.SafeRunnable
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.ui.internal;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.dynamichelpers.IExtensionChangeHandler;
import org.eclipse.core.runtime.dynamichelpers.IExtensionTracker;
import org.eclipse.jface.util.SafeRunnable;
import org.eclipse.osgi.util.NLS;
import org.eclipse.ui.IMemento;
import org.eclipse.ui.IViewPart;
import org.eclipse.ui.IViewReference;
import org.eclipse.ui.IWorkbenchPart3;
import org.eclipse.ui.PartInitException;
import org.eclipse.ui.internal.PartPlaceholder;
import org.eclipse.ui.internal.ReferenceCounter;
import org.eclipse.ui.internal.ViewReference;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPage;
import org.eclipse.ui.views.IViewDescriptor;
import org.eclipse.ui.views.IViewRegistry;

public class ViewFactory
implements IExtensionChangeHandler {
    private ReferenceCounter counter;
    private HashMap mementoTable = new HashMap();
    WorkbenchPage page;
    IViewRegistry viewReg;
    static final String ID_SEP = ":";

    static String getKey(String id, String secondaryId) {
        return secondaryId == null ? id : String.valueOf(id) + ID_SEP + secondaryId;
    }

    static String getKey(IViewReference viewRef) {
        return ViewFactory.getKey(viewRef.getId(), viewRef.getSecondaryId());
    }

    static String extractPrimaryId(String compoundId) {
        int i = compoundId.lastIndexOf(ID_SEP);
        if (i == -1) {
            return compoundId;
        }
        return compoundId.substring(0, i);
    }

    static String extractSecondaryId(String compoundId) {
        int i = compoundId.lastIndexOf(ID_SEP);
        if (i == -1) {
            return null;
        }
        return compoundId.substring(i + 1);
    }

    static boolean hasWildcard(String viewId) {
        return viewId.indexOf(PartPlaceholder.WILD_CARD) >= 0;
    }

    public ViewFactory(WorkbenchPage page, IViewRegistry reg) {
        this.page = page;
        this.viewReg = reg;
        this.counter = new ReferenceCounter();
        page.getExtensionTracker().registerHandler((IExtensionChangeHandler)this, null);
    }

    public IViewReference createView(String id) throws PartInitException {
        return this.createView(id, null);
    }

    public IViewReference createView(String id, String secondaryId) throws PartInitException {
        IViewDescriptor desc = this.viewReg.find(id);
        if (desc == null) {
            throw new PartInitException(NLS.bind((String)WorkbenchMessages.ViewFactory_couldNotCreate, (Object)id));
        }
        if (secondaryId != null && !desc.getAllowMultiple()) {
            throw new PartInitException(NLS.bind((String)WorkbenchMessages.ViewFactory_noMultiple, (Object)id));
        }
        String key = ViewFactory.getKey(id, secondaryId);
        IViewReference ref = (IViewReference)this.counter.get(key);
        if (ref == null) {
            IMemento memento = (IMemento)this.mementoTable.get(key);
            ref = new ViewReference(this, id, secondaryId, memento);
            this.mementoTable.remove(key);
            this.counter.put(key, ref);
            this.getWorkbenchPage().partAdded((ViewReference)ref);
        } else {
            this.counter.addRef(key);
        }
        return ref;
    }

    public IViewReference[] getViewReferences() {
        List values = this.counter.values();
        return values.toArray(new IViewReference[values.size()]);
    }

    public IViewReference getView(String id) {
        return this.getView(id, null);
    }

    public IViewReference getView(String id, String secondaryId) {
        String key = ViewFactory.getKey(id, secondaryId);
        return (IViewReference)this.counter.get(key);
    }

    public IViewRegistry getViewRegistry() {
        return this.viewReg;
    }

    public IViewReference[] getViews() {
        List list = this.counter.values();
        IViewReference[] array = new IViewReference[list.size()];
        list.toArray(array);
        return array;
    }

    public WorkbenchPage getWorkbenchPage() {
        return this.page;
    }

    public int getReferenceCount(IViewReference viewRef) {
        String key = ViewFactory.getKey(viewRef);
        IViewReference ref = (IViewReference)this.counter.get(key);
        return ref == null ? 0 : this.counter.getRef(key);
    }

    public void releaseView(IViewReference viewRef) {
        String key = ViewFactory.getKey(viewRef);
        IViewReference ref = (IViewReference)this.counter.get(key);
        if (ref == null) {
            return;
        }
        int count = this.counter.removeRef(key);
        if (count <= 0) {
            this.getWorkbenchPage().partRemoved((ViewReference)ref);
        }
    }

    public IStatus restoreState(IMemento memento) {
        IMemento[] mem = memento.getChildren("view");
        int i = 0;
        while (i < mem.length) {
            this.restoreViewState(mem[i]);
            ++i;
        }
        return Status.OK_STATUS;
    }

    public IStatus saveState(IMemento memento) {
        MultiStatus result = new MultiStatus("org.eclipse.ui", 0, WorkbenchMessages.ViewFactory_problemsSavingViews, null);
        IViewReference[] refs = this.getViews();
        int i = 0;
        while (i < refs.length) {
            IViewDescriptor desc = this.viewReg.find(refs[i].getId());
            if (desc != null && desc.isRestorable()) {
                this.saveViewState(memento, refs[i], result);
            }
            ++i;
        }
        return result;
    }

    public IMemento saveViewState(IMemento memento, IViewReference ref, MultiStatus res) {
        final MultiStatus result = res;
        final IMemento viewMemento = memento.createChild("view");
        viewMemento.putString("id", ViewFactory.getKey(ref));
        if (ref instanceof ViewReference) {
            viewMemento.putString("partName", ((ViewReference)ref).getPartName());
        }
        final IViewReference viewRef = ref;
        final IViewPart view = (IViewPart)ref.getPart(false);
        if (view != null) {
            SafeRunner.run((ISafeRunnable)new SafeRunnable(){

                public void run() {
                    Map properties;
                    if (view instanceof IWorkbenchPart3 && !(properties = ((IWorkbenchPart3)((Object)view)).getPartProperties()).isEmpty()) {
                        IMemento propBag = viewMemento.createChild("properties");
                        Iterator i = properties.entrySet().iterator();
                        while (i.hasNext()) {
                            Map.Entry entry = i.next();
                            IMemento p = propBag.createChild("property", (String)entry.getKey());
                            p.putTextData((String)entry.getValue());
                        }
                    }
                    view.saveState(viewMemento.createChild("viewState"));
                }

                public void handleException(Throwable e) {
                    result.add((IStatus)new Status(4, "org.eclipse.ui", 0, NLS.bind((String)WorkbenchMessages.ViewFactory_couldNotSave, (Object)viewRef.getTitle()), e));
                }
            });
        } else {
            IMemento mem = null;
            IMemento props = null;
            if (ref instanceof ViewReference) {
                mem = ((ViewReference)ref).getMemento();
                if (mem != null) {
                    props = mem.getChild("properties");
                }
                if (mem != null) {
                    mem = mem.getChild("viewState");
                }
            }
            if (props != null) {
                viewMemento.createChild("properties").putMemento(props);
            }
            if (mem != null) {
                IMemento child = viewMemento.createChild("viewState");
                child.putMemento(mem);
            }
        }
        return viewMemento;
    }

    public void restoreViewState(IMemento memento) {
        String compoundId = memento.getString("id");
        this.mementoTable.put(compoundId, memento);
    }

    IMemento getViewState(String key) {
        IMemento memento = (IMemento)this.mementoTable.get(key);
        if (memento == null) {
            return null;
        }
        return memento.getChild("viewState");
    }

    public void removeExtension(IExtension source, Object[] objects) {
        int i = 0;
        while (i < objects.length) {
            if (objects[i] instanceof IViewPart) {
                IViewPart part = (IViewPart)objects[i];
                this.page.hideView(part);
            }
            ++i;
        }
    }

    public void addExtension(IExtensionTracker tracker, IExtension extension) {
    }
}

