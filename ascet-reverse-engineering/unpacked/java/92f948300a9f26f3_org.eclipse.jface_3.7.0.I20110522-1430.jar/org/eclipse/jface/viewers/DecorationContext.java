/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.viewers;

import java.util.HashMap;
import java.util.Map;
import org.eclipse.jface.viewers.IDecorationContext;

public class DecorationContext
implements IDecorationContext {
    public static final IDecorationContext DEFAULT_CONTEXT = new DecorationContext();
    private Map properties = new HashMap();

    public Object getProperty(String property) {
        return this.properties.get(property);
    }

    public String[] getProperties() {
        return this.properties.keySet().toArray(new String[this.properties.size()]);
    }

    public void putProperty(String property, Object value) {
        if (value == null) {
            this.properties.remove(property);
        } else {
            this.properties.put(property, value);
        }
    }
}

