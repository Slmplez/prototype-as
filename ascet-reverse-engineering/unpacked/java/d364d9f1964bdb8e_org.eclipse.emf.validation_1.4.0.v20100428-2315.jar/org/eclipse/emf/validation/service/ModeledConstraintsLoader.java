/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.common.util.ResourceLocator
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.ecore.resource.ResourceSet
 *  org.eclipse.emf.ecore.resource.impl.ResourceSetImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.osgi.framework.Bundle
 */
package org.eclipse.emf.validation.service;

import java.util.Collection;
import java.util.HashSet;
import java.util.Set;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.common.util.ResourceLocator;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.ResourceSet;
import org.eclipse.emf.ecore.resource.impl.ResourceSetImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.validation.internal.EMFModelValidationDebugOptions;
import org.eclipse.emf.validation.internal.EMFModelValidationPlugin;
import org.eclipse.emf.validation.internal.EMFModelValidationStatusCodes;
import org.eclipse.emf.validation.internal.modeled.ClassProvider;
import org.eclipse.emf.validation.internal.modeled.ModeledConstraintDescriptor;
import org.eclipse.emf.validation.internal.modeled.ModeledConstraintProvider;
import org.eclipse.emf.validation.internal.modeled.model.validation.Binding;
import org.eclipse.emf.validation.internal.modeled.model.validation.Constraint;
import org.eclipse.emf.validation.internal.modeled.model.validation.ConstraintBindingsBundle;
import org.eclipse.emf.validation.internal.modeled.model.validation.ConstraintProvider;
import org.eclipse.emf.validation.internal.modeled.model.validation.Constraints;
import org.eclipse.emf.validation.internal.modeled.model.validation.ConstraintsBundle;
import org.eclipse.emf.validation.internal.modeled.model.validation.Parser;
import org.eclipse.emf.validation.internal.modeled.model.validation.Selector;
import org.eclipse.emf.validation.internal.service.ClientContext;
import org.eclipse.emf.validation.internal.service.ClientContextManager;
import org.eclipse.emf.validation.internal.service.GetBatchConstraintsOperation;
import org.eclipse.emf.validation.internal.service.GetLiveConstraintsOperation;
import org.eclipse.emf.validation.internal.service.IClientContext;
import org.eclipse.emf.validation.internal.service.IProviderDescriptor;
import org.eclipse.emf.validation.internal.service.IProviderOperation;
import org.eclipse.emf.validation.internal.util.Log;
import org.eclipse.emf.validation.internal.util.Trace;
import org.eclipse.emf.validation.internal.util.XmlConstraintFactory;
import org.eclipse.emf.validation.model.Category;
import org.eclipse.emf.validation.model.CategoryManager;
import org.eclipse.emf.validation.model.IClientSelector;
import org.eclipse.emf.validation.model.IModelConstraint;
import org.eclipse.emf.validation.service.ConstraintExistsException;
import org.eclipse.emf.validation.service.ConstraintFactory;
import org.eclipse.emf.validation.service.ConstraintRegistry;
import org.eclipse.emf.validation.service.IConstraintParser;
import org.eclipse.emf.validation.service.IModelConstraintProvider;
import org.eclipse.emf.validation.service.ModelValidationService;
import org.osgi.framework.Bundle;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ModeledConstraintsLoader {
    private Set<URI> loadedConstraintProviders = new HashSet<URI>();
    private static final ModeledConstraintsLoader instance = new ModeledConstraintsLoader();

    public static ModeledConstraintsLoader getInstance() {
        return instance;
    }

    private ModeledConstraintsLoader() {
    }

    public void loadConstraintBundles(ResourceSet rs, URI uri, ModelValidationService validationService, ResourceLocator resourceLocator) {
        this.loadConstraintBundles(rs, uri, validationService, new ClassProvider.ClassLoaderProvider(resourceLocator));
    }

    public void loadConstraintBundles(ResourceSet rs, URI uri, ModelValidationService validationService, Bundle bundle) {
        this.loadConstraintBundles(rs, uri, validationService, new ClassProvider.BundleProvider(bundle));
    }

    public void loadCategories(ResourceSet rs, URI uri, Bundle bundle) {
        Resource r = this.getResource(rs, uri);
        for (EObject o : r.getContents()) {
            if (!(o instanceof ConstraintsBundle)) continue;
            ConstraintsBundle constraintsBundle = (ConstraintsBundle)o;
            this.registerCategories(constraintsBundle.getCategories(), new ClassProvider.BundleProvider(bundle));
        }
    }

    private void loadConstraintBundles(ResourceSet rs, URI uri, ModelValidationService validationService, ClassProvider classPovider) {
        Resource r = this.getResource(rs, uri);
        for (EObject o : r.getContents()) {
            if (!(o instanceof ConstraintsBundle)) continue;
            ConstraintsBundle bundle = (ConstraintsBundle)o;
            this.registerCategories(bundle.getCategories(), classPovider);
            for (ConstraintProvider provider : bundle.getProviders()) {
                this.registerConstraintsProvider(provider, validationService, classPovider);
            }
            for (ConstraintBindingsBundle bindings : bundle.getConstraintBindingsBundles()) {
                this.registerConstraintBindingsBundle(bindings, classPovider);
            }
            for (Parser parser : bundle.getParsers()) {
                this.registerParser(classPovider, parser);
            }
        }
    }

    private void registerParser(ClassProvider classPovider, Parser parser) {
        try {
            String language = parser.getLanguage();
            String className = parser.getClassName();
            if (language == null) {
                Log.warningMessage(72, EMFModelValidationStatusCodes.CONSTRAINT_PARSER_TYPE_MSG, new Object[]{className, language});
            } else if (className == null) {
                Log.warningMessage(72, EMFModelValidationStatusCodes.CONSTRAINT_PARSER_TYPE_MSG, new Object[]{className, language});
            } else {
                ((XmlConstraintFactory)ConstraintFactory.getInstance()).registerParser(language, (IConstraintParser)classPovider.loadClass(className).newInstance());
                Trace.trace(EMFModelValidationDebugOptions.PARSERS, "Initialized parser for constraint language: " + language);
            }
        }
        catch (Exception e) {
            Trace.catching(this.getClass(), "loadConstraintBundles", e);
        }
    }

    private void registerConstraintBindingsBundle(ConstraintBindingsBundle bindings, ClassProvider classProvider) {
        for (org.eclipse.emf.validation.internal.modeled.model.validation.ClientContext ctx : bindings.getClientContexts()) {
            if (ctx instanceof Selector) {
                assert (classProvider != null);
                Selector sel = (Selector)ctx;
                Class<?> selectorClass = null;
                try {
                    selectorClass = classProvider.loadClass(sel.getClassName());
                }
                catch (ClassNotFoundException e) {
                    throw new RuntimeException(e);
                }
                IClientSelector instance = null;
                try {
                    instance = (IClientSelector)selectorClass.newInstance();
                }
                catch (InstantiationException e) {
                    throw new RuntimeException(e);
                }
                catch (IllegalAccessException e) {
                    throw new RuntimeException(e);
                }
                IClientContext oldCtx = ClientContextManager.getInstance().getClientContext(sel.getId());
                if (oldCtx == null) {
                    ClientContext newCtx = new ClientContext(sel.getId(), EMFModelValidationPlugin.getPluginId());
                    newCtx.setSelector(instance);
                    ClientContextManager.getInstance().addClientContext(newCtx);
                    continue;
                }
                throw new RuntimeException("Context already present: " + sel.getId());
            }
            throw new UnsupportedOperationException("Enablements not implemented yet.");
        }
        for (Binding binding : bindings.getBindings()) {
            for (org.eclipse.emf.validation.internal.modeled.model.validation.ClientContext ctx : binding.getClientContexts()) {
                ClientContext context = (ClientContext)ClientContextManager.getInstance().getClientContext(ctx.getId());
                if (context == null) {
                    throw new IllegalStateException("Context not found");
                }
                for (Constraint constraint : binding.getConstraints()) {
                    context.includeConstraint(constraint.getId());
                }
                for (Constraint constraint : binding.getExcludedConstraints()) {
                    context.excludeConstraint(constraint.getId());
                }
                for (org.eclipse.emf.validation.internal.modeled.model.validation.Category category : binding.getCategories()) {
                    context.includeCategory(category.getId());
                }
                for (org.eclipse.emf.validation.internal.modeled.model.validation.Category category : binding.getExcludedCategories()) {
                    context.excludeCategory(category.getId());
                }
            }
        }
    }

    private void registerCategories(EList<org.eclipse.emf.validation.internal.modeled.model.validation.Category> categories, ClassProvider classProvider) {
        for (org.eclipse.emf.validation.internal.modeled.model.validation.Category category : categories) {
            Category valCategory = CategoryManager.getInstance().getCategory(category.getPath());
            valCategory.setName(classProvider.bind(category.getName(), null));
            valCategory.setMandatory(category.isMandatory());
            this.registerCategories(category.getSubCategories(), classProvider);
        }
    }

    private void registerConstraintsProvider(ConstraintProvider provider, ModelValidationService validationService, ClassProvider classProvider) {
        URI providerUri = EcoreUtil.getURI((EObject)provider);
        if (!this.loadedConstraintProviders.contains(providerUri)) {
            this.loadedConstraintProviders.add(providerUri);
            ModelValidationService validationServiceToBeUsed = validationService == null ? ModelValidationService.getInstance() : validationService;
            ModeledConstraintProvider modeledProvider = null;
            if (provider.getClassName() == null) {
                modeledProvider = new ModeledConstraintProvider();
                for (Constraints constraints : provider.getConstraints()) {
                    for (Constraint constraint : constraints.getConstraints()) {
                        ModeledConstraintDescriptor descriptor = new ModeledConstraintDescriptor(provider.getPluginId(), classProvider);
                        descriptor.setInitializationData(constraint);
                        for (org.eclipse.emf.validation.internal.modeled.model.validation.Category category : constraints.getCategories()) {
                            CategoryManager.getInstance().getCategory(category.getPath()).addConstraint(descriptor);
                            try {
                                ConstraintRegistry.getInstance().register(descriptor);
                            }
                            catch (ConstraintExistsException e) {
                                throw new RuntimeException(e);
                            }
                        }
                    }
                }
            } else {
                Class<?> clazz;
                try {
                    clazz = classProvider.loadClass(provider.getClassName());
                }
                catch (ClassNotFoundException e) {
                    throw new RuntimeException(e);
                }
                if (ModeledConstraintProvider.class.isAssignableFrom(clazz)) {
                    try {
                        modeledProvider = (ModeledConstraintProvider)clazz.newInstance();
                    }
                    catch (InstantiationException e) {
                        throw new RuntimeException(e);
                    }
                    catch (IllegalAccessException e) {
                        throw new RuntimeException(e);
                    }
                }
            }
            modeledProvider.setConstraintProviderModel(provider);
            validationServiceToBeUsed.registerProvider(new _ProviderDescriptor(modeledProvider));
        }
    }

    private Resource getResource(ResourceSet rs, URI uri) {
        if (rs == null) {
            rs = new ResourceSetImpl();
        }
        Resource r = rs.getResource(uri, true);
        return r;
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class _ProviderDescriptor
    implements IProviderDescriptor {
        private final ModeledConstraintProvider provider;

        public _ProviderDescriptor(ModeledConstraintProvider provider) {
            this.provider = provider;
        }

        @Override
        public IModelConstraintProvider getProvider() {
            return this.provider;
        }

        @Override
        public boolean isCache() {
            return false;
        }

        @Override
        public boolean isCacheEnabled() {
            return false;
        }

        @Override
        public boolean isXmlProvider() {
            return false;
        }

        @Override
        public boolean provides(IProviderOperation<? extends Collection<? extends IModelConstraint>> operation) {
            if (operation instanceof GetLiveConstraintsOperation) {
                return this.providesLiveConstraints(operation);
            }
            if (operation instanceof GetBatchConstraintsOperation) {
                return this.providesBatchConstraints(operation);
            }
            return false;
        }

        private boolean providesBatchConstraints(IProviderOperation<? extends Collection<? extends IModelConstraint>> operation) {
            if (this.provider.isLive()) {
                return false;
            }
            GetBatchConstraintsOperation op = (GetBatchConstraintsOperation)operation;
            return this.provider.getModel().getPackage().contains((Object)op.getEObject().eClass().getEPackage());
        }

        private boolean providesLiveConstraints(IProviderOperation<? extends Collection<? extends IModelConstraint>> operation) {
            if (!this.provider.isLive()) {
                return false;
            }
            return false;
        }
    }
}

