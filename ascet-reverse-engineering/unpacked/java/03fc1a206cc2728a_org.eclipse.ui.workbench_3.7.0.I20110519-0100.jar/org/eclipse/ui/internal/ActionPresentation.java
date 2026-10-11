/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.ui.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.ui.SubActionBars;
import org.eclipse.ui.internal.ActionSetActionBars;
import org.eclipse.ui.internal.PluginActionSet;
import org.eclipse.ui.internal.PluginActionSetBuilder;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.WorkbenchWindow;
import org.eclipse.ui.internal.provisional.application.IActionBarConfigurer2;
import org.eclipse.ui.internal.registry.IActionSet;
import org.eclipse.ui.internal.registry.IActionSetDescriptor;

public class ActionPresentation {
    private WorkbenchWindow window;
    private HashMap mapDescToRec = new HashMap(3);
    private HashMap invisibleBars = new HashMap(3);

    public ActionPresentation(WorkbenchWindow window) {
        this.window = window;
    }

    public void clearActionSets() {
        ArrayList oldList = new ArrayList();
        oldList.addAll(this.mapDescToRec.keySet());
        oldList.addAll(this.invisibleBars.keySet());
        Iterator iter = oldList.iterator();
        while (iter.hasNext()) {
            IActionSetDescriptor desc = (IActionSetDescriptor)iter.next();
            this.removeActionSet(desc);
        }
    }

    public void removeActionSet(IActionSetDescriptor desc) {
        SetRec rec = (SetRec)this.mapDescToRec.remove(desc);
        if (rec == null) {
            rec = (SetRec)this.invisibleBars.remove(desc);
        }
        if (rec != null) {
            IActionSet set = rec.set;
            SubActionBars bars = rec.bars;
            if (bars != null) {
                bars.dispose();
            }
            if (set != null) {
                set.dispose();
            }
        }
    }

    public void setActionSets(IActionSetDescriptor[] newArray) {
        HashSet<IActionSetDescriptor> newList = new HashSet<IActionSetDescriptor>();
        int i = 0;
        while (i < newArray.length) {
            IActionSetDescriptor descriptor = newArray[i];
            newList.add(descriptor);
            ++i;
        }
        ArrayList oldList = new ArrayList(this.mapDescToRec.keySet());
        Iterator iter = oldList.iterator();
        while (iter.hasNext()) {
            SetRec rec;
            IActionSetDescriptor desc = (IActionSetDescriptor)iter.next();
            if (newList.contains(desc) || (rec = (SetRec)this.mapDescToRec.get(desc)) == null) continue;
            this.mapDescToRec.remove(desc);
            IActionSet set = rec.set;
            SubActionBars bars = rec.bars;
            if (bars == null) continue;
            SetRec invisibleRec = new SetRec(set, bars);
            this.invisibleBars.put(desc, invisibleRec);
            bars.deactivate();
        }
        ArrayList<IActionSet> sets = new ArrayList<IActionSet>();
        int i2 = 0;
        while (i2 < newArray.length) {
            IActionSetDescriptor desc = newArray[i2];
            if (!this.mapDescToRec.containsKey(desc)) {
                try {
                    SetRec rec;
                    if (this.invisibleBars.containsKey(desc)) {
                        rec = (SetRec)this.invisibleBars.get(desc);
                        if (rec.bars != null) {
                            rec.bars.activate();
                        }
                        this.invisibleBars.remove(desc);
                    } else {
                        IActionSet set = desc.createActionSet();
                        ActionSetActionBars bars = new ActionSetActionBars(this.window.getActionBars(), this.window, (IActionBarConfigurer2)this.window.getWindowConfigurer().getActionBarConfigurer(), desc.getId());
                        rec = new SetRec(set, bars);
                        set.init(this.window, bars);
                        sets.add(set);
                        Object[] existingRegistrations = this.window.getExtensionTracker().getObjects(desc.getConfigurationElement().getDeclaringExtension());
                        if (existingRegistrations.length == 0 || !this.containsRegistration(existingRegistrations, desc)) {
                            this.window.getExtensionTracker().registerObject(desc.getConfigurationElement().getDeclaringExtension(), (Object)desc, 2);
                        }
                    }
                    this.mapDescToRec.put(desc, rec);
                }
                catch (CoreException e) {
                    WorkbenchPlugin.log("Unable to create ActionSet: " + desc.getId(), e);
                }
            }
            ++i2;
        }
        PluginActionSetBuilder.processActionSets(sets, this.window);
        iter = sets.iterator();
        while (iter.hasNext()) {
            PluginActionSet set = (PluginActionSet)iter.next();
            set.getBars().activate();
        }
    }

    private boolean containsRegistration(Object[] existingRegistrations, IActionSetDescriptor set) {
        int i = 0;
        while (i < existingRegistrations.length) {
            if (existingRegistrations[i] == set) {
                return true;
            }
            ++i;
        }
        return false;
    }

    public IActionSet[] getActionSets() {
        Collection setRecCollection = this.mapDescToRec.values();
        IActionSet[] result = new IActionSet[setRecCollection.size()];
        int i = 0;
        Iterator iterator = setRecCollection.iterator();
        while (iterator.hasNext()) {
            result[i] = ((SetRec)iterator.next()).set;
            ++i;
        }
        return result;
    }

    private class SetRec {
        public IActionSet set;
        public SubActionBars bars;

        public SetRec(IActionSet set, SubActionBars bars) {
            this.set = set;
            this.bars = bars;
        }
    }
}

