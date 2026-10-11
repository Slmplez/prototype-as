/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.dynamichelpers.ExtensionTracker
 *  org.eclipse.core.runtime.dynamichelpers.IExtensionChangeHandler
 *  org.eclipse.core.runtime.dynamichelpers.IExtensionTracker
 *  org.eclipse.emf.common.EMFPlugin
 *  org.eclipse.emf.common.util.URI
 */
package org.eclipse.emf.validation.model;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Set;
import java.util.SortedSet;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.dynamichelpers.ExtensionTracker;
import org.eclipse.core.runtime.dynamichelpers.IExtensionChangeHandler;
import org.eclipse.core.runtime.dynamichelpers.IExtensionTracker;
import org.eclipse.emf.common.EMFPlugin;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.validation.internal.EMFModelValidationDebugOptions;
import org.eclipse.emf.validation.internal.EMFModelValidationPlugin;
import org.eclipse.emf.validation.internal.l10n.ValidationMessages;
import org.eclipse.emf.validation.internal.util.Trace;
import org.eclipse.emf.validation.model.Category;
import org.eclipse.emf.validation.service.IConstraintDescriptor;
import org.eclipse.emf.validation.service.ModeledConstraintsLoader;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class CategoryManager {
    static final String DEFAULT_CATEGORY_NAME = ValidationMessages.category_default_name;
    static final String DEFAULT_CATEGORY_DESCRIPTION = ValidationMessages.category_default_desc;
    private static final CategoryManager INSTANCE = new CategoryManager();
    private final Category globalCategory = Category.GLOBAL_NAMESPACE;
    private final IExtensionChangeHandler extensionHandler = new IExtensionChangeHandler(){

        public void addExtension(IExtensionTracker tracker, IExtension extension) {
            IConfigurationElement[] iConfigurationElementArray = extension.getConfigurationElements();
            int n = iConfigurationElementArray.length;
            int n2 = 0;
            while (n2 < n) {
                IConfigurationElement next = iConfigurationElementArray[n2];
                if (next.getName().equals("category")) {
                    CategoryManager.this.loadCategories(CategoryManager.this.globalCategory, next);
                }
                ++n2;
            }
        }

        public void removeExtension(IExtension extension, Object[] objects) {
        }
    };

    static {
        INSTANCE.initDefaultCategory();
        INSTANCE.loadCategories();
    }

    private CategoryManager() {
    }

    public static CategoryManager getInstance() {
        return INSTANCE;
    }

    public SortedSet<Category> getTopLevelCategories() {
        return this.globalCategory.getChildren();
    }

    public Category getDefaultCategory() {
        return Category.DEFAULT_CATEGORY;
    }

    public Category getCategory(String path) {
        return this.globalCategory.getDescendent(path, true);
    }

    public Category getCategory(Category parent, String path) {
        if (parent == null) {
            return this.globalCategory.getDescendent(path, true);
        }
        return parent.getDescendent(path, true);
    }

    public Category findCategory(String path) {
        return this.globalCategory.getDescendent(path, false);
    }

    public Category findCategory(Category parent, String path) {
        if (parent == null) {
            return this.globalCategory.getDescendent(path, false);
        }
        return parent.getDescendent(path, false);
    }

    public void removeCategory(Category category) {
        IConstraintDescriptor[] constraintsArray;
        Category[] childrenArray;
        if (category.getParent() == null) {
            throw new IllegalArgumentException();
        }
        SortedSet<Category> children = category.getChildren();
        Category[] categoryArray = childrenArray = children.toArray(new Category[children.size()]);
        int n = childrenArray.length;
        int n2 = 0;
        while (n2 < n) {
            Category child = categoryArray[n2];
            this.removeCategory(child);
            ++n2;
        }
        Set<IConstraintDescriptor> constraints = category.getConstraints();
        IConstraintDescriptor[] iConstraintDescriptorArray = constraintsArray = constraints.toArray(new IConstraintDescriptor[constraints.size()]);
        int n3 = constraintsArray.length;
        int n4 = 0;
        while (n4 < n3) {
            IConstraintDescriptor constraint = iConstraintDescriptorArray[n4];
            category.removeConstraint(constraint);
            ++n4;
        }
        category.getParent().removeChild(category.getId());
    }

    public void removeCategory(String path) {
        Category category = this.findCategory(path);
        if (category != null) {
            this.removeCategory(category);
        }
    }

    private void initDefaultCategory() {
        Category.DEFAULT_CATEGORY.setName(DEFAULT_CATEGORY_NAME);
        Category.DEFAULT_CATEGORY.setDescription(DEFAULT_CATEGORY_DESCRIPTION);
    }

    private void loadCategories() {
        if (EMFPlugin.IS_ECLIPSE_RUNNING) {
            int n;
            IExtensionPoint extPoint = Platform.getExtensionRegistry().getExtensionPoint(EMFModelValidationPlugin.getPluginId(), "constraintProviders");
            IExtensionTracker extTracker = EMFModelValidationPlugin.getExtensionTracker();
            if (extTracker != null) {
                extTracker.registerHandler(this.extensionHandler, ExtensionTracker.createExtensionPointFilter((IExtensionPoint)extPoint));
                IExtension[] iExtensionArray = extPoint.getExtensions();
                n = iExtensionArray.length;
                int n2 = 0;
                while (n2 < n) {
                    IExtension extension = iExtensionArray[n2];
                    this.extensionHandler.addExtension(extTracker, extension);
                    ++n2;
                }
            }
            IExtensionPoint modeledConstraintsExtensionPoint = Platform.getExtensionRegistry().getExtensionPoint(EMFModelValidationPlugin.getPluginId(), "modeledConstraintProviders");
            IExtension[] iExtensionArray = modeledConstraintsExtensionPoint.getExtensions();
            int n3 = iExtensionArray.length;
            n = 0;
            while (n < n3) {
                IExtension ext = iExtensionArray[n];
                IConfigurationElement[] iConfigurationElementArray = ext.getConfigurationElements();
                int n4 = iConfigurationElementArray.length;
                int n5 = 0;
                while (n5 < n4) {
                    String uri;
                    IConfigurationElement cfg = iConfigurationElementArray[n5];
                    if ("provider".equals(cfg.getName()) && (uri = cfg.getAttribute("constraintResourceUri")) != null) {
                        try {
                            ModeledConstraintsLoader.getInstance().loadCategories(null, URI.createURI((String)uri), Platform.getBundle((String)ext.getContributor().getName()));
                        }
                        catch (Exception e) {
                            EMFModelValidationPlugin.Tracing.catching(EMFModelValidationDebugOptions.EXCEPTIONS_CATCHING, CategoryManager.class, "loadCategories", e);
                        }
                    }
                    ++n5;
                }
                ++n;
            }
        }
    }

    private void loadCategories(Category parent, IConfigurationElement element) {
        String path = element.getAttribute("id");
        if (path != null && path.length() > 0) {
            IConfigurationElement[] subcategories;
            Category category = this.getCategory(parent, path);
            String name = element.getAttribute("name");
            if (name != null) {
                category.setName(name);
            }
            category.setDescription(element.getValue());
            String mandatory = element.getAttribute("mandatory");
            if (mandatory != null) {
                category.setMandatory(Boolean.valueOf(mandatory));
            }
            IConfigurationElement[] iConfigurationElementArray = subcategories = element.getChildren("category");
            int n = subcategories.length;
            int n2 = 0;
            while (n2 < n) {
                IConfigurationElement element2 = iConfigurationElementArray[n2];
                this.loadCategories(category, element2);
                ++n2;
            }
        } else {
            Trace.trace(EMFModelValidationDebugOptions.XML, "No ID found for category: " + element.getAttribute("name"));
        }
    }

    public Collection<Category> getMandatoryCategories() {
        ArrayList<Category> result = new ArrayList<Category>();
        this.globalCategory.getMandatoryCategories(result);
        return result;
    }
}

