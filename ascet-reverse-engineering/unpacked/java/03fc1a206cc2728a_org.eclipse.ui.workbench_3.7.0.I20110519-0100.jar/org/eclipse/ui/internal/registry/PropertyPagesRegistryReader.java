/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtensionRegistry
 */
package org.eclipse.ui.internal.registry;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.ui.internal.dialogs.PropertyPageContributorManager;
import org.eclipse.ui.internal.dialogs.RegistryPageContributor;
import org.eclipse.ui.internal.registry.CategorizedPageRegistryReader;

public class PropertyPagesRegistryReader
extends CategorizedPageRegistryReader {
    public static final String ATT_NAME_FILTER = "nameFilter";
    public static final String ATT_FILTER_NAME = "name";
    public static final String ATT_FILTER_VALUE = "value";
    public static final String ATT_SELECTION_FILTER = "selectionFilter";
    public static final String ATT_SELECTION_FILTER_MULTI = "multi";
    private static final String TAG_PAGE = "page";
    public static final String TAG_FILTER = "filter";
    public static final String TAG_KEYWORD_REFERENCE = "keywordReference";
    public static final String ATT_OBJECTCLASS = "objectClass";
    public static final String ATT_ADAPTABLE = "adaptable";
    private static final String CHILD_ENABLED_WHEN = "enabledWhen";
    private Collection pages = new ArrayList();
    private PropertyPageContributorManager manager;
    static /* synthetic */ Class class$0;

    public PropertyPagesRegistryReader(PropertyPageContributorManager manager) {
        this.manager = manager;
    }

    private void processPageElement(IConfigurationElement element) {
        String pageId = element.getAttribute("id");
        if (pageId == null) {
            PropertyPagesRegistryReader.logMissingAttribute(element, "id");
            return;
        }
        RegistryPageContributor contributor = new RegistryPageContributor(pageId, element);
        String pageClassName = PropertyPagesRegistryReader.getClassValue(element, "class");
        if (pageClassName == null) {
            PropertyPagesRegistryReader.logMissingAttribute(element, "class");
            return;
        }
        if (element.getAttribute(ATT_OBJECTCLASS) == null) {
            this.pages.add(contributor);
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("java.lang.Object");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.manager.registerContributor(contributor, clazz.getName());
        } else {
            ArrayList<String> objectClassNames = new ArrayList<String>();
            objectClassNames.add(element.getAttribute(ATT_OBJECTCLASS));
            this.registerContributors(contributor, objectClassNames);
        }
    }

    private void registerContributors(RegistryPageContributor contributor, List objectClassNames) {
        this.pages.add(contributor);
        Iterator iter = objectClassNames.iterator();
        while (iter.hasNext()) {
            this.manager.registerContributor(contributor, (String)iter.next());
        }
    }

    public boolean readElement(IConfigurationElement element) {
        if (element.getName().equals(TAG_PAGE)) {
            this.processPageElement(element);
            this.readElementChildren(element);
            return true;
        }
        if (element.getName().equals(TAG_FILTER)) {
            return true;
        }
        if (element.getName().equals(CHILD_ENABLED_WHEN)) {
            return true;
        }
        return element.getName().equals(TAG_KEYWORD_REFERENCE);
    }

    public void registerPropertyPages(IExtensionRegistry registry) {
        this.readRegistry(registry, "org.eclipse.ui", "propertyPages");
        this.processNodes();
    }

    void add(Object parent, Object node) {
        ((RegistryPageContributor)parent).addSubPage((RegistryPageContributor)node);
    }

    CategorizedPageRegistryReader.CategoryNode createCategoryNode(CategorizedPageRegistryReader reader, Object object) {
        return new PropertyCategoryNode(reader, (RegistryPageContributor)object);
    }

    Object findNode(Object parent, String currentToken) {
        return ((RegistryPageContributor)parent).getChild(currentToken);
    }

    Object findNode(String id) {
        Iterator iterator = this.pages.iterator();
        while (iterator.hasNext()) {
            RegistryPageContributor next = (RegistryPageContributor)iterator.next();
            if (!next.getPageId().equals(id)) continue;
            return next;
        }
        return null;
    }

    String getCategory(Object node) {
        return ((RegistryPageContributor)node).getCategory();
    }

    Collection getNodes() {
        return this.pages;
    }

    class PropertyCategoryNode
    extends CategorizedPageRegistryReader.CategoryNode {
        RegistryPageContributor page;

        PropertyCategoryNode(CategorizedPageRegistryReader reader, RegistryPageContributor propertyPage) {
            super(reader);
            this.page = propertyPage;
        }

        String getLabelText() {
            return this.page.getPageName();
        }

        String getLabelText(Object element) {
            return ((RegistryPageContributor)element).getPageName();
        }

        Object getNode() {
            return this.page;
        }
    }
}

