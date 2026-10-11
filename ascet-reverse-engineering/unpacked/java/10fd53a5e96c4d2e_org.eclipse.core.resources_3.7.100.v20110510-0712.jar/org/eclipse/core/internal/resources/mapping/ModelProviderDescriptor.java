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
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.resources.mapping;

import java.util.ArrayList;
import java.util.HashSet;
import org.eclipse.core.expressions.EvaluationContext;
import org.eclipse.core.expressions.EvaluationResult;
import org.eclipse.core.expressions.Expression;
import org.eclipse.core.expressions.ExpressionConverter;
import org.eclipse.core.expressions.IEvaluationContext;
import org.eclipse.core.internal.resources.ResourceException;
import org.eclipse.core.internal.utils.Messages;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.mapping.IModelProviderDescriptor;
import org.eclipse.core.resources.mapping.ModelProvider;
import org.eclipse.core.resources.mapping.ResourceTraversal;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Status;
import org.eclipse.osgi.util.NLS;

public class ModelProviderDescriptor
implements IModelProviderDescriptor {
    private String id;
    private String[] extendedModels;
    private String label;
    private ModelProvider provider;
    private Expression enablementRule;

    private static EvaluationContext createEvaluationContext(Object element) {
        EvaluationContext result = new EvaluationContext(null, element);
        return result;
    }

    public ModelProviderDescriptor(IExtension extension) throws CoreException {
        this.readExtension(extension);
    }

    private boolean convert(EvaluationResult eval) {
        return eval != EvaluationResult.FALSE;
    }

    protected void fail(String reason) throws CoreException {
        throw new ResourceException((IStatus)new Status(4, "org.eclipse.core.resources", 1, reason, null));
    }

    public String[] getExtendedModels() {
        return this.extendedModels;
    }

    public String getId() {
        return this.id;
    }

    public String getLabel() {
        return this.label;
    }

    public IResource[] getMatchingResources(IResource[] resources) throws CoreException {
        HashSet<IResource> result = new HashSet<IResource>();
        int i = 0;
        while (i < resources.length) {
            IResource resource = resources[i];
            EvaluationContext evalContext = ModelProviderDescriptor.createEvaluationContext(resource);
            if (this.matches((IEvaluationContext)evalContext)) {
                result.add(resource);
            }
            ++i;
        }
        return result.toArray(new IResource[result.size()]);
    }

    public synchronized ModelProvider getModelProvider() throws CoreException {
        if (this.provider == null) {
            IExtension extension = Platform.getExtensionRegistry().getExtension("org.eclipse.core.resources", "modelProviders", this.id);
            IConfigurationElement[] elements = extension.getConfigurationElements();
            int i = 0;
            while (i < elements.length) {
                IConfigurationElement element = elements[i];
                if (element.getName().equalsIgnoreCase("modelProvider")) {
                    try {
                        this.provider = (ModelProvider)((Object)element.createExecutableExtension("class"));
                        this.provider.init(this);
                    }
                    catch (ClassCastException e) {
                        String message = NLS.bind((String)Messages.mapping_wrongType, (Object)this.id);
                        throw new CoreException((IStatus)new Status(4, "org.eclipse.core.resources", 2, message, (Throwable)e));
                    }
                }
                ++i;
            }
        }
        return this.provider;
    }

    public boolean matches(IEvaluationContext context) throws CoreException {
        if (this.enablementRule == null) {
            return false;
        }
        return this.convert(this.enablementRule.evaluate(context));
    }

    protected void readExtension(IExtension extension) throws CoreException {
        this.id = extension.getUniqueIdentifier();
        if (this.id == null) {
            this.fail(Messages.mapping_noIdentifier);
        }
        this.label = extension.getLabel();
        IConfigurationElement[] elements = extension.getConfigurationElements();
        int count = elements.length;
        ArrayList<String> extendsList = new ArrayList<String>(count);
        int i = 0;
        while (i < count) {
            IConfigurationElement element = elements[i];
            String name = element.getName();
            if (name.equalsIgnoreCase("extends-model")) {
                String attribute = element.getAttribute("id");
                if (attribute == null) {
                    this.fail(NLS.bind((String)Messages.mapping_invalidDef, (Object)this.id));
                }
                extendsList.add(attribute);
            } else if (name.equalsIgnoreCase("enablement")) {
                this.enablementRule = ExpressionConverter.getDefault().perform(element);
            }
            ++i;
        }
        this.extendedModels = extendsList.toArray(new String[extendsList.size()]);
    }

    public ResourceTraversal[] getMatchingTraversals(ResourceTraversal[] traversals) throws CoreException {
        ArrayList<ResourceTraversal> result = new ArrayList<ResourceTraversal>();
        int i = 0;
        while (i < traversals.length) {
            ResourceTraversal traversal = traversals[i];
            if (this.getMatchingResources(traversal.getResources()).length > 0) {
                result.add(traversal);
            }
            ++i;
        }
        return result.toArray(new ResourceTraversal[result.size()]);
    }
}

