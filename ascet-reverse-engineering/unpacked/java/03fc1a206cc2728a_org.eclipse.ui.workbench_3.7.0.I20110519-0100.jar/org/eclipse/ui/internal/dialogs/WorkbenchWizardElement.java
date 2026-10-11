/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.IStructuredSelection
 *  org.eclipse.jface.viewers.StructuredSelection
 */
package org.eclipse.ui.internal.dialogs;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.Platform;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.viewers.StructuredSelection;
import org.eclipse.ui.IPluginContribution;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.IWorkbenchWizard;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.SelectionEnabler;
import org.eclipse.ui.internal.ISelectionConversionService;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.dialogs.WizardCollectionElement;
import org.eclipse.ui.internal.registry.KeywordRegistry;
import org.eclipse.ui.internal.registry.RegistryReader;
import org.eclipse.ui.model.WorkbenchAdapter;
import org.eclipse.ui.plugin.AbstractUIPlugin;
import org.eclipse.ui.wizards.IWizardCategory;
import org.eclipse.ui.wizards.IWizardDescriptor;

public class WorkbenchWizardElement
extends WorkbenchAdapter
implements IAdaptable,
IPluginContribution,
IWizardDescriptor {
    private String id;
    private ImageDescriptor imageDescriptor;
    private SelectionEnabler selectionEnabler;
    private IConfigurationElement configurationElement;
    private ImageDescriptor descriptionImage;
    private WizardCollectionElement parentCategory;
    public static final String TAG_PROJECT = "project";
    private static final String[] EMPTY_TAGS = new String[0];
    private static final String[] PROJECT_TAGS = new String[]{"project"};
    private String[] keywordLabels;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;
    static /* synthetic */ Class class$3;
    static /* synthetic */ Class class$4;
    static /* synthetic */ Class class$5;

    public WorkbenchWizardElement(IConfigurationElement configurationElement) {
        this.configurationElement = configurationElement;
        this.id = configurationElement.getAttribute("id");
    }

    public boolean canHandleSelection(IStructuredSelection selection) {
        return this.getSelectionEnabler().isEnabledForSelection((ISelection)selection);
    }

    public IStructuredSelection adaptedSelection(IStructuredSelection selection) {
        if (this.canHandleSelection(selection)) {
            return selection;
        }
        IStructuredSelection adaptedSelection = this.convertToResources(selection);
        if (this.canHandleSelection(adaptedSelection)) {
            return adaptedSelection;
        }
        return StructuredSelection.EMPTY;
    }

    public Object createExecutableExtension() throws CoreException {
        return WorkbenchPlugin.createExtension(this.configurationElement, "class");
    }

    public Object getAdapter(Class adapter) {
        block26: {
            block25: {
                Class<?> clazz = class$0;
                if (clazz == null) {
                    try {
                        clazz = class$0 = Class.forName("org.eclipse.ui.model.IWorkbenchAdapter");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                if (adapter == clazz) break block25;
                Class<?> clazz2 = class$1;
                if (clazz2 == null) {
                    try {
                        clazz2 = class$1 = Class.forName("org.eclipse.ui.model.IWorkbenchAdapter2");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                if (adapter == clazz2) break block25;
                Class<?> clazz3 = class$2;
                if (clazz3 == null) {
                    try {
                        clazz3 = class$2 = Class.forName("org.eclipse.ui.model.IWorkbenchAdapter3");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                if (adapter != clazz3) break block26;
            }
            return this;
        }
        Class<?> clazz = class$3;
        if (clazz == null) {
            try {
                clazz = class$3 = Class.forName("org.eclipse.ui.IPluginContribution");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (adapter == clazz) {
            return this;
        }
        Class<?> clazz4 = class$4;
        if (clazz4 == null) {
            try {
                clazz4 = class$4 = Class.forName("org.eclipse.core.runtime.IConfigurationElement");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (adapter == clazz4) {
            return this.configurationElement;
        }
        return Platform.getAdapterManager().getAdapter((Object)this, adapter);
    }

    public IConfigurationElement getConfigurationElement() {
        return this.configurationElement;
    }

    public String getDescription() {
        return RegistryReader.getDescription(this.configurationElement);
    }

    public ImageDescriptor getImageDescriptor() {
        if (this.imageDescriptor == null) {
            String iconName = this.configurationElement.getAttribute("icon");
            if (iconName == null) {
                return null;
            }
            this.imageDescriptor = AbstractUIPlugin.imageDescriptorFromPlugin(this.configurationElement.getNamespaceIdentifier(), iconName);
        }
        return this.imageDescriptor;
    }

    public ImageDescriptor getImageDescriptor(Object element) {
        return this.getImageDescriptor();
    }

    public String getLabel(Object element) {
        return this.configurationElement.getAttribute("name");
    }

    protected SelectionEnabler getSelectionEnabler() {
        if (this.selectionEnabler == null) {
            this.selectionEnabler = new SelectionEnabler(this.configurationElement);
        }
        return this.selectionEnabler;
    }

    private IStructuredSelection convertToResources(IStructuredSelection originalSelection) {
        Object selectionService;
        IWorkbench iWorkbench = PlatformUI.getWorkbench();
        Class<?> clazz = class$5;
        if (clazz == null) {
            try {
                clazz = class$5 = Class.forName("org.eclipse.ui.internal.ISelectionConversionService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((selectionService = iWorkbench.getService(clazz)) == null || originalSelection == null) {
            return StructuredSelection.EMPTY;
        }
        return ((ISelectionConversionService)selectionService).convertToResources(originalSelection);
    }

    public String getLocalId() {
        return this.getId();
    }

    public String getPluginId() {
        return this.configurationElement != null ? this.configurationElement.getNamespaceIdentifier() : null;
    }

    public ImageDescriptor getDescriptionImage() {
        if (this.descriptionImage == null) {
            String descImage = this.configurationElement.getAttribute("descriptionImage");
            if (descImage == null) {
                return null;
            }
            this.descriptionImage = AbstractUIPlugin.imageDescriptorFromPlugin(this.configurationElement.getNamespaceIdentifier(), descImage);
        }
        return this.descriptionImage;
    }

    public String getHelpHref() {
        return this.configurationElement.getAttribute("helpHref");
    }

    public IWorkbenchWizard createWizard() throws CoreException {
        return (IWorkbenchWizard)this.createExecutableExtension();
    }

    public String getId() {
        return this.id;
    }

    public String getLabel() {
        return this.getLabel(this);
    }

    public IWizardCategory getCategory() {
        return (IWizardCategory)this.getParent(this);
    }

    public WizardCollectionElement getCollectionElement() {
        return (WizardCollectionElement)this.getParent(this);
    }

    public String[] getTags() {
        String flag = this.configurationElement.getAttribute(TAG_PROJECT);
        if (Boolean.valueOf(flag).booleanValue()) {
            return PROJECT_TAGS;
        }
        return EMPTY_TAGS;
    }

    public Object getParent(Object object) {
        return this.parentCategory;
    }

    public void setParent(WizardCollectionElement parent) {
        this.parentCategory = parent;
    }

    public boolean canFinishEarly() {
        return Boolean.valueOf(this.configurationElement.getAttribute("canFinishEarly"));
    }

    public boolean hasPages() {
        String hasPagesString = this.configurationElement.getAttribute("hasPages");
        if (hasPagesString == null) {
            return true;
        }
        return Boolean.valueOf(hasPagesString);
    }

    public String[] getKeywordLabels() {
        if (this.keywordLabels == null) {
            IConfigurationElement[] children = this.configurationElement.getChildren("keywordReference");
            this.keywordLabels = new String[children.length];
            KeywordRegistry registry = KeywordRegistry.getInstance();
            int i = 0;
            while (i < children.length) {
                String id = children[i].getAttribute("id");
                this.keywordLabels[i] = registry.getKeywordLabel(id);
                ++i;
            }
        }
        return this.keywordLabels;
    }
}

