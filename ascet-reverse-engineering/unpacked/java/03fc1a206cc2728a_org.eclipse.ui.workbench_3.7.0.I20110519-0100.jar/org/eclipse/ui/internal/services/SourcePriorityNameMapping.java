/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.expressions.Expression
 *  org.eclipse.core.expressions.ExpressionInfo
 */
package org.eclipse.ui.internal.services;

import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.expressions.Expression;
import org.eclipse.core.expressions.ExpressionInfo;
import org.eclipse.ui.ISources;

public final class SourcePriorityNameMapping
implements ISources {
    public static final String LEGACY_LEGACY_NAME = "LEGACY";
    public static final int NO_SOURCE_PRIORITY = 0;
    private static final Map sourcePrioritiesByName = new HashMap();

    static {
        SourcePriorityNameMapping.addMapping("activeActionSets", 256);
        SourcePriorityNameMapping.addMapping("activeContexts", 64);
        SourcePriorityNameMapping.addMapping("selection", 0x40000000);
        SourcePriorityNameMapping.addMapping("activeEditor", 65536);
        SourcePriorityNameMapping.addMapping("activeEditorInput", 65536);
        SourcePriorityNameMapping.addMapping("activeEditorId", 262144);
        SourcePriorityNameMapping.addMapping("activeMenu", Integer.MIN_VALUE);
        SourcePriorityNameMapping.addMapping("activeMenuSelection", Integer.MIN_VALUE);
        SourcePriorityNameMapping.addMapping("activeMenuEditorInput", Integer.MIN_VALUE);
        SourcePriorityNameMapping.addMapping("activeFocusControlId", Integer.MIN_VALUE);
        SourcePriorityNameMapping.addMapping("activeFocusControl", Integer.MIN_VALUE);
        SourcePriorityNameMapping.addMapping("activePart", 0x100000);
        SourcePriorityNameMapping.addMapping("activePartId", 0x400000);
        SourcePriorityNameMapping.addMapping("activeShell", 1024);
        SourcePriorityNameMapping.addMapping("activeSite", 0x4000000);
        SourcePriorityNameMapping.addMapping("activeWorkbenchWindow", 16384);
        SourcePriorityNameMapping.addMapping("activeWorkbenchWindowShell", 4096);
        SourcePriorityNameMapping.addMapping("activeWorkbenchWindow.isCoolbarVisible", 32768);
        SourcePriorityNameMapping.addMapping("activeWorkbenchWindow.activePerspective", 32768);
        SourcePriorityNameMapping.addMapping("activeWorkbenchWindow.isPerspectiveBarVisible", 32768);
        SourcePriorityNameMapping.addMapping(LEGACY_LEGACY_NAME, 1);
        SourcePriorityNameMapping.addMapping("workbench", 0);
    }

    public static final void addMapping(String sourceName, int sourcePriority) {
        if (sourceName == null) {
            throw new NullPointerException("The source name cannot be null.");
        }
        if (!sourcePrioritiesByName.containsKey(sourceName)) {
            Integer priority = new Integer(sourcePriority);
            sourcePrioritiesByName.put(sourceName, priority);
        }
    }

    public static final int computeSourcePriority(Expression expression) {
        int sourcePriority = 0;
        if (expression == null) {
            return sourcePriority;
        }
        ExpressionInfo info = expression.computeExpressionInfo();
        if (info.hasDefaultVariableAccess()) {
            sourcePriority |= 0x40000000;
        }
        String[] sourceNames = info.getAccessedVariableNames();
        int i = 0;
        while (i < sourceNames.length) {
            String sourceName = sourceNames[i];
            sourcePriority |= SourcePriorityNameMapping.getMapping(sourceName);
            ++i;
        }
        return sourcePriority;
    }

    public static final int getMapping(String sourceName) {
        Object object = sourcePrioritiesByName.get(sourceName);
        if (object instanceof Integer) {
            return (Integer)object;
        }
        return 0;
    }

    private SourcePriorityNameMapping() {
    }
}

