/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.expressions.EvaluationContext
 *  org.eclipse.core.expressions.EvaluationResult
 *  org.eclipse.core.expressions.Expression
 *  org.eclipse.core.expressions.ExpressionConverter
 *  org.eclipse.core.expressions.IEvaluationContext
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.ui.IPluginContribution
 */
package org.eclipse.ui.internal.console;

import org.eclipse.core.expressions.EvaluationContext;
import org.eclipse.core.expressions.EvaluationResult;
import org.eclipse.core.expressions.Expression;
import org.eclipse.core.expressions.ExpressionConverter;
import org.eclipse.core.expressions.IEvaluationContext;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.ui.IPluginContribution;
import org.eclipse.ui.console.IConsole;
import org.eclipse.ui.console.IConsolePageParticipant;

public class ConsolePageParticipantExtension
implements IPluginContribution {
    private IConfigurationElement fConfig;
    private Expression fEnablementExpression;

    public ConsolePageParticipantExtension(IConfigurationElement config) {
        this.fConfig = config;
    }

    public String getLocalId() {
        return this.fConfig.getAttribute("id");
    }

    public String getPluginId() {
        return this.fConfig.getContributor().getName();
    }

    public boolean isEnabledFor(IConsole console) throws CoreException {
        EvaluationContext context = new EvaluationContext(null, (Object)console);
        Expression expression = this.getEnablementExpression();
        if (expression != null) {
            EvaluationResult evaluationResult = expression.evaluate((IEvaluationContext)context);
            return evaluationResult == EvaluationResult.TRUE;
        }
        return true;
    }

    public Expression getEnablementExpression() throws CoreException {
        if (this.fEnablementExpression == null) {
            IConfigurationElement enablement;
            IConfigurationElement[] elements = this.fConfig.getChildren("enablement");
            IConfigurationElement iConfigurationElement = enablement = elements.length > 0 ? elements[0] : null;
            if (enablement != null) {
                this.fEnablementExpression = ExpressionConverter.getDefault().perform(enablement);
            }
        }
        return this.fEnablementExpression;
    }

    public IConsolePageParticipant createDelegate() throws CoreException {
        return (IConsolePageParticipant)this.fConfig.createExecutableExtension("class");
    }
}

