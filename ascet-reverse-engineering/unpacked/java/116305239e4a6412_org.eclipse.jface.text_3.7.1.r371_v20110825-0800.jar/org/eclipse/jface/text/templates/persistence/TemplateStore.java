/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.preference.IPersistentPreferenceStore
 *  org.eclipse.jface.preference.IPreferenceStore
 *  org.eclipse.jface.text.templates.Template
 *  org.eclipse.jface.text.templates.TemplateException
 *  org.eclipse.jface.util.IPropertyChangeListener
 *  org.eclipse.jface.util.PropertyChangeEvent
 */
package org.eclipse.jface.text.templates.persistence;

import java.io.IOException;
import java.io.StringReader;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.preference.IPersistentPreferenceStore;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.jface.text.templates.ContextTypeRegistry;
import org.eclipse.jface.text.templates.Template;
import org.eclipse.jface.text.templates.TemplateException;
import org.eclipse.jface.text.templates.persistence.TemplatePersistenceData;
import org.eclipse.jface.text.templates.persistence.TemplateReaderWriter;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;

public class TemplateStore {
    private final List fTemplates = new ArrayList();
    private IPreferenceStore fPreferenceStore;
    private String fKey;
    private ContextTypeRegistry fRegistry;
    private boolean fIgnorePreferenceStoreChanges = false;
    private IPropertyChangeListener fPropertyListener;

    public TemplateStore(IPreferenceStore store, String key) {
        Assert.isNotNull((Object)store);
        Assert.isNotNull((Object)key);
        this.fPreferenceStore = store;
        this.fKey = key;
    }

    public TemplateStore(ContextTypeRegistry registry, IPreferenceStore store, String key) {
        this(store, key);
        this.fRegistry = registry;
    }

    public void load() throws IOException {
        this.fTemplates.clear();
        this.loadContributedTemplates();
        this.loadCustomTemplates();
    }

    public final void startListeningForPreferenceChanges() {
        if (this.fPropertyListener == null) {
            this.fPropertyListener = new IPropertyChangeListener(){

                public void propertyChange(PropertyChangeEvent event) {
                    if (!TemplateStore.this.fIgnorePreferenceStoreChanges && TemplateStore.this.fKey.equals(event.getProperty())) {
                        try {
                            TemplateStore.this.load();
                        }
                        catch (IOException x) {
                            TemplateStore.this.handleException(x);
                        }
                    }
                }
            };
            this.fPreferenceStore.addPropertyChangeListener(this.fPropertyListener);
        }
    }

    public final void stopListeningForPreferenceChanges() {
        if (this.fPropertyListener != null) {
            this.fPreferenceStore.removePropertyChangeListener(this.fPropertyListener);
            this.fPropertyListener = null;
        }
    }

    protected void handleException(IOException x) {
        x.printStackTrace();
    }

    protected void loadContributedTemplates() throws IOException {
    }

    protected void internalAdd(TemplatePersistenceData data) {
        if (!data.isCustom()) {
            String id = data.getId();
            Iterator it = this.fTemplates.iterator();
            while (it.hasNext()) {
                TemplatePersistenceData d2 = (TemplatePersistenceData)it.next();
                if (d2.getId() == null || !d2.getId().equals(id)) continue;
                return;
            }
            this.fTemplates.add(data);
        }
    }

    public void save() throws IOException {
        ArrayList<TemplatePersistenceData> custom = new ArrayList<TemplatePersistenceData>();
        Iterator it = this.fTemplates.iterator();
        while (it.hasNext()) {
            TemplatePersistenceData data = (TemplatePersistenceData)it.next();
            if (!data.isCustom() || data.isUserAdded() && data.isDeleted()) continue;
            custom.add(data);
        }
        StringWriter output = new StringWriter();
        TemplateReaderWriter writer = new TemplateReaderWriter();
        writer.save(custom.toArray(new TemplatePersistenceData[custom.size()]), output);
        this.fIgnorePreferenceStoreChanges = true;
        try {
            this.fPreferenceStore.setValue(this.fKey, output.toString());
            if (this.fPreferenceStore instanceof IPersistentPreferenceStore) {
                ((IPersistentPreferenceStore)this.fPreferenceStore).save();
            }
        }
        finally {
            this.fIgnorePreferenceStoreChanges = false;
        }
    }

    public void add(TemplatePersistenceData data) {
        if (!this.validateTemplate(data.getTemplate())) {
            return;
        }
        if (data.isUserAdded()) {
            this.fTemplates.add(data);
        } else {
            Iterator it = this.fTemplates.iterator();
            while (it.hasNext()) {
                TemplatePersistenceData d2 = (TemplatePersistenceData)it.next();
                if (d2.getId() == null || !d2.getId().equals(data.getId())) continue;
                d2.setTemplate(data.getTemplate());
                d2.setDeleted(data.isDeleted());
                d2.setEnabled(data.isEnabled());
                return;
            }
            if (data.getTemplate() != null) {
                TemplatePersistenceData newData = new TemplatePersistenceData(data.getTemplate(), data.isEnabled());
                this.fTemplates.add(newData);
            }
        }
    }

    public void delete(TemplatePersistenceData data) {
        if (data.isUserAdded()) {
            this.fTemplates.remove(data);
        } else {
            data.setDeleted(true);
        }
    }

    public void restoreDeleted() {
        Iterator it = this.fTemplates.iterator();
        while (it.hasNext()) {
            TemplatePersistenceData data = (TemplatePersistenceData)it.next();
            if (!data.isDeleted()) continue;
            data.setDeleted(false);
        }
    }

    public void restoreDefaults(boolean doSave) {
        String oldValue = null;
        if (!doSave) {
            oldValue = this.fPreferenceStore.getString(this.fKey);
        }
        try {
            this.fIgnorePreferenceStoreChanges = true;
            this.fPreferenceStore.setToDefault(this.fKey);
        }
        finally {
            this.fIgnorePreferenceStoreChanges = false;
        }
        try {
            this.load();
        }
        catch (IOException x) {
            x.printStackTrace();
        }
        if (oldValue != null) {
            try {
                this.fIgnorePreferenceStoreChanges = true;
                this.fPreferenceStore.putValue(this.fKey, oldValue);
            }
            finally {
                this.fIgnorePreferenceStoreChanges = false;
            }
        }
    }

    public void restoreDefaults() {
        this.restoreDefaults(true);
    }

    public Template[] getTemplates() {
        return this.getTemplates(null);
    }

    public Template[] getTemplates(String contextTypeId) {
        ArrayList<Template> templates = new ArrayList<Template>();
        Iterator it = this.fTemplates.iterator();
        while (it.hasNext()) {
            TemplatePersistenceData data = (TemplatePersistenceData)it.next();
            if (!data.isEnabled() || data.isDeleted() || contextTypeId != null && !contextTypeId.equals(data.getTemplate().getContextTypeId())) continue;
            templates.add(data.getTemplate());
        }
        return templates.toArray(new Template[templates.size()]);
    }

    public Template findTemplate(String name) {
        return this.findTemplate(name, null);
    }

    public Template findTemplate(String name, String contextTypeId) {
        Assert.isNotNull((Object)name);
        Iterator it = this.fTemplates.iterator();
        while (it.hasNext()) {
            TemplatePersistenceData data = (TemplatePersistenceData)it.next();
            Template template = data.getTemplate();
            if (!data.isEnabled() || data.isDeleted() || contextTypeId != null && !contextTypeId.equals(template.getContextTypeId()) || !name.equals(template.getName())) continue;
            return template;
        }
        return null;
    }

    public Template findTemplateById(String id) {
        TemplatePersistenceData data = this.getTemplateData(id);
        if (data != null && !data.isDeleted()) {
            return data.getTemplate();
        }
        return null;
    }

    public TemplatePersistenceData[] getTemplateData(boolean includeDeleted) {
        ArrayList<TemplatePersistenceData> datas = new ArrayList<TemplatePersistenceData>();
        Iterator it = this.fTemplates.iterator();
        while (it.hasNext()) {
            TemplatePersistenceData data = (TemplatePersistenceData)it.next();
            if (!includeDeleted && data.isDeleted()) continue;
            datas.add(data);
        }
        return datas.toArray(new TemplatePersistenceData[datas.size()]);
    }

    public TemplatePersistenceData getTemplateData(String id) {
        Assert.isNotNull((Object)id);
        Iterator it = this.fTemplates.iterator();
        while (it.hasNext()) {
            TemplatePersistenceData data = (TemplatePersistenceData)it.next();
            if (!id.equals(data.getId())) continue;
            return data;
        }
        return null;
    }

    private void loadCustomTemplates() throws IOException {
        String pref = this.fPreferenceStore.getString(this.fKey);
        if (pref != null && pref.trim().length() > 0) {
            StringReader input = new StringReader(pref);
            TemplateReaderWriter reader = new TemplateReaderWriter();
            TemplatePersistenceData[] datas = reader.read(input);
            int i = 0;
            while (i < datas.length) {
                TemplatePersistenceData data = datas[i];
                this.add(data);
                ++i;
            }
        }
    }

    private boolean validateTemplate(Template template) {
        String contextTypeId = template.getContextTypeId();
        if (this.contextExists(contextTypeId)) {
            if (this.fRegistry != null) {
                try {
                    this.fRegistry.getContextType(contextTypeId).validate(template.getPattern());
                }
                catch (TemplateException templateException) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    private boolean contextExists(String contextTypeId) {
        return contextTypeId != null && (this.fRegistry == null || this.fRegistry.getContextType(contextTypeId) != null);
    }

    protected final ContextTypeRegistry getRegistry() {
        return this.fRegistry;
    }
}

