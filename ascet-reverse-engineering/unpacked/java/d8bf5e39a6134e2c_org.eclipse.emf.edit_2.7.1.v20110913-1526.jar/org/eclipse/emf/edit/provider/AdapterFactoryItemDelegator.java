/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.command.Command
 *  org.eclipse.emf.common.command.UnexecutableCommand
 *  org.eclipse.emf.common.notify.AdapterFactory
 *  org.eclipse.emf.common.util.EList
 */
package org.eclipse.emf.edit.provider;

import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.eclipse.emf.common.command.Command;
import org.eclipse.emf.common.command.UnexecutableCommand;
import org.eclipse.emf.common.notify.AdapterFactory;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.edit.command.CommandParameter;
import org.eclipse.emf.edit.domain.EditingDomain;
import org.eclipse.emf.edit.provider.IEditingDomainItemProvider;
import org.eclipse.emf.edit.provider.IItemColorProvider;
import org.eclipse.emf.edit.provider.IItemFontProvider;
import org.eclipse.emf.edit.provider.IItemLabelProvider;
import org.eclipse.emf.edit.provider.IItemPropertyDescriptor;
import org.eclipse.emf.edit.provider.IItemPropertySource;
import org.eclipse.emf.edit.provider.IStructuredItemContentProvider;
import org.eclipse.emf.edit.provider.ITableItemColorProvider;
import org.eclipse.emf.edit.provider.ITableItemFontProvider;
import org.eclipse.emf.edit.provider.ITableItemLabelProvider;
import org.eclipse.emf.edit.provider.ITreeItemContentProvider;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class AdapterFactoryItemDelegator
implements IEditingDomainItemProvider,
IItemLabelProvider,
IItemFontProvider,
IItemColorProvider,
IItemPropertySource,
IStructuredItemContentProvider,
ITableItemLabelProvider,
ITableItemColorProvider,
ITableItemFontProvider,
ITreeItemContentProvider {
    protected AdapterFactory adapterFactory;

    public AdapterFactoryItemDelegator(AdapterFactory adapterFactory) {
        this.adapterFactory = adapterFactory;
    }

    public AdapterFactory getAdapterFactory() {
        return this.adapterFactory;
    }

    @Override
    public String getText(Object object) {
        if (object instanceof EList) {
            StringBuffer result = new StringBuffer();
            for (Object child : (List)object) {
                if (result.length() != 0) {
                    result.append(", ");
                }
                result.append(this.getText(child));
            }
            return result.toString();
        }
        IItemLabelProvider itemLabelProvider = (IItemLabelProvider)this.adapterFactory.adapt(object, IItemLabelProvider.class);
        return itemLabelProvider != null ? itemLabelProvider.getText(object) : (object == null ? "" : object.toString());
    }

    @Override
    public Object getImage(Object object) {
        if (object instanceof EList) {
            Iterator iterator = ((List)object).iterator();
            if (iterator.hasNext()) {
                Object child = iterator.next();
                return this.getImage(child);
            }
            return null;
        }
        IItemLabelProvider itemLabelProvider = (IItemLabelProvider)this.adapterFactory.adapt(object, IItemLabelProvider.class);
        return itemLabelProvider != null ? itemLabelProvider.getImage(object) : null;
    }

    @Override
    public Object getFont(Object object) {
        if (object instanceof EList) {
            Iterator iterator = ((EList)object).iterator();
            if (iterator.hasNext()) {
                Object child = iterator.next();
                return this.getFont(child);
            }
            return null;
        }
        IItemFontProvider itemFontProvider = (IItemFontProvider)this.adapterFactory.adapt(object, IItemFontProvider.class);
        return itemFontProvider != null ? itemFontProvider.getFont(object) : null;
    }

    @Override
    public Object getForeground(Object object) {
        if (object instanceof EList) {
            Iterator iterator = ((EList)object).iterator();
            if (iterator.hasNext()) {
                Object child = iterator.next();
                return this.getForeground(child);
            }
            return null;
        }
        IItemColorProvider itemFontProvider = (IItemColorProvider)this.adapterFactory.adapt(object, IItemColorProvider.class);
        return itemFontProvider != null ? itemFontProvider.getForeground(object) : null;
    }

    @Override
    public Object getBackground(Object object) {
        if (object instanceof EList) {
            Iterator iterator = ((EList)object).iterator();
            if (iterator.hasNext()) {
                Object child = iterator.next();
                return this.getBackground(child);
            }
            return null;
        }
        IItemColorProvider itemFontProvider = (IItemColorProvider)this.adapterFactory.adapt(object, IItemColorProvider.class);
        return itemFontProvider != null ? itemFontProvider.getBackground(object) : null;
    }

    @Override
    public String getColumnText(Object object, int columnIndex) {
        ITableItemLabelProvider tableItemLabelProvider = (ITableItemLabelProvider)this.adapterFactory.adapt(object, ITableItemLabelProvider.class);
        if (tableItemLabelProvider != null) {
            return tableItemLabelProvider.getColumnText(object, columnIndex);
        }
        IItemLabelProvider itemLabelProvider = (IItemLabelProvider)this.adapterFactory.adapt(object, IItemLabelProvider.class);
        if (itemLabelProvider != null) {
            return itemLabelProvider.getText(object);
        }
        if (object != null) {
            return object.toString();
        }
        return "";
    }

    @Override
    public Object getColumnImage(Object object, int columnIndex) {
        ITableItemLabelProvider tableItemLabelProvider = (ITableItemLabelProvider)this.adapterFactory.adapt(object, ITableItemLabelProvider.class);
        Object result = null;
        if (tableItemLabelProvider != null) {
            result = tableItemLabelProvider.getColumnImage(object, columnIndex);
        } else {
            IItemLabelProvider itemLabelProvider = (IItemLabelProvider)this.adapterFactory.adapt(object, IItemLabelProvider.class);
            if (itemLabelProvider != null) {
                result = itemLabelProvider.getImage(object);
            }
        }
        return result;
    }

    @Override
    public Object getFont(Object object, int columnIndex) {
        ITableItemFontProvider tableItemFontProvider = (ITableItemFontProvider)this.adapterFactory.adapt(object, ITableItemFontProvider.class);
        Object result = null;
        if (tableItemFontProvider != null) {
            result = tableItemFontProvider.getFont(object, columnIndex);
        } else {
            IItemFontProvider itemFontProvider = (IItemFontProvider)this.adapterFactory.adapt(object, IItemFontProvider.class);
            if (itemFontProvider != null) {
                result = itemFontProvider.getFont(object);
            }
        }
        return result;
    }

    @Override
    public Object getForeground(Object object, int columnIndex) {
        ITableItemColorProvider tableItemColorProvider = (ITableItemColorProvider)this.adapterFactory.adapt(object, ITableItemColorProvider.class);
        Object result = null;
        if (tableItemColorProvider != null) {
            result = tableItemColorProvider.getForeground(object, columnIndex);
        } else {
            IItemColorProvider itemColorProvider = (IItemColorProvider)this.adapterFactory.adapt(object, IItemColorProvider.class);
            if (itemColorProvider != null) {
                result = itemColorProvider.getForeground(object);
            }
        }
        return result;
    }

    @Override
    public Object getBackground(Object object, int columnIndex) {
        ITableItemColorProvider tableItemColorProvider = (ITableItemColorProvider)this.adapterFactory.adapt(object, ITableItemColorProvider.class);
        Object result = null;
        if (tableItemColorProvider != null) {
            result = tableItemColorProvider.getBackground(object, columnIndex);
        } else {
            IItemColorProvider itemColorProvider = (IItemColorProvider)this.adapterFactory.adapt(object, IItemColorProvider.class);
            if (itemColorProvider != null) {
                result = itemColorProvider.getBackground(object);
            }
        }
        return result;
    }

    @Override
    public List<IItemPropertyDescriptor> getPropertyDescriptors(Object object) {
        IItemPropertySource itemPropertySource = (IItemPropertySource)this.adapterFactory.adapt(object, IItemPropertySource.class);
        return itemPropertySource != null ? itemPropertySource.getPropertyDescriptors(object) : null;
    }

    @Override
    public IItemPropertyDescriptor getPropertyDescriptor(Object object, Object propertyId) {
        IItemPropertySource itemPropertySource = (IItemPropertySource)this.adapterFactory.adapt(object, IItemPropertySource.class);
        return itemPropertySource != null ? itemPropertySource.getPropertyDescriptor(object, propertyId) : null;
    }

    @Override
    public Object getEditableValue(Object object) {
        IItemPropertySource itemPropertySource = (IItemPropertySource)this.adapterFactory.adapt(object, IItemPropertySource.class);
        return itemPropertySource != null ? itemPropertySource.getEditableValue(object) : object;
    }

    @Override
    public Collection<?> getElements(Object object) {
        IStructuredItemContentProvider structuredItemContentProvider = (IStructuredItemContentProvider)this.adapterFactory.adapt(object, IStructuredItemContentProvider.class);
        return structuredItemContentProvider != null ? structuredItemContentProvider.getElements(object) : Collections.emptyList();
    }

    @Override
    public Collection<?> getChildren(Object object) {
        ITreeItemContentProvider treeItemContentProvider = (ITreeItemContentProvider)this.adapterFactory.adapt(object, ITreeItemContentProvider.class);
        return treeItemContentProvider != null ? treeItemContentProvider.getChildren(object) : Collections.emptyList();
    }

    @Override
    public boolean hasChildren(Object object) {
        ITreeItemContentProvider treeItemContentProvider = (ITreeItemContentProvider)this.adapterFactory.adapt(object, ITreeItemContentProvider.class);
        return treeItemContentProvider != null && treeItemContentProvider.hasChildren(object);
    }

    @Override
    public Object getParent(Object object) {
        ITreeItemContentProvider treeItemContentProvider = (ITreeItemContentProvider)this.adapterFactory.adapt(object, ITreeItemContentProvider.class);
        return treeItemContentProvider != null ? treeItemContentProvider.getParent(object) : null;
    }

    @Override
    public Collection<?> getNewChildDescriptors(Object object, EditingDomain editingDomain, Object sibling) {
        IEditingDomainItemProvider editingDomainItemProvider = (IEditingDomainItemProvider)this.adapterFactory.adapt(object, IEditingDomainItemProvider.class);
        return editingDomainItemProvider != null ? editingDomainItemProvider.getNewChildDescriptors(object, editingDomain, sibling) : Collections.emptyList();
    }

    @Override
    public Command createCommand(Object object, EditingDomain editingDomain, Class<? extends Command> commandClass, CommandParameter commandParameter) {
        IEditingDomainItemProvider editingDomainItemProvider = (IEditingDomainItemProvider)this.adapterFactory.adapt(object, IEditingDomainItemProvider.class);
        return editingDomainItemProvider != null ? editingDomainItemProvider.createCommand(object, editingDomain, commandClass, commandParameter) : UnexecutableCommand.INSTANCE;
    }
}

