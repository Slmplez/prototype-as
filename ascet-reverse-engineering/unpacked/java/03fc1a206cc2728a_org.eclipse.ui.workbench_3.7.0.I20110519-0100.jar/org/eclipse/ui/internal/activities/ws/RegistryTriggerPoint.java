/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 */
package org.eclipse.ui.internal.activities.ws;

import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.ui.internal.activities.Persistence;
import org.eclipse.ui.internal.activities.ws.AbstractTriggerPoint;

public class RegistryTriggerPoint
extends AbstractTriggerPoint {
    private String id;
    private IConfigurationElement element;
    private Map hints;

    public RegistryTriggerPoint(String id, IConfigurationElement element) {
        this.id = id;
        this.element = element;
    }

    public String getId() {
        return this.id;
    }

    public String getStringHint(String key) {
        return (String)this.getHints().get(key);
    }

    public boolean getBooleanHint(String key) {
        return Boolean.valueOf(this.getStringHint(key));
    }

    private Map getHints() {
        if (this.hints == null) {
            this.hints = new HashMap();
            IConfigurationElement[] hintElements = this.element.getChildren("hint");
            int i = 0;
            while (i < hintElements.length) {
                String id = hintElements[i].getAttribute("id");
                String value = hintElements[i].getAttribute("value");
                if (id == null || value == null) {
                    Persistence.log(this.element, "Invalid trigger point hint", "hint must contain ID and value");
                } else {
                    this.hints.put(id, value);
                }
                ++i;
            }
        }
        return this.hints;
    }
}

