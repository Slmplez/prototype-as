/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.emf.validation.internal.service;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.emf.validation.internal.EMFModelValidationPlugin;
import org.eclipse.emf.validation.internal.l10n.ValidationMessages;
import org.eclipse.emf.validation.internal.service.ClientContextManager;
import org.eclipse.emf.validation.internal.service.IClientContext;
import org.eclipse.emf.validation.internal.util.Trace;
import org.eclipse.emf.validation.internal.util.XmlExpressionSelector;
import org.eclipse.emf.validation.model.Category;
import org.eclipse.emf.validation.model.IClientSelector;
import org.eclipse.emf.validation.model.IModelConstraint;
import org.eclipse.emf.validation.service.IConstraintDescriptor;
import org.eclipse.osgi.util.NLS;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ClientContext
implements IClientContext {
    private static final String A_DEFAULT = "default";
    private static final String E_ENABLEMENT = "enablement";
    private static final String E_SELECTOR = "selector";
    private String id;
    private IClientSelector selector;
    private boolean isDefault;
    private final Map<String, Boolean> constraintBindings = new HashMap<String, Boolean>();
    private BindingFilter filter = BindingFilter.NULL;
    private Collection<String> extendedClientContexts = new ArrayList<String>(2);

    public ClientContext(IConfigurationElement config) throws CoreException {
        this.initialize(config);
    }

    public ClientContext(String id, final String bindingContributorID) {
        this.id = id;
        this.isDefault = false;
        this.selector = new IClientSelector(){

            public boolean selects(Object object) {
                throw new IllegalStateException(NLS.bind((String)ValidationMessages.binding_noSuchContext_ERROR_, (Object)bindingContributorID));
            }
        };
    }

    void initialize(IConfigurationElement config) throws CoreException {
        this.id = this.initializeId(config);
        this.selector = this.initializeSelector(config);
        this.isDefault = this.initializeDefault(config);
    }

    private String initializeId(IConfigurationElement config) throws CoreException {
        String result = config.getAttribute("id");
        if (result == null) {
            CoreException ce = new CoreException((IStatus)new Status(4, EMFModelValidationPlugin.getPluginId(), 110, EMFModelValidationPlugin.getMessage(ValidationMessages.client_noId_ERROR_, config.getDeclaringExtension().getNamespaceIdentifier()), null));
            Trace.throwing(this.getClass(), "initializeId", ce);
            throw ce;
        }
        return result;
    }

    private IClientSelector initializeSelector(IConfigurationElement config) throws CoreException {
        IClientSelector result = null;
        IConfigurationElement[] enablement = config.getChildren(E_ENABLEMENT);
        if (enablement.length > 0) {
            result = this.initializeExpressionSelector(enablement[0]);
        } else {
            IConfigurationElement[] custom = config.getChildren(E_SELECTOR);
            if (custom.length > 0) {
                result = this.initializeCustomSelector(custom[0]);
            }
        }
        if (result == null) {
            CoreException ce = new CoreException((IStatus)new Status(4, EMFModelValidationPlugin.getPluginId(), 111, EMFModelValidationPlugin.getMessage(ValidationMessages.client_noSelector_ERROR_, this.getId(), config.getDeclaringExtension().getNamespaceIdentifier()), null));
            Trace.throwing(this.getClass(), "initializeSelector", ce);
            throw ce;
        }
        return result;
    }

    private IClientSelector initializeExpressionSelector(IConfigurationElement enablement) throws CoreException {
        try {
            return new XmlExpressionSelector(enablement);
        }
        catch (CoreException e) {
            Trace.catching(this.getClass(), "initializeExpressionSelector", e);
            CoreException ce = new CoreException((IStatus)new Status(4, EMFModelValidationPlugin.getPluginId(), 113, EMFModelValidationPlugin.getMessage(ValidationMessages.client_badExpression_ERROR_, this.getId(), enablement.getDeclaringExtension().getNamespaceIdentifier()), (Throwable)e));
            Trace.throwing(this.getClass(), "initializeExpressionSelector", ce);
            throw ce;
        }
    }

    private IClientSelector initializeCustomSelector(IConfigurationElement config) throws CoreException {
        Object result = config.createExecutableExtension("class");
        if (!(result instanceof IClientSelector)) {
            CoreException ce = new CoreException((IStatus)new Status(4, EMFModelValidationPlugin.getPluginId(), 112, EMFModelValidationPlugin.getMessage(ValidationMessages.client_selectorClass_ERROR_, result.getClass().getName(), IClientSelector.class.getName(), this.getId(), config.getDeclaringExtension().getNamespaceIdentifier()), null));
            Trace.throwing(this.getClass(), "initializeCustomSelector", ce);
            throw ce;
        }
        return (IClientSelector)result;
    }

    private boolean initializeDefault(IConfigurationElement config) {
        boolean result = false;
        String string = config.getAttribute(A_DEFAULT);
        if (string != null) {
            result = Boolean.valueOf(string);
        }
        return result;
    }

    @Override
    public final String getId() {
        return this.id;
    }

    @Override
    public final IClientSelector getSelector() {
        return this.selector;
    }

    public void setSelector(IClientSelector selector) {
        this.selector = selector;
    }

    @Override
    public final boolean isDefault() {
        return this.isDefault;
    }

    @Override
    public boolean includes(IModelConstraint constraint) {
        IConstraintDescriptor desc = constraint.getDescriptor();
        return desc != null && this.includes(desc);
    }

    boolean includes(IConstraintDescriptor constraint) {
        Boolean result = this.constraintBindings.get(constraint.getId());
        if (result == null) {
            result = this.filter.getBinding(constraint);
            this.constraintBindings.put(constraint.getId(), result);
        }
        return result;
    }

    public void includeConstraint(String constraintId) {
        this.filter = this.filter.includeConstraint(constraintId);
    }

    public void excludeConstraint(String constraintId) {
        this.filter = this.filter.excludeConstraint(constraintId);
    }

    public void includeCategory(String categoryId) {
        this.filter = this.filter.includeCategory(categoryId);
    }

    public void excludeCategory(String categoryId) {
        this.filter = this.filter.excludeCategory(categoryId);
    }

    public void extendClientContext(String clientContextID) {
        this.filter = this.filter.extendClientContext(clientContextID);
        if (!this.extendedClientContexts.contains(clientContextID)) {
            this.extendedClientContexts.add(clientContextID);
        }
    }

    Collection<? extends IClientContext> allExtendedContexts() {
        HashSet result = new HashSet();
        ClientContext.allExtendedContexts(this, result);
        return result;
    }

    private static void allExtendedContexts(ClientContext self, Set<? super ClientContext> contexts) {
        ClientContextManager mgr = ClientContextManager.getInstance();
        for (String next : self.extendedClientContexts) {
            ClientContext extended = (ClientContext)mgr.getClientContext(next);
            if (!contexts.add(extended)) continue;
            ClientContext.allExtendedContexts(extended, contexts);
        }
    }

    static void pruneExtensions(Set<? extends IClientContext> contexts) {
        boolean repeat;
        block0: do {
            repeat = false;
            for (IClientContext iClientContext : contexts) {
                if (!(iClientContext instanceof ClientContext) || !contexts.removeAll(((ClientContext)iClientContext).allExtendedContexts())) continue;
                repeat = true;
                continue block0;
            }
        } while (repeat);
    }

    public boolean equals(Object obj) {
        return obj instanceof ClientContext && ((ClientContext)obj).getId().equals(this.getId());
    }

    public int hashCode() {
        return this.getId().hashCode();
    }

    public String toString() {
        return "ClientContext[" + this.getId() + ']';
    }

    private static class BindingFilter {
        private BindingFilter next;
        static final BindingFilter NULL = new BindingFilter(){

            boolean getBinding(IConstraintDescriptor constraint) {
                return false;
            }
        };

        private BindingFilter() {
        }

        boolean getBinding(IConstraintDescriptor constraint) {
            return this.isExcluded(constraint) ? false : (this.isIncluded(constraint) ? true : this.next().getBinding(constraint));
        }

        boolean isExcluded(IConstraintDescriptor constraint) {
            return false;
        }

        boolean isIncluded(IConstraintDescriptor constraint) {
            return false;
        }

        BindingFilter next() {
            return this.next;
        }

        void setNext(BindingFilter next) {
            this.next = next;
        }

        BindingFilter includeCategory(String category) {
            CategoryInclusion result = new CategoryInclusion(category);
            result.setNext(this);
            return result;
        }

        BindingFilter excludeCategory(String category) {
            CategoryExclusion result = new CategoryExclusion(category);
            result.setNext(this);
            return result;
        }

        BindingFilter includeConstraint(String constraint) {
            ConstraintInclusion result = new ConstraintInclusion(constraint);
            result.setNext(this);
            return result;
        }

        BindingFilter excludeConstraint(String constraint) {
            ConstraintExclusion result = new ConstraintExclusion(constraint);
            result.setNext(this);
            return result;
        }

        BindingFilter extendClientContext(String clientContext) {
            ContextExtension result = new ContextExtension(clientContext);
            result.setNext(this);
            return result;
        }
    }

    private static class CategoryExclusion
    extends BindingFilter {
        private final CategorySet categories;

        CategoryExclusion(String category) {
            this.categories = new CategorySet(category);
        }

        boolean isExcluded(IConstraintDescriptor constraint) {
            return this.categories.containsAny(constraint.getCategories());
        }

        BindingFilter excludeCategory(String category) {
            this.categories.add(category);
            return this;
        }
    }

    private static class CategoryInclusion
    extends BindingFilter {
        private final CategorySet categories;

        CategoryInclusion(String category) {
            this.categories = new CategorySet(category);
        }

        boolean isIncluded(IConstraintDescriptor constraint) {
            return this.categories.containsAny(constraint.getCategories());
        }

        BindingFilter includeCategory(String category) {
            this.categories.add(category);
            return this;
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static final class CategorySet {
        private final Set<String> categories = new HashSet<String>();

        CategorySet(String category) {
            this.categories.add(category);
        }

        boolean containsAny(Collection<? extends Category> categories) {
            boolean result = false;
            for (Category category : categories) {
                if (!this.contains(category)) continue;
                result = true;
                break;
            }
            return result;
        }

        boolean contains(Category category) {
            boolean result = false;
            String path = category.getPath();
            result = this.categories.contains(path);
            if (!result) {
                Category ancestor = category.getParent();
                while (ancestor != null && !result) {
                    result = this.categories.contains(ancestor.getPath());
                    ancestor = ancestor.getParent();
                }
                if (result) {
                    this.add(path);
                }
            }
            return result;
        }

        void add(String category) {
            this.categories.add(category);
        }
    }

    private static class ConstraintExclusion
    extends BindingFilter {
        private final Set<String> constraints = new HashSet<String>();

        ConstraintExclusion(String constraint) {
            this.constraints.add(constraint);
        }

        boolean isExcluded(IConstraintDescriptor constraint) {
            return this.constraints.contains(constraint.getId());
        }

        BindingFilter excludeConstraint(String constraint) {
            this.constraints.add(constraint);
            return this;
        }
    }

    private static class ConstraintInclusion
    extends BindingFilter {
        private final Set<String> constraints = new HashSet<String>();

        ConstraintInclusion(String constraint) {
            this.constraints.add(constraint);
        }

        boolean isIncluded(IConstraintDescriptor constraint) {
            return this.constraints.contains(constraint.getId());
        }

        BindingFilter includeConstraint(String constraint) {
            this.constraints.add(constraint);
            return this;
        }
    }

    private static class ContextExtension
    extends BindingFilter {
        private final Set<String> extendedContextIDs = new HashSet<String>();
        private volatile Set<ClientContext> extendedContexts;

        ContextExtension(String clientContext) {
            this.extendedContextIDs.add(clientContext);
        }

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         */
        boolean isIncluded(IConstraintDescriptor constraint) {
            if (this.extendedContexts == null) {
                ClientContextManager mgr = ClientContextManager.getInstance();
                HashSet<ClientContext> contexts = new HashSet<ClientContext>();
                Set<String> set = this.extendedContextIDs;
                synchronized (set) {
                    for (String next : this.extendedContextIDs) {
                        contexts.add((ClientContext)mgr.getClientContext(next));
                    }
                    this.extendedContexts = contexts;
                }
            }
            for (ClientContext extended : this.extendedContexts) {
                if (!extended.includes(constraint)) continue;
                return true;
            }
            return false;
        }

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         */
        BindingFilter extendClientContext(String clientContext) {
            Set<String> set = this.extendedContextIDs;
            synchronized (set) {
                this.extendedContexts = null;
                this.extendedContextIDs.add(clientContext);
            }
            return this;
        }
    }
}

