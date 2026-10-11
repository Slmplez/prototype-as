/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.viewers.ILabelProvider
 *  org.eclipse.jface.viewers.ITreeContentProvider
 *  org.eclipse.jface.viewers.Viewer
 */
package org.eclipse.pde.internal.runtime.registry;

import java.util.ArrayList;
import org.eclipse.jface.viewers.ILabelProvider;
import org.eclipse.jface.viewers.ITreeContentProvider;
import org.eclipse.jface.viewers.Viewer;
import org.eclipse.pde.internal.runtime.registry.RegistryBrowser;
import org.eclipse.pde.internal.runtime.registry.model.Attribute;
import org.eclipse.pde.internal.runtime.registry.model.Bundle;
import org.eclipse.pde.internal.runtime.registry.model.ConfigurationElement;
import org.eclipse.pde.internal.runtime.registry.model.Extension;
import org.eclipse.pde.internal.runtime.registry.model.ExtensionPoint;
import org.eclipse.pde.internal.runtime.registry.model.Folder;
import org.eclipse.pde.internal.runtime.registry.model.ModelObject;
import org.eclipse.pde.internal.runtime.registry.model.RegistryModel;
import org.eclipse.pde.internal.runtime.registry.model.ServiceName;
import org.eclipse.pde.internal.runtime.registry.model.ServiceRegistration;

public class RegistryBrowserContentProvider
implements ITreeContentProvider {
    public boolean isInExtensionSet;
    private RegistryBrowser fRegistryBrowser;
    static /* synthetic */ Class class$0;

    public RegistryBrowserContentProvider(RegistryBrowser registryBrowser) {
        this.fRegistryBrowser = registryBrowser;
    }

    public void dispose() {
    }

    public Object[] getElements(Object element) {
        return this.getChildren(element);
    }

    public Object[] getChildren(Object element) {
        if (element instanceof RegistryModel) {
            RegistryModel model = (RegistryModel)element;
            switch (this.fRegistryBrowser.getGroupBy()) {
                case 0: {
                    return model.getBundles();
                }
                case 1: {
                    return model.getExtensionPoints();
                }
                case 2: {
                    return model.getServiceNames();
                }
            }
            return null;
        }
        if (element instanceof Extension) {
            return ((Extension)element).getConfigurationElements();
        }
        this.isInExtensionSet = false;
        if (element instanceof ExtensionPoint) {
            return ((ExtensionPoint)element).getExtensions().toArray();
        }
        if (element instanceof ConfigurationElement) {
            return ((ConfigurationElement)element).getElements();
        }
        if (element instanceof Bundle) {
            if (this.fRegistryBrowser.getGroupBy() != 0) {
                return null;
            }
            Bundle bundle = (Bundle)element;
            ArrayList<Object> folders = new ArrayList<Object>(9);
            folders.add(new Attribute("Location", bundle.getLocation()));
            if (bundle.getImports().length > 0) {
                folders.add(new Folder(3, bundle));
            }
            if (bundle.getImportedPackages().length > 0) {
                folders.add(new Folder(10, bundle));
            }
            if (bundle.getExportedPackages().length > 0) {
                folders.add(new Folder(11, bundle));
            }
            if (bundle.getLibraries().length > 0) {
                folders.add(new Folder(4, bundle));
            }
            if (bundle.getExtensionPoints().length > 0) {
                folders.add(new Folder(2, bundle));
            }
            if (bundle.getExtensions().length > 0) {
                folders.add(new Folder(1, bundle));
            }
            if (bundle.getRegisteredServices().length > 0) {
                folders.add(new Folder(5, bundle));
            }
            if (bundle.getServicesInUse().length > 0) {
                folders.add(new Folder(6, bundle));
            }
            if (bundle.getFragments().length > 0) {
                folders.add(new Folder(9, bundle));
            }
            return folders.toArray();
        }
        this.isInExtensionSet = false;
        if (element instanceof Folder) {
            Folder folder = (Folder)element;
            this.isInExtensionSet = folder.getId() == 1;
            Object[] objs = folder.getChildren();
            if (folder.getId() == 8) {
                ModelObject[] result = new ModelObject[objs.length];
                Class<?> clazz = class$0;
                if (clazz == null) {
                    try {
                        clazz = class$0 = Class.forName("org.eclipse.jface.viewers.ILabelProvider");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                ILabelProvider labelProvider = (ILabelProvider)this.fRegistryBrowser.getAdapter(clazz);
                int i = 0;
                while (i < objs.length) {
                    result[i] = new Attribute("Bundle", labelProvider.getText(objs[i]));
                    ++i;
                }
                objs = result;
            }
            return objs;
        }
        if (element instanceof ConfigurationElement) {
            return ((ConfigurationElement)element).getElements();
        }
        if (element instanceof ExtensionPoint) {
            ExtensionPoint extensionPoint = (ExtensionPoint)element;
            Object[] objs = extensionPoint.getExtensions().toArray();
            return objs;
        }
        if (element instanceof ServiceName) {
            return ((ServiceName)element).getChildren();
        }
        if (element instanceof ServiceRegistration) {
            ServiceRegistration service = (ServiceRegistration)element;
            ArrayList<Folder> folders = new ArrayList<Folder>();
            if (service.getProperties().length > 0) {
                folders.add(new Folder(7, service));
            }
            if (service.getUsingBundleIds().length > 0) {
                folders.add(new Folder(8, service));
            }
            return folders.toArray();
        }
        if (element instanceof Object[]) {
            return (Object[])element;
        }
        return null;
    }

    public Object getParent(Object element) {
        if (!(element instanceof ModelObject)) {
            return null;
        }
        if (element instanceof Folder) {
            return ((Folder)element).getParent();
        }
        return null;
    }

    public boolean hasChildren(Object element) {
        if (element instanceof Bundle) {
            return true;
        }
        if (element instanceof ServiceRegistration) {
            return true;
        }
        Object[] children = this.getChildren(element);
        return children != null && children.length > 0;
    }

    public void inputChanged(Viewer viewer, Object oldInput, Object newInput) {
    }
}

