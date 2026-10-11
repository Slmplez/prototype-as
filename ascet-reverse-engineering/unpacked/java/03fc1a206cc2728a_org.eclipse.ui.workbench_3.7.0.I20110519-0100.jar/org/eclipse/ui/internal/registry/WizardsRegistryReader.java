/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.Collator
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtensionRegistry
 *  org.eclipse.core.runtime.Platform
 */
package org.eclipse.ui.internal.registry;

import com.ibm.icu.text.Collator;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.StringTokenizer;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.core.runtime.Platform;
import org.eclipse.ui.activities.WorkbenchActivityHelper;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.dialogs.WizardCollectionElement;
import org.eclipse.ui.internal.dialogs.WorkbenchWizardElement;
import org.eclipse.ui.internal.registry.Category;
import org.eclipse.ui.internal.registry.RegistryReader;
import org.eclipse.ui.internal.util.Util;

public class WizardsRegistryReader
extends RegistryReader {
    private String pluginPoint;
    private WizardCollectionElement wizardElements = null;
    private ArrayList deferWizards = null;
    private ArrayList deferCategories = null;
    private Set deferPrimary;
    public static final String FULL_EXAMPLES_WIZARD_CATEGORY = "org.eclipse.ui.Examples";
    public static final String UNCATEGORIZED_WIZARD_CATEGORY = "org.eclipse.ui.Other";
    public static final String GENERAL_WIZARD_CATEGORY = "org.eclipse.ui.Basic";
    private static final String UNCATEGORIZED_WIZARD_CATEGORY_LABEL = WorkbenchMessages.NewWizardsRegistryReader_otherCategory;
    private static final String CATEGORY_SEPARATOR = "/";
    private WorkbenchWizardElement[] primaryWizards = new WorkbenchWizardElement[0];
    private static final Comparator comparer = new Comparator(){
        private Collator collator = Collator.getInstance();

        public int compare(Object arg0, Object arg1) {
            String s1 = ((CategoryNode)arg0).getPath();
            String s2 = ((CategoryNode)arg1).getPath();
            return this.collator.compare(s1, s2);
        }
    };
    private boolean readAll = true;
    private String plugin;
    static /* synthetic */ Class class$0;

    public WizardsRegistryReader(String pluginId, String pluginPointId) {
        this.pluginPoint = pluginPointId;
        this.plugin = pluginId;
    }

    protected void addNewElementToResult(WorkbenchWizardElement element, IConfigurationElement config) {
        this.deferWizard(element);
    }

    private WizardCollectionElement createCollectionElement(WizardCollectionElement parent, IConfigurationElement element) {
        WizardCollectionElement newElement = new WizardCollectionElement(element, parent);
        parent.add(newElement);
        return newElement;
    }

    protected WizardCollectionElement createCollectionElement(WizardCollectionElement parent, String id, String pluginId, String label) {
        WizardCollectionElement newElement = new WizardCollectionElement(id, pluginId, label, parent);
        parent.add(newElement);
        return newElement;
    }

    protected void createEmptyWizardCollection() {
        this.wizardElements = new WizardCollectionElement("root", null, "root", null);
    }

    public void setInitialCollection(WizardCollectionElement wizards) {
        this.wizardElements = wizards;
        this.readAll = false;
    }

    private void deferCategory(IConfigurationElement config) {
        Category category = null;
        try {
            category = new Category(config);
        }
        catch (CoreException e) {
            WorkbenchPlugin.log("Cannot create category: ", e.getStatus());
            return;
        }
        if (this.deferCategories == null) {
            this.deferCategories = new ArrayList(20);
        }
        this.deferCategories.add(category);
    }

    private void deferWizard(WorkbenchWizardElement element) {
        if (this.deferWizards == null) {
            this.deferWizards = new ArrayList(50);
        }
        this.deferWizards.add(element);
    }

    private void finishCategories() {
        if (this.deferCategories == null) {
            return;
        }
        CategoryNode[] flatArray = new CategoryNode[this.deferCategories.size()];
        int i = 0;
        while (i < this.deferCategories.size()) {
            flatArray[i] = new CategoryNode((Category)this.deferCategories.get(i));
            ++i;
        }
        Collections.sort(Arrays.asList(flatArray), comparer);
        int nX = 0;
        while (nX < flatArray.length) {
            Category cat = flatArray[nX].getCategory();
            this.finishCategory(cat);
            ++nX;
        }
        this.deferCategories = null;
    }

    private void finishCategory(Category category) {
        WizardCollectionElement test;
        String[] categoryPath = category.getParentPath();
        WizardCollectionElement parent = this.wizardElements;
        if (categoryPath != null) {
            int i = 0;
            while (i < categoryPath.length) {
                WizardCollectionElement tempElement = this.getChildWithID(parent, categoryPath[i]);
                if (tempElement == null) {
                    return;
                }
                parent = tempElement;
                ++i;
            }
        }
        if ((test = this.getChildWithID(parent, category.getId())) != null) {
            return;
        }
        if (parent != null) {
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.core.runtime.IConfigurationElement");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.createCollectionElement(parent, (IConfigurationElement)Util.getAdapter(category, clazz));
        }
    }

    private void finishPrimary() {
        if (this.deferPrimary != null) {
            ArrayList<WorkbenchWizardElement> primary = new ArrayList<WorkbenchWizardElement>();
            Iterator i = this.deferPrimary.iterator();
            while (i.hasNext()) {
                WorkbenchWizardElement element;
                String id = (String)i.next();
                WorkbenchWizardElement workbenchWizardElement = element = this.wizardElements == null ? null : this.wizardElements.findWizard(id, true);
                if (element == null) continue;
                primary.add(element);
            }
            this.primaryWizards = primary.toArray(new WorkbenchWizardElement[primary.size()]);
            this.deferPrimary = null;
        }
    }

    private void finishWizard(WorkbenchWizardElement element, IConfigurationElement config) {
        StringTokenizer familyTokenizer = new StringTokenizer(this.getCategoryStringFor(config), CATEGORY_SEPARATOR);
        WizardCollectionElement currentCollectionElement = this.wizardElements;
        boolean moveToOther = false;
        while (familyTokenizer.hasMoreElements()) {
            WizardCollectionElement tempCollectionElement = this.getChildWithID(currentCollectionElement, familyTokenizer.nextToken());
            if (tempCollectionElement == null) {
                moveToOther = true;
                break;
            }
            currentCollectionElement = tempCollectionElement;
        }
        if (moveToOther) {
            this.moveElementToUncategorizedCategory(this.wizardElements, element);
        } else {
            currentCollectionElement.add(element);
            element.setParent(currentCollectionElement);
        }
    }

    private void finishWizards() {
        if (this.deferWizards != null) {
            Iterator iter = this.deferWizards.iterator();
            while (iter.hasNext()) {
                WorkbenchWizardElement wizard = (WorkbenchWizardElement)iter.next();
                IConfigurationElement config = wizard.getConfigurationElement();
                this.finishWizard(wizard, config);
            }
            this.deferWizards = null;
        }
    }

    protected String getCategoryStringFor(IConfigurationElement config) {
        String result = config.getAttribute("category");
        if (result == null) {
            result = UNCATEGORIZED_WIZARD_CATEGORY;
        }
        return result;
    }

    protected WizardCollectionElement getChildWithID(WizardCollectionElement parent, String id) {
        Object[] children = parent.getChildren(null);
        int i = 0;
        while (i < children.length) {
            WizardCollectionElement currentChild = (WizardCollectionElement)children[i];
            if (currentChild.getId().equals(id)) {
                return currentChild;
            }
            ++i;
        }
        return null;
    }

    protected void moveElementToUncategorizedCategory(WizardCollectionElement root, WorkbenchWizardElement element) {
        WizardCollectionElement otherCategory = this.getChildWithID(root, UNCATEGORIZED_WIZARD_CATEGORY);
        if (otherCategory == null) {
            otherCategory = this.createCollectionElement(root, UNCATEGORIZED_WIZARD_CATEGORY, null, UNCATEGORIZED_WIZARD_CATEGORY_LABEL);
        }
        otherCategory.add(element);
        element.setParent(otherCategory);
    }

    private void pruneEmptyCategories(WizardCollectionElement parent) {
        Object[] children = parent.getChildren(null);
        int nX = 0;
        while (nX < children.length) {
            WizardCollectionElement child = (WizardCollectionElement)children[nX];
            this.pruneEmptyCategories(child);
            boolean shouldPrune = child.getId().equals(FULL_EXAMPLES_WIZARD_CATEGORY);
            if (child.isEmpty() && shouldPrune) {
                parent.remove(child);
            }
            ++nX;
        }
    }

    public boolean readElement(IConfigurationElement element) {
        if (element.getName().equals("category")) {
            this.deferCategory(element);
            return true;
        }
        if (element.getName().equals("primaryWizard")) {
            if (this.deferPrimary == null) {
                this.deferPrimary = new HashSet();
            }
            this.deferPrimary.add(element.getAttribute("id"));
            return true;
        }
        if (!element.getName().equals("wizard")) {
            return false;
        }
        WorkbenchWizardElement wizard = this.createWizardElement(element);
        if (wizard != null) {
            this.addNewElementToResult(wizard, element);
        }
        return true;
    }

    protected void readWizards() {
        if (this.readAll && !this.areWizardsRead()) {
            this.createEmptyWizardCollection();
            IExtensionRegistry registry = Platform.getExtensionRegistry();
            this.readRegistry(registry, this.plugin, this.pluginPoint);
        }
        this.finishCategories();
        this.finishWizards();
        this.finishPrimary();
        if (this.wizardElements != null) {
            this.pruneEmptyCategories(this.wizardElements);
        }
    }

    public WorkbenchWizardElement[] getPrimaryWizards() {
        if (!this.areWizardsRead()) {
            this.readWizards();
        }
        return (WorkbenchWizardElement[])WorkbenchActivityHelper.restrictArray(this.primaryWizards);
    }

    protected boolean areWizardsRead() {
        return this.wizardElements != null && this.readAll;
    }

    public WizardCollectionElement getWizardElements() {
        if (!this.areWizardsRead()) {
            this.readWizards();
        }
        return this.wizardElements;
    }

    protected Object[] getWizardCollectionElements() {
        if (!this.areWizardsRead()) {
            this.readWizards();
        }
        return this.wizardElements.getChildren();
    }

    protected WorkbenchWizardElement createWizardElement(IConfigurationElement element) {
        if (element.getAttribute("name") == null) {
            WizardsRegistryReader.logMissingAttribute(element, "name");
            return null;
        }
        if (WizardsRegistryReader.getClassValue(element, "class") == null) {
            WizardsRegistryReader.logMissingAttribute(element, "class");
            return null;
        }
        return new WorkbenchWizardElement(element);
    }

    public WorkbenchWizardElement findWizard(String id) {
        Object[] wizards = this.getWizardCollectionElements();
        int nX = 0;
        while (nX < wizards.length) {
            WizardCollectionElement collection = (WizardCollectionElement)wizards[nX];
            WorkbenchWizardElement element = collection.findWizard(id, true);
            if (element != null && !WorkbenchActivityHelper.restrictUseOf(element)) {
                return element;
            }
            ++nX;
        }
        return null;
    }

    private class CategoryNode {
        private Category category;
        private String path;

        CategoryNode(Category cat) {
            this.category = cat;
            this.path = "";
            String[] categoryPath = this.category.getParentPath();
            if (categoryPath != null) {
                int nX = 0;
                while (nX < categoryPath.length) {
                    this.path = String.valueOf(this.path) + categoryPath[nX] + '/';
                    ++nX;
                }
            }
            this.path = String.valueOf(this.path) + cat.getId();
        }

        String getPath() {
            return this.path;
        }

        Category getCategory() {
            return this.category;
        }
    }
}

