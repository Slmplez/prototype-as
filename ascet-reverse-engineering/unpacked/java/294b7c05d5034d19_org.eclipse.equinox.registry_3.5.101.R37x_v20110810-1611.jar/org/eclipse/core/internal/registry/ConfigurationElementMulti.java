/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.registry;

import org.eclipse.core.internal.registry.ConfigurationElement;
import org.eclipse.core.internal.registry.DirectMap;
import org.eclipse.core.internal.registry.ExtensionRegistry;

public class ConfigurationElementMulti
extends ConfigurationElement {
    private DirectMap translatedProperties = new DirectMap(10, 0.5f);

    protected ConfigurationElementMulti(ExtensionRegistry registry, boolean persist) {
        super(registry, persist);
    }

    protected ConfigurationElementMulti(int self, String contributorId, String name, String[] propertiesAndValue, int[] children, int extraDataOffset, int parent, byte parentType, ExtensionRegistry registry, boolean persist) {
        super(self, contributorId, name, propertiesAndValue, children, extraDataOffset, parent, parentType, registry, persist);
    }

    String getAttribute(String attrName, String locale) {
        if (this.propertiesAndValue.length <= 1) {
            return null;
        }
        int size = this.propertiesAndValue.length - this.propertiesAndValue.length % 2;
        int index = -1;
        int i = 0;
        int j = 0;
        while (i < size) {
            if (this.propertiesAndValue[i].equals(attrName)) {
                index = j;
                break;
            }
            i += 2;
            ++j;
        }
        if (index == -1) {
            return null;
        }
        String result = this.getTranslatedAtIndex(index, locale);
        if (result != null) {
            return result;
        }
        return this.propertiesAndValue[index * 2 + 1];
    }

    String getValue(String locale) {
        if (this.propertiesAndValue.length == 0 || this.propertiesAndValue.length % 2 == 0) {
            return null;
        }
        int index = this.propertiesAndValue.length - 1;
        return this.getTranslatedAtIndex(index, locale);
    }

    private synchronized String getTranslatedAtIndex(int index, String locale) {
        String[] translated = null;
        if (!this.translatedProperties.containsKey(locale)) {
            String[] propertiesNonTranslated = this.getNonTranslated();
            translated = this.registry.translate(propertiesNonTranslated, this.getContributor(), locale);
            this.translatedProperties.put(locale, translated);
            this.registry.getObjectManager().markDirty();
        } else {
            translated = this.translatedProperties.get(locale);
        }
        if (translated != null) {
            return translated[index];
        }
        return null;
    }

    private String[] getNonTranslated() {
        boolean hasValue;
        int size = this.propertiesAndValue.length / 2;
        boolean bl = hasValue = this.propertiesAndValue.length % 2 == 1;
        if (hasValue) {
            ++size;
        }
        String[] propertiesNonTranslated = new String[size];
        int pos = 0;
        int i = 1;
        while (i < this.propertiesAndValue.length) {
            propertiesNonTranslated[pos] = this.propertiesAndValue[i];
            ++pos;
            i += 2;
        }
        if (hasValue) {
            propertiesNonTranslated[pos] = this.propertiesAndValue[this.propertiesAndValue.length - 1];
        }
        return propertiesNonTranslated;
    }

    synchronized int getNumCachedLocales() {
        return this.translatedProperties.getSzie();
    }

    synchronized String[] getCachedLocales() {
        return this.translatedProperties.getKeys();
    }

    synchronized String[][] getCachedTranslations() {
        return this.translatedProperties.getValues();
    }

    synchronized void setTranslatedProperties(DirectMap translated) {
        this.translatedProperties = translated;
    }

    public String getAttribute(String attrName) {
        return this.getAttribute(attrName, this.getLocale());
    }

    public String getValue() {
        return this.getValue(this.getLocale());
    }
}

