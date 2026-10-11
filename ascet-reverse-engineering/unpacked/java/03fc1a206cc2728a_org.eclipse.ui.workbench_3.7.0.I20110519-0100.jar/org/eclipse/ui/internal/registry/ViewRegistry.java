/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.dynamichelpers.ExtensionTracker
 *  org.eclipse.core.runtime.dynamichelpers.IExtensionChangeHandler
 *  org.eclipse.core.runtime.dynamichelpers.IExtensionTracker
 */
package org.eclipse.ui.internal.registry;

import com.ibm.icu.text.MessageFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.SortedSet;
import java.util.TreeSet;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.dynamichelpers.ExtensionTracker;
import org.eclipse.core.runtime.dynamichelpers.IExtensionChangeHandler;
import org.eclipse.core.runtime.dynamichelpers.IExtensionTracker;
import org.eclipse.ui.IPluginContribution;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.activities.WorkbenchActivityHelper;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.registry.Category;
import org.eclipse.ui.internal.registry.StickyViewDescriptor;
import org.eclipse.ui.internal.registry.ViewDescriptor;
import org.eclipse.ui.internal.registry.ViewRegistryReader;
import org.eclipse.ui.internal.util.Util;
import org.eclipse.ui.views.IStickyViewDescriptor;
import org.eclipse.ui.views.IViewCategory;
import org.eclipse.ui.views.IViewDescriptor;
import org.eclipse.ui.views.IViewRegistry;

public class ViewRegistry
implements IViewRegistry,
IExtensionChangeHandler {
    private static String EXTENSIONPOINT_UNIQUE_ID = String.valueOf(WorkbenchPlugin.PI_WORKBENCH) + "." + "views";
    private SortedSet views = new TreeSet(new ViewDescriptorComparator());
    private List categories;
    private List sticky;
    private Category miscCategory;
    protected static final String TAG_DESCRIPTION = "description";
    private ViewRegistryReader reader = new ViewRegistryReader();
    private boolean dirtyViewCategoryMappings = true;
    static /* synthetic */ Class class$0;

    public ViewRegistry() {
        this.categories = new ArrayList();
        this.sticky = new ArrayList();
        PlatformUI.getWorkbench().getExtensionTracker().registerHandler((IExtensionChangeHandler)this, ExtensionTracker.createExtensionPointFilter((IExtensionPoint)this.getExtensionPointFilter()));
        this.reader.readViews(Platform.getExtensionRegistry(), this);
    }

    public void add(Category desc) {
        if (this.internalFindCategory(desc.getId()) == null) {
            IConfigurationElement element;
            this.dirtyViewCategoryMappings = true;
            this.categories.add(desc);
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.core.runtime.IConfigurationElement");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((element = (IConfigurationElement)Util.getAdapter(desc, clazz)) == null) {
                return;
            }
            PlatformUI.getWorkbench().getExtensionTracker().registerObject(element.getDeclaringExtension(), (Object)desc, 2);
        }
    }

    public void add(ViewDescriptor desc) {
        if (this.views.add(desc)) {
            this.dirtyViewCategoryMappings = true;
            PlatformUI.getWorkbench().getExtensionTracker().registerObject(desc.getConfigurationElement().getDeclaringExtension(), (Object)desc, 2);
        }
    }

    public void add(StickyViewDescriptor desc) {
        if (!this.sticky.contains(desc)) {
            this.sticky.add(desc);
            PlatformUI.getWorkbench().getExtensionTracker().registerObject(desc.getConfigurationElement().getDeclaringExtension(), (Object)desc, 2);
        }
    }

    public IViewDescriptor find(String id) {
        IViewDescriptor desc = this.findInternal(id);
        if (WorkbenchActivityHelper.restrictUseOf(desc)) {
            return null;
        }
        return desc;
    }

    public IViewDescriptor findInternal(String id) {
        Iterator itr = this.views.iterator();
        while (itr.hasNext()) {
            IViewDescriptor desc = (IViewDescriptor)itr.next();
            if (!id.equals(desc.getId())) continue;
            return desc;
        }
        return null;
    }

    public IViewCategory findCategory(String id) {
        this.mapViewsToCategories();
        Category category = this.internalFindCategory(id);
        if (category == null) {
            return null;
        }
        return new ViewCategoryProxy(category);
    }

    private Category internalFindCategory(String id) {
        Iterator itr = this.categories.iterator();
        while (itr.hasNext()) {
            Category cat = (Category)itr.next();
            if (!id.equals(cat.getRootPath())) continue;
            return cat;
        }
        return null;
    }

    public IViewCategory[] getCategories() {
        this.mapViewsToCategories();
        int nSize = this.categories.size();
        IViewCategory[] retArray = new IViewCategory[nSize];
        int i = 0;
        Iterator itr = this.categories.iterator();
        while (itr.hasNext()) {
            retArray[i++] = new ViewCategoryProxy((Category)itr.next());
        }
        return retArray;
    }

    public IStickyViewDescriptor[] getStickyViews() {
        Collection descs = WorkbenchActivityHelper.restrictCollection(this.sticky, new ArrayList());
        return descs.toArray(new IStickyViewDescriptor[descs.size()]);
    }

    public Category getMiscCategory() {
        return this.miscCategory;
    }

    public IViewDescriptor[] getViews() {
        Collection descs = WorkbenchActivityHelper.restrictCollection(this.views, new TreeSet(new ViewDescriptorComparator()));
        return descs.toArray(new IViewDescriptor[descs.size()]);
    }

    public void mapViewsToCategories() {
        if (this.dirtyViewCategoryMappings) {
            this.dirtyViewCategoryMappings = false;
            Iterator i = this.categories.iterator();
            while (i.hasNext()) {
                Category category = (Category)i.next();
                category.clear();
            }
            if (this.miscCategory != null) {
                this.miscCategory.clear();
            }
            i = this.views.iterator();
            while (i.hasNext()) {
                IViewDescriptor desc = (IViewDescriptor)i.next();
                Category cat = null;
                String[] catPath = desc.getCategoryPath();
                if (catPath != null) {
                    String rootCat = catPath[0];
                    cat = this.internalFindCategory(rootCat);
                }
                if (cat != null) {
                    if (cat.hasElement(desc)) continue;
                    cat.addElement(desc);
                    continue;
                }
                if (this.miscCategory == null) {
                    this.miscCategory = new Category();
                    this.add(this.miscCategory);
                }
                if (catPath != null) {
                    String fmt = "Category {0} not found for view {1}.  This view added to ''{2}'' category.";
                    WorkbenchPlugin.log(MessageFormat.format((String)fmt, (Object[])new Object[]{catPath[0], desc.getId(), this.miscCategory.getLabel()}));
                }
                this.miscCategory.addElement(desc);
            }
        }
    }

    public void dispose() {
        PlatformUI.getWorkbench().getExtensionTracker().unregisterHandler((IExtensionChangeHandler)this);
    }

    public void removeExtension(IExtension extension, Object[] objects) {
        int i = 0;
        while (i < objects.length) {
            if (objects[i] instanceof StickyViewDescriptor) {
                this.sticky.remove(objects[i]);
            } else if (objects[i] instanceof ViewDescriptor) {
                this.views.remove(objects[i]);
                this.dirtyViewCategoryMappings = true;
            } else if (objects[i] instanceof Category) {
                this.categories.remove(objects[i]);
                this.dirtyViewCategoryMappings = true;
            }
            ++i;
        }
    }

    private IExtensionPoint getExtensionPointFilter() {
        return Platform.getExtensionRegistry().getExtensionPoint(EXTENSIONPOINT_UNIQUE_ID);
    }

    public void addExtension(IExtensionTracker tracker, IExtension addedExtension) {
        IConfigurationElement[] addedElements = addedExtension.getConfigurationElements();
        int i = 0;
        while (i < addedElements.length) {
            IConfigurationElement element = addedElements[i];
            if (element.getName().equals("view")) {
                this.reader.readView(element);
            } else if (element.getName().equals("category")) {
                this.reader.readCategory(element);
            } else if (element.getName().equals("stickyView")) {
                this.reader.readSticky(element);
            }
            ++i;
        }
    }

    private static class ViewCategoryProxy
    implements IViewCategory,
    IPluginContribution {
        private Category rawCategory;

        public ViewCategoryProxy(Category rawCategory) {
            this.rawCategory = rawCategory;
        }

        public IViewDescriptor[] getViews() {
            ArrayList elements = this.rawCategory.getElements();
            if (elements == null) {
                return new IViewDescriptor[0];
            }
            Collection descs = WorkbenchActivityHelper.restrictCollection(elements, new ArrayList());
            return descs.toArray(new IViewDescriptor[descs.size()]);
        }

        public String getId() {
            return this.rawCategory.getId();
        }

        public IPath getPath() {
            String rawParentPath = this.rawCategory.getRawParentPath();
            if (rawParentPath == null) {
                return new Path("");
            }
            return new Path(rawParentPath);
        }

        public String getLabel() {
            return this.rawCategory.getLabel();
        }

        public String getLocalId() {
            return this.getId();
        }

        public String getPluginId() {
            return this.rawCategory.getPluginId();
        }

        public boolean equals(Object o) {
            if (o instanceof IViewCategory) {
                return this.getId().equals(((IViewCategory)o).getId());
            }
            return false;
        }

        public int hashCode() {
            return this.getId().hashCode();
        }
    }

    private static final class ViewDescriptorComparator
    implements Comparator {
        private ViewDescriptorComparator() {
        }

        public int compare(Object o1, Object o2) {
            String id1 = ((ViewDescriptor)o1).getId();
            String id2 = ((ViewDescriptor)o2).getId();
            return id1.compareTo(id2);
        }
    }
}

