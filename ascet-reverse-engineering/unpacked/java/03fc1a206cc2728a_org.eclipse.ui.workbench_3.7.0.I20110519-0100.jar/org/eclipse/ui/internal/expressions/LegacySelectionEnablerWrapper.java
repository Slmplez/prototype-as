/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.expressions.EvaluationResult
 *  org.eclipse.core.expressions.ExpressionInfo
 *  org.eclipse.core.expressions.IEvaluationContext
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.jface.viewers.ISelection
 */
package org.eclipse.ui.internal.expressions;

import org.eclipse.core.expressions.EvaluationResult;
import org.eclipse.core.expressions.ExpressionInfo;
import org.eclipse.core.expressions.IEvaluationContext;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.SelectionEnabler;
import org.eclipse.ui.internal.expressions.WorkbenchWindowExpression;

public final class LegacySelectionEnablerWrapper
extends WorkbenchWindowExpression {
    private static final int HASH_INITIAL;
    private final SelectionEnabler enabler;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.internal.expressions.LegacySelectionEnablerWrapper");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        HASH_INITIAL = clazz.getName().hashCode();
    }

    public LegacySelectionEnablerWrapper(SelectionEnabler enabler, IWorkbenchWindow window) {
        super(window);
        if (enabler == null) {
            throw new NullPointerException("There is no enabler");
        }
        this.enabler = enabler;
    }

    public final void collectExpressionInfo(ExpressionInfo info) {
        super.collectExpressionInfo(info);
        info.markDefaultVariableAccessed();
    }

    protected final int computeHashCode() {
        int hashCode = HASH_INITIAL * 89 + LegacySelectionEnablerWrapper.hashCode((Object)this.getWindow());
        hashCode = hashCode * 89 + LegacySelectionEnablerWrapper.hashCode((Object)this.enabler);
        return hashCode;
    }

    public final boolean equals(Object object) {
        if (object instanceof LegacySelectionEnablerWrapper) {
            LegacySelectionEnablerWrapper that = (LegacySelectionEnablerWrapper)((Object)object);
            return LegacySelectionEnablerWrapper.equals((Object)this.enabler, (Object)that.enabler) && LegacySelectionEnablerWrapper.equals((Object)this.getWindow(), (Object)that.getWindow());
        }
        return false;
    }

    public final EvaluationResult evaluate(IEvaluationContext context) throws CoreException {
        ISelection selection;
        EvaluationResult result = super.evaluate(context);
        if (result == EvaluationResult.FALSE) {
            return result;
        }
        Object defaultVariable = context.getVariable("selection");
        if (defaultVariable instanceof ISelection && this.enabler.isEnabledForSelection(selection = (ISelection)defaultVariable)) {
            return EvaluationResult.TRUE;
        }
        return EvaluationResult.FALSE;
    }

    public final String toString() {
        StringBuffer buffer = new StringBuffer();
        buffer.append("LegacySelectionEnablerWrapper(");
        buffer.append(this.enabler);
        buffer.append(',');
        buffer.append(this.getWindow());
        buffer.append(')');
        return buffer.toString();
    }
}

