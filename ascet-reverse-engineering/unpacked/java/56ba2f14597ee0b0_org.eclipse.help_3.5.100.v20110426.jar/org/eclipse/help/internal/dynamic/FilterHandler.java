/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.expressions.IEvaluationContext
 */
package org.eclipse.help.internal.dynamic;

import org.eclipse.core.expressions.IEvaluationContext;
import org.eclipse.help.UAContentFilter;
import org.eclipse.help.internal.UAElement;
import org.eclipse.help.internal.dynamic.ProcessorHandler;

public class FilterHandler
extends ProcessorHandler {
    private IEvaluationContext context;

    public FilterHandler(IEvaluationContext context) {
        this.context = context;
    }

    public short handle(UAElement element, String id) {
        if (UAContentFilter.isFiltered(element, this.context)) {
            UAElement parent = element.getParentElement();
            if (parent != null) {
                parent.removeChild(element);
            }
            return 2;
        }
        return 0;
    }
}

