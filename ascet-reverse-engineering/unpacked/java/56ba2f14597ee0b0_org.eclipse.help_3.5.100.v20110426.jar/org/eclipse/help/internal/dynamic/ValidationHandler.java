/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.help.internal.dynamic;

import java.util.Map;
import org.eclipse.help.ITocContribution;
import org.eclipse.help.internal.HelpPlugin;
import org.eclipse.help.internal.UAElement;
import org.eclipse.help.internal.dynamic.ProcessorHandler;

public class ValidationHandler
extends ProcessorHandler {
    private Map requiredAttributes;
    private Map deprecatedElements;

    public ValidationHandler(Map requiredAttributes) {
        this(requiredAttributes, null);
    }

    public ValidationHandler(Map requiredAttributes, Map deprecatedElements) {
        this.requiredAttributes = requiredAttributes;
        this.deprecatedElements = deprecatedElements;
    }

    public short handle(UAElement element, String id) {
        String[] attributes;
        String suggestion;
        if (this.deprecatedElements != null && (suggestion = (String)this.deprecatedElements.get(element.getElementName())) != null) {
            String msg = "The \"" + element.getElementName() + "\" element is deprecated in \"" + id + "\"; use \"" + suggestion + "\" instead.";
            HelpPlugin.logWarning(msg);
        }
        if ((attributes = (String[])this.requiredAttributes.get(element.getElementName())) != null) {
            int i = 0;
            while (i < attributes.length) {
                if (element.getAttribute(attributes[i]) == null) {
                    UAElement parent;
                    String msg = "Required attribute \"" + attributes[i] + "\" missing from \"" + element.getElementName() + "\" element";
                    if (id != null) {
                        msg = String.valueOf(msg) + " in \"" + id + '\"';
                    }
                    if ((parent = element.getParentElement()) != null && !(parent instanceof ITocContribution)) {
                        msg = String.valueOf(msg) + " (skipping element)";
                        parent.removeChild(element);
                        HelpPlugin.logError(msg);
                        return 2;
                    }
                    throw new IllegalArgumentException(msg);
                }
                ++i;
            }
        }
        return 0;
    }
}

