/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  org.eclipse.core.expressions.EvaluationContext
 *  org.eclipse.core.expressions.EvaluationResult
 *  org.eclipse.core.expressions.Expression
 *  org.eclipse.core.expressions.ExpressionConverter
 *  org.eclipse.core.expressions.IEvaluationContext
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.variables.VariablesPlugin
 *  org.eclipse.ui.IPluginContribution
 */
package org.eclipse.ui.internal.console;

import com.ibm.icu.text.MessageFormat;
import java.lang.reflect.Field;
import org.eclipse.core.expressions.EvaluationContext;
import org.eclipse.core.expressions.EvaluationResult;
import org.eclipse.core.expressions.Expression;
import org.eclipse.core.expressions.ExpressionConverter;
import org.eclipse.core.expressions.IEvaluationContext;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.variables.VariablesPlugin;
import org.eclipse.ui.IPluginContribution;
import org.eclipse.ui.console.ConsolePlugin;
import org.eclipse.ui.console.IConsole;
import org.eclipse.ui.console.IPatternMatchListenerDelegate;
import org.eclipse.ui.internal.console.ConsoleMessages;

public class PatternMatchListenerExtension
implements IPluginContribution {
    private IConfigurationElement fConfig;
    private Expression fEnablementExpression;
    private String fPattern;
    private String fQualifier;
    private int fFlags = -1;

    public PatternMatchListenerExtension(IConfigurationElement extension) {
        this.fConfig = extension;
    }

    public int parseFlags(String flagsElement) {
        int val = 0;
        if (flagsElement == null) {
            return val;
        }
        try {
            flagsElement = flagsElement.replaceAll("Pattern.", "");
            String[] tokens = flagsElement.split("\\s\\|\\s");
            Class<?> clazz = Class.forName("java.util.regex.Pattern");
            int i = 0;
            while (i < tokens.length) {
                Field field = clazz.getDeclaredField(tokens[i]);
                val |= field.getInt(null);
                ++i;
            }
        }
        catch (ClassNotFoundException e) {
            ConsolePlugin.log(e);
        }
        catch (NoSuchFieldException e) {
            ConsolePlugin.log(e);
        }
        catch (IllegalAccessException e) {
            ConsolePlugin.log(e);
        }
        return val;
    }

    public boolean isEnabledFor(IConsole console) throws CoreException {
        EvaluationContext context = new EvaluationContext(null, (Object)console);
        EvaluationResult evaluationResult = this.getEnablementExpression().evaluate((IEvaluationContext)context);
        return evaluationResult == EvaluationResult.TRUE;
    }

    public IPatternMatchListenerDelegate createDelegate() throws CoreException {
        return (IPatternMatchListenerDelegate)this.fConfig.createExecutableExtension("class");
    }

    public Expression getEnablementExpression() throws CoreException {
        if (this.fEnablementExpression == null) {
            IConfigurationElement enablement;
            IConfigurationElement[] elements = this.fConfig.getChildren("enablement");
            if (elements.length == 0) {
                String message = MessageFormat.format((String)("{0} " + this.getLocalId() + " {1} " + this.getPluginId() + " {2}"), (Object[])new String[]{ConsoleMessages.PatternMatchListenerExtension_3, ConsoleMessages.PatternMatchListenerExtension_4, ConsoleMessages.PatternMatchListenerExtension_5});
                ConsolePlugin.log((IStatus)new Status(2, ConsolePlugin.getUniqueIdentifier(), 0, message, null));
            }
            IConfigurationElement iConfigurationElement = enablement = elements.length > 0 ? elements[0] : null;
            if (enablement != null) {
                this.fEnablementExpression = ExpressionConverter.getDefault().perform(enablement);
            }
        }
        return this.fEnablementExpression;
    }

    public String getPattern() {
        if (this.fPattern == null) {
            this.fPattern = this.fConfig.getAttribute("regex");
            try {
                this.fPattern = VariablesPlugin.getDefault().getStringVariableManager().performStringSubstitution(this.fPattern, false);
            }
            catch (CoreException e) {
                ConsolePlugin.log(e);
            }
        }
        return this.fPattern;
    }

    public int getCompilerFlags() {
        if (this.fFlags < 0) {
            String flagsAttribute = this.fConfig.getAttribute("flags");
            this.fFlags = this.parseFlags(flagsAttribute);
        }
        return this.fFlags;
    }

    public String getLocalId() {
        return this.fConfig.getAttribute("id");
    }

    public String getPluginId() {
        return this.fConfig.getContributor().getName();
    }

    public String getQuickPattern() {
        if (this.fQualifier == null) {
            this.fQualifier = this.fConfig.getAttribute("qualifier");
            try {
                if (this.fQualifier != null) {
                    this.fQualifier = VariablesPlugin.getDefault().getStringVariableManager().performStringSubstitution(this.fQualifier, false);
                }
            }
            catch (CoreException e) {
                ConsolePlugin.log(e);
            }
        }
        return this.fQualifier;
    }
}

