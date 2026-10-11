/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.common.EventManager
 *  org.eclipse.jface.viewers.CellEditor
 *  org.eclipse.jface.viewers.ICellEditorListener
 *  org.eclipse.jface.viewers.ILabelProvider
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.widgets.Composite
 */
package org.eclipse.ui.views.properties;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.eclipse.core.commands.common.EventManager;
import org.eclipse.jface.viewers.CellEditor;
import org.eclipse.jface.viewers.ICellEditorListener;
import org.eclipse.jface.viewers.ILabelProvider;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.ui.internal.views.ViewsPlugin;
import org.eclipse.ui.views.properties.IPropertyDescriptor;
import org.eclipse.ui.views.properties.IPropertySheetEntry;
import org.eclipse.ui.views.properties.IPropertySheetEntryListener;
import org.eclipse.ui.views.properties.IPropertySource;
import org.eclipse.ui.views.properties.IPropertySource2;
import org.eclipse.ui.views.properties.IPropertySourceProvider;

public class PropertySheetEntry
extends EventManager
implements IPropertySheetEntry {
    private Object[] values = new Object[0];
    private Map sources = new HashMap(0);
    private Object editValue;
    private PropertySheetEntry parent;
    private IPropertySourceProvider propertySourceProvider;
    private IPropertyDescriptor descriptor;
    private CellEditor editor;
    private String errorText;
    private PropertySheetEntry[] childEntries = null;
    private ICellEditorListener cellEditorListener = new ICellEditorListener(){

        public void editorValueChanged(boolean oldValidState, boolean newValidState) {
            if (!newValidState) {
                PropertySheetEntry.this.setErrorText(PropertySheetEntry.this.editor.getErrorMessage());
            } else {
                PropertySheetEntry.this.setErrorText(null);
            }
        }

        public void cancelEditor() {
            PropertySheetEntry.this.setErrorText(null);
        }

        public void applyEditorValue() {
            PropertySheetEntry.this.applyEditorValue();
        }
    };
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    public void addPropertySheetEntryListener(IPropertySheetEntryListener listener) {
        this.addListenerObject(listener);
    }

    public void applyEditorValue() {
        if (this.editor == null) {
            return;
        }
        if (!this.editor.isValueValid()) {
            this.setErrorText(this.editor.getErrorMessage());
            return;
        }
        this.setErrorText(null);
        Object newValue = this.editor.getValue();
        boolean changed = false;
        if (this.values.length > 1) {
            changed = true;
        } else if (this.editValue == null) {
            if (newValue != null) {
                changed = true;
            }
        } else if (!this.editValue.equals(newValue)) {
            changed = true;
        }
        if (changed) {
            this.setValue(newValue);
        }
    }

    private List computeMergedPropertyDescriptors() {
        if (this.values.length == 0) {
            return new ArrayList(0);
        }
        IPropertySource firstSource = this.getPropertySource(this.values[0]);
        if (firstSource == null) {
            return new ArrayList(0);
        }
        if (this.values.length == 1) {
            return Arrays.asList(firstSource.getPropertyDescriptors());
        }
        Map[] propertyDescriptorMaps = new Map[this.values.length];
        int i = 0;
        while (i < this.values.length) {
            Object object = this.values[i];
            IPropertySource source = this.getPropertySource(object);
            if (source == null) {
                return new ArrayList(0);
            }
            propertyDescriptorMaps[i] = this.computePropertyDescriptorsFor(source);
            ++i;
        }
        Map intersection = propertyDescriptorMaps[0];
        int i2 = 1;
        while (i2 < propertyDescriptorMaps.length) {
            Object[] ids = intersection.keySet().toArray();
            int j = 0;
            while (j < ids.length) {
                Object object = propertyDescriptorMaps[i2].get(ids[j]);
                if (object == null || !((IPropertyDescriptor)intersection.get(ids[j])).isCompatibleWith((IPropertyDescriptor)object)) {
                    intersection.remove(ids[j]);
                }
                ++j;
            }
            ++i2;
        }
        ArrayList<IPropertyDescriptor> result = new ArrayList<IPropertyDescriptor>(intersection.size());
        IPropertyDescriptor[] firstDescs = firstSource.getPropertyDescriptors();
        int i3 = 0;
        while (i3 < firstDescs.length) {
            IPropertyDescriptor desc = firstDescs[i3];
            if (intersection.containsKey(desc.getId())) {
                result.add(desc);
            }
            ++i3;
        }
        return result;
    }

    private Map computePropertyDescriptorsFor(IPropertySource source) {
        IPropertyDescriptor[] descriptors = source.getPropertyDescriptors();
        HashMap<Object, IPropertyDescriptor> result = new HashMap<Object, IPropertyDescriptor>(descriptors.length * 2 + 1);
        int i = 0;
        while (i < descriptors.length) {
            result.put(descriptors[i].getId(), descriptors[i]);
            ++i;
        }
        return result;
    }

    private void createChildEntries() {
        List descriptors = this.computeMergedPropertyDescriptors();
        PropertySheetEntry[] newEntries = new PropertySheetEntry[descriptors.size()];
        int i = 0;
        while (i < descriptors.size()) {
            IPropertyDescriptor d = (IPropertyDescriptor)descriptors.get(i);
            PropertySheetEntry entry = this.createChildEntry();
            entry.setDescriptor(d);
            entry.setParent(this);
            entry.setPropertySourceProvider(this.propertySourceProvider);
            entry.refreshValues();
            newEntries[i] = entry;
            ++i;
        }
        this.childEntries = newEntries;
    }

    protected PropertySheetEntry createChildEntry() {
        return new PropertySheetEntry();
    }

    public void dispose() {
        if (this.editor != null) {
            this.editor.dispose();
            this.editor = null;
        }
        PropertySheetEntry[] entriesToDispose = this.childEntries;
        this.childEntries = null;
        if (entriesToDispose != null) {
            int i = 0;
            while (i < entriesToDispose.length) {
                if (entriesToDispose[i] != null) {
                    entriesToDispose[i].dispose();
                }
                ++i;
            }
        }
    }

    private void fireChildEntriesChanged() {
        Object[] array = this.getListeners();
        int i = 0;
        while (i < array.length) {
            IPropertySheetEntryListener listener = (IPropertySheetEntryListener)array[i];
            listener.childEntriesChanged(this);
            ++i;
        }
    }

    private void fireErrorMessageChanged() {
        Object[] array = this.getListeners();
        int i = 0;
        while (i < array.length) {
            IPropertySheetEntryListener listener = (IPropertySheetEntryListener)array[i];
            listener.errorMessageChanged(this);
            ++i;
        }
    }

    private void fireValueChanged() {
        Object[] array = this.getListeners();
        int i = 0;
        while (i < array.length) {
            IPropertySheetEntryListener listener = (IPropertySheetEntryListener)array[i];
            listener.valueChanged(this);
            ++i;
        }
    }

    public String getCategory() {
        return this.descriptor.getCategory();
    }

    public IPropertySheetEntry[] getChildEntries() {
        if (this.childEntries == null) {
            this.createChildEntries();
        }
        return this.childEntries;
    }

    public String getDescription() {
        return this.descriptor.getDescription();
    }

    protected IPropertyDescriptor getDescriptor() {
        return this.descriptor;
    }

    public String getDisplayName() {
        return this.descriptor.getDisplayName();
    }

    public CellEditor getEditor(Composite parent) {
        if (this.editor == null) {
            this.editor = this.descriptor.createPropertyEditor(parent);
            if (this.editor != null) {
                this.editor.addListener(this.cellEditorListener);
            }
        }
        if (this.editor != null) {
            this.editor.setValue(this.editValue);
            this.setErrorText(this.editor.getErrorMessage());
        }
        return this.editor;
    }

    protected Object getEditValue(int index) {
        Object value = this.values[index];
        IPropertySource source = this.getPropertySource(value);
        if (source != null) {
            value = source.getEditableValue();
        }
        return value;
    }

    public String getErrorText() {
        return this.errorText;
    }

    public String[] getFilters() {
        return this.descriptor.getFilterFlags();
    }

    public Object getHelpContextIds() {
        return this.descriptor.getHelpContextIds();
    }

    public Image getImage() {
        ILabelProvider provider = this.descriptor.getLabelProvider();
        if (provider == null) {
            return null;
        }
        return provider.getImage(this.editValue);
    }

    protected PropertySheetEntry getParent() {
        return this.parent;
    }

    protected IPropertySource getPropertySource(Object object) {
        if (this.sources.containsKey(object)) {
            return (IPropertySource)this.sources.get(object);
        }
        IPropertySource result = null;
        IPropertySourceProvider provider = this.propertySourceProvider;
        if (provider == null && object != null) {
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.ui.views.properties.IPropertySourceProvider");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            provider = (IPropertySourceProvider)ViewsPlugin.getAdapter(object, clazz, false);
        }
        if (provider != null) {
            result = provider.getPropertySource(object);
        } else {
            Class<?> clazz = class$1;
            if (clazz == null) {
                try {
                    clazz = class$1 = Class.forName("org.eclipse.ui.views.properties.IPropertySource");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            result = (IPropertySource)ViewsPlugin.getAdapter(object, clazz, false);
        }
        this.sources.put(object, result);
        return result;
    }

    public String getValueAsString() {
        if (this.editValue == null) {
            return "";
        }
        ILabelProvider provider = this.descriptor.getLabelProvider();
        if (provider == null) {
            return this.editValue.toString();
        }
        String text = provider.getText(this.editValue);
        if (text == null) {
            return "";
        }
        return text;
    }

    public Object[] getValues() {
        return this.values;
    }

    public boolean hasChildEntries() {
        if (this.childEntries != null && this.childEntries.length > 0) {
            return true;
        }
        return this.computeMergedPropertyDescriptors().size() > 0;
    }

    private void refreshChildEntries() {
        if (this.childEntries == null) {
            return;
        }
        List descriptors = this.computeMergedPropertyDescriptors();
        HashMap<Object, PropertySheetEntry> entryCache = new HashMap<Object, PropertySheetEntry>(this.childEntries.length * 2 + 1);
        int i = 0;
        while (i < this.childEntries.length) {
            PropertySheetEntry childEntry = this.childEntries[i];
            if (childEntry != null) {
                entryCache.put(childEntry.getDescriptor().getId(), childEntry);
            }
            ++i;
        }
        ArrayList<PropertySheetEntry> entriesToDispose = new ArrayList<PropertySheetEntry>(Arrays.asList(this.childEntries));
        this.childEntries = null;
        PropertySheetEntry[] newEntries = new PropertySheetEntry[descriptors.size()];
        boolean entriesChanged = descriptors.size() != entryCache.size();
        int i2 = 0;
        while (i2 < descriptors.size()) {
            IPropertyDescriptor d = (IPropertyDescriptor)descriptors.get(i2);
            PropertySheetEntry entry = (PropertySheetEntry)entryCache.get(d.getId());
            if (entry != null) {
                entry.setDescriptor(d);
                entriesToDispose.remove(entry);
            } else {
                entry = this.createChildEntry();
                entry.setDescriptor(d);
                entry.setParent(this);
                entry.setPropertySourceProvider(this.propertySourceProvider);
                entriesChanged = true;
            }
            entry.refreshValues();
            newEntries[i2] = entry;
            ++i2;
        }
        this.childEntries = newEntries;
        if (entriesChanged) {
            this.fireChildEntriesChanged();
        }
        i2 = 0;
        while (i2 < entriesToDispose.size()) {
            ((IPropertySheetEntry)entriesToDispose.get(i2)).dispose();
            ++i2;
        }
    }

    protected void refreshFromRoot() {
        if (this.parent == null) {
            this.refreshChildEntries();
        } else {
            this.parent.refreshFromRoot();
        }
    }

    private void refreshValues() {
        Object[] currentSources = this.parent.getValues();
        Object[] newValues = new Object[currentSources.length];
        int i = 0;
        while (i < currentSources.length) {
            IPropertySource source = this.parent.getPropertySource(currentSources[i]);
            newValues[i] = source.getPropertyValue(this.descriptor.getId());
            ++i;
        }
        this.setValues(newValues);
    }

    public void removePropertySheetEntryListener(IPropertySheetEntryListener listener) {
        this.removeListenerObject(listener);
    }

    public void resetPropertyValue() {
        if (this.parent == null) {
            return;
        }
        boolean change = false;
        Object[] objects = this.parent.getValues();
        int i = 0;
        while (i < objects.length) {
            IPropertySource2 extendedSource;
            IPropertySource source = this.getPropertySource(objects[i]);
            if (source.isPropertySet(this.descriptor.getId()) && (!(source instanceof IPropertySource2) || (extendedSource = (IPropertySource2)source).isPropertyResettable(this.descriptor.getId()))) {
                source.resetPropertyValue(this.descriptor.getId());
                change = true;
            }
            ++i;
        }
        if (change) {
            this.refreshFromRoot();
        }
    }

    private void setDescriptor(IPropertyDescriptor newDescriptor) {
        if (this.descriptor != newDescriptor && this.editor != null) {
            this.editor.dispose();
            this.editor = null;
        }
        this.descriptor = newDescriptor;
    }

    private void setErrorText(String newErrorText) {
        this.errorText = newErrorText;
        this.fireErrorMessageChanged();
    }

    private void setParent(PropertySheetEntry propertySheetEntry) {
        this.parent = propertySheetEntry;
    }

    public void setPropertySourceProvider(IPropertySourceProvider provider) {
        this.propertySourceProvider = provider;
    }

    private void setValue(Object newValue) {
        int i = 0;
        while (i < this.values.length) {
            this.values[i] = newValue;
            ++i;
        }
        this.parent.valueChanged(this);
        this.refreshFromRoot();
    }

    public void setValues(Object[] objects) {
        this.values = objects;
        this.sources = new HashMap(this.values.length * 2 + 1);
        if (this.values.length == 0) {
            this.editValue = null;
        } else {
            Object newValue = this.values[0];
            IPropertySource source = this.getPropertySource(newValue);
            if (source != null) {
                newValue = source.getEditableValue();
            }
            this.editValue = newValue;
        }
        this.refreshChildEntries();
        this.fireValueChanged();
    }

    protected void valueChanged(PropertySheetEntry child) {
        int i = 0;
        while (i < this.values.length) {
            IPropertySource source = this.getPropertySource(this.values[i]);
            source.setPropertyValue(child.getDescriptor().getId(), child.getEditValue(i));
            ++i;
        }
        if (this.parent != null) {
            this.parent.valueChanged(this);
        }
    }
}

