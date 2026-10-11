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
 *  org.eclipse.core.runtime.FileLocator
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.ui.IPluginContribution
 *  org.osgi.framework.Bundle
 */
package org.eclipse.ui.internal.console;

import java.net.URL;
import org.eclipse.core.expressions.EvaluationContext;
import org.eclipse.core.expressions.EvaluationResult;
import org.eclipse.core.expressions.Expression;
import org.eclipse.core.expressions.ExpressionConverter;
import org.eclipse.core.expressions.IEvaluationContext;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.FileLocator;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Platform;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.ui.IPluginContribution;
import org.eclipse.ui.console.ConsolePlugin;
import org.eclipse.ui.console.IConsoleFactory;
import org.osgi.framework.Bundle;

public class ConsoleFactoryExtension
implements IPluginContribution {
    private IConfigurationElement fConfig;
    private Expression fEnablementExpression;
    private String fLabel;
    private ImageDescriptor fImageDescriptor;
    private IConsoleFactory fFactory;

    ConsoleFactoryExtension(IConfigurationElement config) {
        this.fConfig = config;
    }

    public String getLocalId() {
        return this.fConfig.getAttribute("id");
    }

    public String getPluginId() {
        return this.fConfig.getContributor().getName();
    }

    public boolean isEnabled() {
        Expression enablementExpression;
        block3: {
            try {
                enablementExpression = this.getEnablementExpression();
                if (enablementExpression != null) break block3;
                return true;
            }
            catch (CoreException e) {
                ConsolePlugin.log(e);
                return false;
            }
        }
        EvaluationContext context = new EvaluationContext(null, (Object)this);
        EvaluationResult evaluationResult = enablementExpression.evaluate((IEvaluationContext)context);
        return evaluationResult != EvaluationResult.FALSE;
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

    public String getLabel() {
        if (this.fLabel == null) {
            this.fLabel = this.fConfig.getAttribute("label");
        }
        return this.fLabel;
    }

    public ImageDescriptor getImageDescriptor() {
        Bundle bundle;
        URL url;
        String path;
        if (this.fImageDescriptor == null && (path = this.fConfig.getAttribute("icon")) != null && (url = FileLocator.find((Bundle)(bundle = Platform.getBundle((String)this.getPluginId())), (IPath)new Path(path), null)) != null) {
            this.fImageDescriptor = ImageDescriptor.createFromURL((URL)url);
        }
        return this.fImageDescriptor;
    }

    public IConsoleFactory createFactory() throws CoreException {
        if (this.fFactory == null) {
            this.fFactory = (IConsoleFactory)this.fConfig.createExecutableExtension("class");
        }
        return this.fFactory;
    }
}

