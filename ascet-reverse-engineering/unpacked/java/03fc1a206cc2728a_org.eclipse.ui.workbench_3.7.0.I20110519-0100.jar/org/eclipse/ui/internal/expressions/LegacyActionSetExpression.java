/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.expressions.EvaluationResult
 *  org.eclipse.core.expressions.ExpressionInfo
 *  org.eclipse.core.expressions.IEvaluationContext
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.ui.internal.expressions;

import org.eclipse.core.expressions.EvaluationResult;
import org.eclipse.core.expressions.ExpressionInfo;
import org.eclipse.core.expressions.IEvaluationContext;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.internal.expressions.WorkbenchWindowExpression;
import org.eclipse.ui.internal.registry.IActionSetDescriptor;

public final class LegacyActionSetExpression
extends WorkbenchWindowExpression {
    private static final int HASH_INITIAL;
    private final String actionSetId;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.internal.expressions.LegacyActionSetExpression");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        HASH_INITIAL = clazz.getName().hashCode();
    }

    public LegacyActionSetExpression(String actionSetId, IWorkbenchWindow window) {
        super(window);
        if (actionSetId == null) {
            throw new NullPointerException("The action set identifier cannot be null");
        }
        this.actionSetId = actionSetId;
    }

    public final void collectExpressionInfo(ExpressionInfo info) {
        super.collectExpressionInfo(info);
        info.addVariableNameAccess("activeActionSets");
    }

    protected final int computeHhashCode() {
        int hashCode = HASH_INITIAL * 89 + LegacyActionSetExpression.hashCode((Object)this.getWindow());
        hashCode = hashCode * 89 + LegacyActionSetExpression.hashCode((Object)this.actionSetId);
        return hashCode;
    }

    public final boolean equals(Object object) {
        if (object instanceof LegacyActionSetExpression) {
            LegacyActionSetExpression that = (LegacyActionSetExpression)((Object)object);
            return LegacyActionSetExpression.equals((Object)this.actionSetId, (Object)that.actionSetId) && LegacyActionSetExpression.equals((Object)this.getWindow(), (Object)that.getWindow());
        }
        return false;
    }

    public final EvaluationResult evaluate(IEvaluationContext context) throws CoreException {
        EvaluationResult result = super.evaluate(context);
        if (result == EvaluationResult.FALSE) {
            return result;
        }
        Object variable = context.getVariable("activeActionSets");
        if (variable instanceof IActionSetDescriptor[]) {
            IActionSetDescriptor[] descriptors = (IActionSetDescriptor[])variable;
            int i = 0;
            while (i < descriptors.length) {
                IActionSetDescriptor descriptor = descriptors[i];
                String currentId = descriptor.getId();
                if (this.actionSetId.equals(currentId)) {
                    return EvaluationResult.TRUE;
                }
                ++i;
            }
        }
        return EvaluationResult.FALSE;
    }

    public final String toString() {
        StringBuffer buffer = new StringBuffer();
        buffer.append("ActionSetExpression(");
        buffer.append(this.actionSetId);
        buffer.append(',');
        buffer.append(this.getWindow());
        buffer.append(')');
        return buffer.toString();
    }
}

