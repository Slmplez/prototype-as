/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.jface.resource.ImageDescriptor
 */
package org.eclipse.ui.internal.registry;

import java.util.ArrayList;
import java.util.StringTokenizer;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.ui.IPluginContribution;
import org.eclipse.ui.WorkbenchException;
import org.eclipse.ui.internal.WorkbenchImages;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.model.IWorkbenchAdapter;

public class Category
implements IWorkbenchAdapter,
IPluginContribution,
IAdaptable {
    public static final String MISC_NAME = WorkbenchMessages.ICategory_other;
    public static final String MISC_ID = "org.eclipse.ui.internal.otherCategory";
    private String id;
    private String name;
    private String[] parentPath;
    private ArrayList elements;
    private IConfigurationElement configurationElement;
    private String pluginId;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    public Category() {
        this.id = MISC_ID;
        this.name = MISC_NAME;
        this.pluginId = MISC_ID;
    }

    public Category(String id, String label) {
        this.id = id;
        this.name = label;
    }

    public Category(IConfigurationElement configElement) throws WorkbenchException {
        this.id = configElement.getAttribute("id");
        this.configurationElement = configElement;
        if (this.id == null || this.getLabel() == null) {
            throw new WorkbenchException("Invalid category: " + this.id);
        }
    }

    public void addElement(Object element) {
        if (this.elements == null) {
            this.elements = new ArrayList(5);
        }
        this.elements.add(element);
    }

    public Object getAdapter(Class adapter) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.model.IWorkbenchAdapter");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (adapter == clazz) {
            return this;
        }
        Class<?> clazz2 = class$1;
        if (clazz2 == null) {
            try {
                clazz2 = class$1 = Class.forName("org.eclipse.core.runtime.IConfigurationElement");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (adapter == clazz2) {
            return this.configurationElement;
        }
        return null;
    }

    public Object[] getChildren(Object o) {
        return this.getElements().toArray();
    }

    public ImageDescriptor getImageDescriptor(Object object) {
        return WorkbenchImages.getImageDescriptor("IMG_OBJ_FOLDER");
    }

    public String getLabel(Object o) {
        return this.getLabel();
    }

    public String getId() {
        return this.id;
    }

    public String getLabel() {
        return this.configurationElement == null ? this.name : this.configurationElement.getAttribute("name");
    }

    public String[] getParentPath() {
        if (this.parentPath != null) {
            return this.parentPath;
        }
        String unparsedPath = this.getRawParentPath();
        if (unparsedPath != null) {
            StringTokenizer stok = new StringTokenizer(unparsedPath, "/");
            this.parentPath = new String[stok.countTokens()];
            int i = 0;
            while (stok.hasMoreTokens()) {
                this.parentPath[i] = stok.nextToken();
                ++i;
            }
        }
        return this.parentPath;
    }

    public String getRawParentPath() {
        return this.configurationElement == null ? null : this.configurationElement.getAttribute("parentCategory");
    }

    public String getRootPath() {
        String[] path = this.getParentPath();
        if (path != null && path.length > 0) {
            return path[0];
        }
        return this.id;
    }

    public ArrayList getElements() {
        return this.elements;
    }

    public boolean hasElement(Object o) {
        if (this.elements == null) {
            return false;
        }
        if (this.elements.isEmpty()) {
            return false;
        }
        return this.elements.contains(o);
    }

    public boolean hasElements() {
        if (this.elements != null) {
            return !this.elements.isEmpty();
        }
        return false;
    }

    public Object getParent(Object o) {
        return null;
    }

    public String getLocalId() {
        return this.id;
    }

    public String getPluginId() {
        return this.configurationElement == null ? this.pluginId : this.configurationElement.getNamespace();
    }

    public void clear() {
        if (this.elements != null) {
            this.elements.clear();
        }
    }
}

