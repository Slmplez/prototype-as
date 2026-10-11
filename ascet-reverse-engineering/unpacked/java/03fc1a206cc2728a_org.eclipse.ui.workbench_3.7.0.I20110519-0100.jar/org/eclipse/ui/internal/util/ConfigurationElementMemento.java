/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 */
package org.eclipse.ui.internal.util;

import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.ui.IMemento;

public final class ConfigurationElementMemento
implements IMemento {
    private IConfigurationElement configurationElement;

    public ConfigurationElementMemento(IConfigurationElement configurationElement) {
        if (configurationElement == null) {
            throw new NullPointerException();
        }
        this.configurationElement = configurationElement;
    }

    public IMemento createChild(String type) {
        return null;
    }

    public IMemento createChild(String type, String id) {
        return null;
    }

    public IMemento getChild(String type) {
        IConfigurationElement[] configurationElements = this.configurationElement.getChildren(type);
        if (configurationElements != null && configurationElements.length >= 1) {
            return new ConfigurationElementMemento(configurationElements[0]);
        }
        return null;
    }

    public IMemento[] getChildren(String type) {
        IConfigurationElement[] configurationElements = this.configurationElement.getChildren(type);
        if (configurationElements != null && configurationElements.length >= 1) {
            IMemento[] mementos = new ConfigurationElementMemento[configurationElements.length];
            int i = 0;
            while (i < configurationElements.length) {
                mementos[i] = new ConfigurationElementMemento(configurationElements[i]);
                ++i;
            }
            return mementos;
        }
        return new IMemento[0];
    }

    public Float getFloat(String key) {
        String string = this.configurationElement.getAttribute(key);
        if (string != null) {
            try {
                return new Float(string);
            }
            catch (NumberFormatException numberFormatException) {}
        }
        return null;
    }

    public String getType() {
        return this.configurationElement.getName();
    }

    public String getID() {
        return this.configurationElement.getAttribute("IMemento.internal.id");
    }

    public Integer getInteger(String key) {
        String string = this.configurationElement.getAttribute(key);
        if (string != null) {
            try {
                return new Integer(string);
            }
            catch (NumberFormatException numberFormatException) {}
        }
        return null;
    }

    public String getString(String key) {
        return this.configurationElement.getAttribute(key);
    }

    public Boolean getBoolean(String key) {
        String string = this.configurationElement.getAttribute(key);
        if (string == null) {
            return null;
        }
        return Boolean.valueOf(string);
    }

    public String getTextData() {
        return this.configurationElement.getValue();
    }

    public String[] getAttributeKeys() {
        return this.configurationElement.getAttributeNames();
    }

    public void putFloat(String key, float value) {
    }

    public void putInteger(String key, int value) {
    }

    public void putMemento(IMemento memento) {
    }

    public void putString(String key, String value) {
    }

    public void putBoolean(String key, boolean value) {
    }

    public void putTextData(String data) {
    }

    public String getContributorName() {
        return this.configurationElement.getContributor().getName();
    }

    public String getExtensionID() {
        return this.configurationElement.getDeclaringExtension().getUniqueIdentifier();
    }
}

