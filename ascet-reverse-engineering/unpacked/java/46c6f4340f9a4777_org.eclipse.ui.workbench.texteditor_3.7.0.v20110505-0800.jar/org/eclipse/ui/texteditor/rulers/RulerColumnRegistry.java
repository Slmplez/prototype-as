/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtensionRegistry
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.InvalidRegistryObjectException
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.ui.texteditor.rulers;

import com.ibm.icu.text.MessageFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.InvalidRegistryObjectException;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Status;
import org.eclipse.ui.internal.texteditor.TextEditorPlugin;
import org.eclipse.ui.internal.texteditor.rulers.DAG;
import org.eclipse.ui.internal.texteditor.rulers.ExtensionPointHelper;
import org.eclipse.ui.internal.texteditor.rulers.RulerColumnMessages;
import org.eclipse.ui.internal.texteditor.rulers.RulerColumnPlacementConstraint;
import org.eclipse.ui.texteditor.ConfigurationElementSorter;
import org.eclipse.ui.texteditor.rulers.RulerColumnDescriptor;

public final class RulerColumnRegistry {
    private static final String EXTENSION_POINT = "rulerColumns";
    private static final String QUALIFIED_EXTENSION_POINT = "org.eclipse.ui.workbench.texteditor.rulerColumns";
    private static RulerColumnRegistry fgSingleton = null;
    private List fDescriptors = null;
    private Map fDescriptorMap = null;
    private boolean fLoaded = false;

    public static synchronized RulerColumnRegistry getDefault() {
        if (fgSingleton == null) {
            fgSingleton = new RulerColumnRegistry();
        }
        return fgSingleton;
    }

    RulerColumnRegistry() {
    }

    public List getColumnDescriptors() {
        this.ensureExtensionPointRead();
        return this.fDescriptors;
    }

    public RulerColumnDescriptor getColumnDescriptor(String id) {
        Assert.isLegal((id != null ? 1 : 0) != 0);
        this.ensureExtensionPointRead();
        return (RulerColumnDescriptor)this.fDescriptorMap.get(id);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private void ensureExtensionPointRead() {
        boolean reload;
        RulerColumnRegistry rulerColumnRegistry = this;
        synchronized (rulerColumnRegistry) {
            reload = !this.fLoaded;
            this.fLoaded = true;
        }
        if (reload) {
            this.reload();
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void reload() {
        IExtensionRegistry registry = Platform.getExtensionRegistry();
        ArrayList<IConfigurationElement> elements = new ArrayList<IConfigurationElement>(Arrays.asList(registry.getConfigurationElementsFor("org.eclipse.ui.workbench.texteditor", EXTENSION_POINT)));
        ArrayList<RulerColumnDescriptor> descriptors = new ArrayList<RulerColumnDescriptor>();
        HashMap<String, RulerColumnDescriptor> descriptorMap = new HashMap<String, RulerColumnDescriptor>();
        Iterator iter = elements.iterator();
        while (iter.hasNext()) {
            IConfigurationElement element = (IConfigurationElement)iter.next();
            try {
                RulerColumnDescriptor desc = new RulerColumnDescriptor(element, this);
                String id = desc.getId();
                if (descriptorMap.containsKey(id)) {
                    this.noteDuplicateId(desc);
                    continue;
                }
                descriptors.add(desc);
                descriptorMap.put(id, desc);
            }
            catch (InvalidRegistryObjectException x) {
                this.noteInvalidExtension(element, x);
            }
            catch (CoreException x) {
                this.warnUser(x.getStatus());
            }
        }
        this.sort(descriptors);
        RulerColumnRegistry rulerColumnRegistry = this;
        synchronized (rulerColumnRegistry) {
            this.fDescriptors = Collections.unmodifiableList(descriptors);
            this.fDescriptorMap = Collections.unmodifiableMap(descriptorMap);
        }
    }

    private void sort(List descriptors) {
        Iterator<Object> it;
        ConfigurationElementSorter sorter = new ConfigurationElementSorter(){

            public IConfigurationElement getConfigurationElement(Object object) {
                return ((RulerColumnDescriptor)object).getConfigurationElement();
            }
        };
        Object[] array = descriptors.toArray();
        sorter.sort(array);
        HashMap<String, RulerColumnDescriptor> descriptorsById = new HashMap<String, RulerColumnDescriptor>();
        int i = 0;
        while (i < array.length) {
            RulerColumnDescriptor desc = (RulerColumnDescriptor)array[i];
            descriptorsById.put(desc.getId(), desc);
            ++i;
        }
        DAG dag = new DAG();
        int i2 = 0;
        while (i2 < array.length) {
            RulerColumnDescriptor desc = (RulerColumnDescriptor)array[i2];
            dag.addVertex(desc);
            Set before = desc.getPlacement().getConstraints();
            it = before.iterator();
            while (it.hasNext()) {
                RulerColumnPlacementConstraint constraint = (RulerColumnPlacementConstraint)it.next();
                String id = constraint.getId();
                RulerColumnDescriptor target = (RulerColumnDescriptor)descriptorsById.get(id);
                if (target == null) {
                    this.noteUnknownTarget(desc, id);
                    continue;
                }
                boolean success = constraint.isBefore() ? dag.addEdge(desc, target) : dag.addEdge(target, desc);
                if (success) continue;
                this.noteCycle(desc, target);
            }
            ++i2;
        }
        Comparator gravityComp = new Comparator(){

            public int compare(Object o1, Object o2) {
                float diff = ((RulerColumnDescriptor)o1).getPlacement().getGravity() - ((RulerColumnDescriptor)o2).getPlacement().getGravity();
                if (diff == 0.0f) {
                    return 0;
                }
                if (diff < 0.0f) {
                    return -1;
                }
                return 1;
            }
        };
        Set toProcess = dag.getSources();
        int index = 0;
        while (!toProcess.isEmpty()) {
            Object next = Collections.min(toProcess, gravityComp);
            array[index] = next;
            ++index;
            dag.removeVertex(next);
            toProcess = dag.getSources();
        }
        Assert.isTrue((index == array.length ? 1 : 0) != 0);
        it = descriptors.listIterator();
        int i3 = 0;
        while (i3 < index) {
            it.next();
            it.set(array[i3]);
            ++i3;
        }
    }

    private void noteInvalidExtension(IConfigurationElement element, InvalidRegistryObjectException x) {
        String message = MessageFormat.format((String)RulerColumnMessages.RulerColumnRegistry_invalid_msg, (Object[])new Object[]{ExtensionPointHelper.findId(element)});
        this.warnUser(message, (Exception)((Object)x));
    }

    private void noteUnknownTarget(RulerColumnDescriptor desc, String referencedId) {
        String message = MessageFormat.format((String)RulerColumnMessages.RulerColumnRegistry_unresolved_placement_msg, (Object[])new Object[]{QUALIFIED_EXTENSION_POINT, referencedId, desc.getName(), desc.getContributor()});
        this.warnUser(message, null);
    }

    private void noteCycle(RulerColumnDescriptor desc, RulerColumnDescriptor target) {
        String message = MessageFormat.format((String)RulerColumnMessages.RulerColumnRegistry_cyclic_placement_msg, (Object[])new Object[]{QUALIFIED_EXTENSION_POINT, target.getName(), desc.getName(), desc.getContributor()});
        this.warnUser(message, null);
    }

    private void noteDuplicateId(RulerColumnDescriptor desc) {
        String message = MessageFormat.format((String)RulerColumnMessages.RulerColumnRegistry_duplicate_id_msg, (Object[])new Object[]{QUALIFIED_EXTENSION_POINT, desc.getId(), desc.getContributor()});
        this.warnUser(message, null);
    }

    private void warnUser(String message, Exception exception) {
        Status status = new Status(2, "org.eclipse.ui.workbench.texteditor", 0, message, (Throwable)exception);
        this.warnUser((IStatus)status);
    }

    private void warnUser(IStatus status) {
        TextEditorPlugin.getDefault().getLog().log(status);
    }
}

