/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.IParameterValues
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExecutableExtension
 */
package org.eclipse.ui.commands;

import java.util.Collections;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Map;
import java.util.StringTokenizer;
import org.eclipse.core.commands.IParameterValues;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExecutableExtension;

public final class ExtensionParameterValues
implements IParameterValues,
IExecutableExtension {
    public static final String DELIMITER = ",";
    private Map parameterValues = null;

    public Map getParameterValues() {
        return this.parameterValues;
    }

    public final void setInitializationData(IConfigurationElement config, String propertyName, Object data) {
        if (data == null) {
            this.parameterValues = Collections.EMPTY_MAP;
        } else if (data instanceof String) {
            this.parameterValues = new HashMap();
            StringTokenizer tokenizer = new StringTokenizer((String)data, DELIMITER);
            while (tokenizer.hasMoreTokens()) {
                String name = tokenizer.nextToken();
                if (!tokenizer.hasMoreTokens()) continue;
                String value = tokenizer.nextToken();
                this.parameterValues.put(name, value);
            }
            this.parameterValues = Collections.unmodifiableMap(this.parameterValues);
        } else if (data instanceof Hashtable) {
            this.parameterValues = Collections.unmodifiableMap((Hashtable)data);
        }
    }
}

