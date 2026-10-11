/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.command.Command
 *  org.eclipse.emf.common.command.CommandWrapper
 *  org.eclipse.emf.common.command.UnexecutableCommand
 *  org.eclipse.emf.common.notify.AdapterFactory
 *  org.eclipse.emf.common.util.ResourceLocator
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EStructuralFeature
 */
package org.eclipse.emf.edit.provider;

import java.util.Collection;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.command.Command;
import org.eclipse.emf.common.command.CommandWrapper;
import org.eclipse.emf.common.command.UnexecutableCommand;
import org.eclipse.emf.common.notify.AdapterFactory;
import org.eclipse.emf.common.util.ResourceLocator;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.edit.EMFEditPlugin;
import org.eclipse.emf.edit.command.AbstractOverrideableCommand;
import org.eclipse.emf.edit.command.CommandParameter;
import org.eclipse.emf.edit.command.CopyCommand;
import org.eclipse.emf.edit.command.DragAndDropCommand;
import org.eclipse.emf.edit.command.SetCommand;
import org.eclipse.emf.edit.domain.EditingDomain;
import org.eclipse.emf.edit.provider.ComposeableAdapterFactory;
import org.eclipse.emf.edit.provider.IEditingDomainItemProvider;
import org.eclipse.emf.edit.provider.IItemPropertyDescriptor;
import org.eclipse.emf.edit.provider.ITreeItemContentProvider;
import org.eclipse.emf.edit.provider.IWrapperItemProvider;
import org.eclipse.emf.edit.provider.ItemPropertyDescriptor;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class WrapperItemProvider
implements IWrapperItemProvider {
    protected Object value;
    protected Object owner;
    protected EStructuralFeature feature;
    protected int index;
    protected AdapterFactory adapterFactory;
    protected static final String COPY_COMMAND_LABEL = EMFEditPlugin.INSTANCE.getString("_UI_CopyCommand_label");
    protected static final String COPY_COMMAND_DESCRIPTION = EMFEditPlugin.INSTANCE.getString("_UI_CopyCommand_description");

    public WrapperItemProvider(Object value, Object owner, EStructuralFeature feature, int index, AdapterFactory adapterFactory) {
        this.value = value;
        this.owner = owner;
        this.feature = feature;
        this.index = index;
        this.adapterFactory = adapterFactory;
    }

    @Override
    public void dispose() {
    }

    @Override
    public Object getValue() {
        return this.value;
    }

    @Override
    public Object getOwner() {
        return this.owner;
    }

    @Override
    public EStructuralFeature getFeature() {
        return this.feature;
    }

    @Override
    public int getIndex() {
        return this.index;
    }

    @Override
    public void setIndex(int index) {
        this.index = index;
    }

    public Collection<?> getElements(Object object) {
        return this.getChildren(object);
    }

    public Collection<?> getChildren(Object object) {
        return Collections.emptyList();
    }

    public boolean hasChildren(Object object) {
        return !this.getChildren(object).isEmpty();
    }

    public Object getParent(Object object) {
        return this.owner;
    }

    public String getText(Object object) {
        return this.value != null ? this.value.toString() : "null";
    }

    public Object getImage(Object object) {
        return EMFEditPlugin.INSTANCE.getImage("full/obj16/Item");
    }

    public Object getFont(Object object) {
        return null;
    }

    public Object getForeground(Object object) {
        return null;
    }

    public Object getBackground(Object object) {
        return null;
    }

    public String getUpdateableText(Object object) {
        return this.getText(object);
    }

    public List<IItemPropertyDescriptor> getPropertyDescriptors(Object object) {
        return Collections.emptyList();
    }

    public IItemPropertyDescriptor getPropertyDescriptor(Object object, Object propertyId) {
        for (IItemPropertyDescriptor descriptor : this.getPropertyDescriptors(object)) {
            if (!propertyId.equals(descriptor.getId(object)) && !propertyId.equals(descriptor.getFeature(object))) continue;
            return descriptor;
        }
        return null;
    }

    public Object getEditableValue(Object object) {
        return this.value;
    }

    protected String getPropertyName() {
        return EMFEditPlugin.INSTANCE.getString("_UI_ValueProperty_name");
    }

    protected String getPropertyDescription() {
        return EMFEditPlugin.INSTANCE.getString("_UI_ValueProperty_description");
    }

    protected boolean isPropertySettable() {
        return this.feature.isChangeable();
    }

    protected boolean isPropertyMultiLine() {
        return false;
    }

    protected boolean isPropertySortChoices() {
        return false;
    }

    protected Object getPropertyImage() {
        return this.getPropertyImage(this.feature.getEType().getInstanceClass());
    }

    protected Object getPropertyImage(Class<?> typeClass) {
        if (typeClass == Boolean.TYPE || typeClass == Boolean.class) {
            return ItemPropertyDescriptor.BOOLEAN_VALUE_IMAGE;
        }
        if (typeClass == Byte.TYPE || typeClass == Byte.class || typeClass == Integer.TYPE || typeClass == Integer.class || typeClass == Long.TYPE || typeClass == Long.class || typeClass == Short.TYPE || typeClass == Short.class) {
            return ItemPropertyDescriptor.INTEGRAL_VALUE_IMAGE;
        }
        if (typeClass == Character.TYPE || typeClass == Character.class || typeClass == String.class) {
            return ItemPropertyDescriptor.TEXT_VALUE_IMAGE;
        }
        if (typeClass == Double.TYPE || typeClass == Double.class || typeClass == Float.TYPE || typeClass == Float.class) {
            return ItemPropertyDescriptor.REAL_VALUE_IMAGE;
        }
        return ItemPropertyDescriptor.GENERIC_VALUE_IMAGE;
    }

    protected String getPropertyCategory() {
        return null;
    }

    protected String[] getPropertyFilterFlags() {
        return null;
    }

    public Collection<?> getNewChildDescriptors(Object object, EditingDomain editingDomain, Object sibling) {
        return Collections.emptyList();
    }

    public Command createCommand(Object object, EditingDomain domain, Class<? extends Command> commandClass, CommandParameter commandParameter) {
        return this.baseCreateCommand(object, domain, commandClass, commandParameter);
    }

    public Command baseCreateCommand(Object object, EditingDomain domain, Class<? extends Command> commandClass, CommandParameter commandParameter) {
        if (commandClass == SetCommand.class) {
            return this.createSetCommand(domain, commandParameter.getOwner(), commandParameter.getFeature(), commandParameter.getValue(), commandParameter.getIndex());
        }
        if (commandClass == CopyCommand.class) {
            return this.createCopyCommand(domain, commandParameter.getOwner(), (CopyCommand.Helper)commandParameter.getValue());
        }
        if (commandClass == DragAndDropCommand.class) {
            DragAndDropCommand.Detail detail = (DragAndDropCommand.Detail)commandParameter.getFeature();
            return this.createDragAndDropCommand(domain, commandParameter.getOwner(), detail.location, detail.operations, detail.operation, commandParameter.getCollection());
        }
        return UnexecutableCommand.INSTANCE;
    }

    protected Command createSetCommand(EditingDomain domain, Object owner, Object feature, Object value, int index) {
        return UnexecutableCommand.INSTANCE;
    }

    protected Command createCopyCommand(EditingDomain domain, Object owner, CopyCommand.Helper helper) {
        return UnexecutableCommand.INSTANCE;
    }

    protected Command createDragAndDropCommand(EditingDomain domain, Object owner, float location, int operations, int operation, Collection<?> collection) {
        return new DragAndDropCommand(domain, owner, location, operations, operation, collection);
    }

    protected AdapterFactory getRootAdapterFactory() {
        return this.adapterFactory instanceof ComposeableAdapterFactory ? ((ComposeableAdapterFactory)this.adapterFactory).getRootAdapterFactory() : this.adapterFactory;
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    protected class ReplacementAffectedObjectCommand
    extends CommandWrapper {
        public ReplacementAffectedObjectCommand(Command command) {
            super(command);
        }

        public Collection<?> getAffectedObjects() {
            Collection<Object> children = Collections.EMPTY_LIST;
            Object adapter = WrapperItemProvider.this.adapterFactory.adapt(WrapperItemProvider.this.owner, IEditingDomainItemProvider.class);
            if (adapter instanceof IEditingDomainItemProvider) {
                children = ((IEditingDomainItemProvider)adapter).getChildren(WrapperItemProvider.this.owner);
            } else {
                adapter = WrapperItemProvider.this.adapterFactory.adapt(WrapperItemProvider.this.owner, ITreeItemContentProvider.class);
                if (adapter instanceof ITreeItemContentProvider) {
                    children = ((ITreeItemContentProvider)adapter).getChildren(WrapperItemProvider.this.owner);
                }
            }
            for (Object child : children) {
                IWrapperItemProvider wrapper;
                if (!(child instanceof IWrapperItemProvider) || (wrapper = (IWrapperItemProvider)child).getFeature() != WrapperItemProvider.this.feature || wrapper.getIndex() != WrapperItemProvider.this.index) continue;
                return Collections.singletonList(child);
            }
            return Collections.EMPTY_LIST;
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    protected abstract class SimpleCopyCommand
    extends AbstractOverrideableCommand {
        protected Collection<?> result;
        protected Collection<?> affectedObjects;

        public SimpleCopyCommand(EditingDomain domain) {
            super(domain, COPY_COMMAND_LABEL, COPY_COMMAND_DESCRIPTION);
            this.result = Collections.EMPTY_LIST;
        }

        protected boolean prepare() {
            return true;
        }

        @Override
        public void doExecute() {
            IWrapperItemProvider copy = this.copy();
            copy.dispose();
            this.result = Collections.singletonList(copy);
        }

        public abstract IWrapperItemProvider copy();

        @Override
        public void doUndo() {
        }

        @Override
        public void doRedo() {
        }

        @Override
        public Collection<?> doGetResult() {
            return this.result;
        }

        @Override
        public Collection<?> doGetAffectedObjects() {
            if (this.affectedObjects == null) {
                this.affectedObjects = Collections.singletonList(WrapperItemProvider.this);
            }
            return this.affectedObjects;
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    protected class WrapperItemPropertyDescriptor
    extends ItemPropertyDescriptor {
        public WrapperItemPropertyDescriptor(ResourceLocator resourceLocator, EStructuralFeature feature) {
            super(WrapperItemProvider.this.adapterFactory, resourceLocator, WrapperItemProvider.this.getPropertyName(), WrapperItemProvider.this.getPropertyDescription(), feature, WrapperItemProvider.this.isPropertySettable(), WrapperItemProvider.this.isPropertyMultiLine(), WrapperItemProvider.this.isPropertySortChoices(), WrapperItemProvider.this.getPropertyImage(), WrapperItemProvider.this.getPropertyCategory(), WrapperItemProvider.this.getPropertyFilterFlags());
        }

        @Override
        public Object getPropertyValue(Object object) {
            return super.getPropertyValue(WrapperItemProvider.this.owner);
        }

        @Override
        public boolean canSetProperty(Object object) {
            return super.canSetProperty(WrapperItemProvider.this.owner);
        }

        @Override
        public boolean isPropertySet(Object object) {
            return true;
        }

        @Override
        public void resetPropertyValue(Object object) {
        }

        @Override
        public void setPropertyValue(Object object, Object value) {
            EObject eObject = (EObject)WrapperItemProvider.this.owner;
            EditingDomain editingDomain = this.getEditingDomain(WrapperItemProvider.this.owner);
            if (editingDomain == null) {
                this.setValue(eObject, this.feature, value);
            } else {
                editingDomain.getCommandStack().execute(this.createSetCommand(editingDomain, eObject, this.feature, value));
            }
        }

        @Override
        protected Object getValue(EObject object, EStructuralFeature feature) {
            Object result = ((EObject)WrapperItemProvider.this.owner).eGet(feature);
            if (feature.isMany()) {
                List list = (List)result;
                result = WrapperItemProvider.this.index >= 0 && WrapperItemProvider.this.index < list.size() ? list.get(WrapperItemProvider.this.index) : WrapperItemProvider.this.value;
            }
            return result;
        }

        protected void setValue(EObject object, EStructuralFeature feature, Object value) {
            if (feature.isMany()) {
                List list = (List)object.eGet(feature);
                list.set(WrapperItemProvider.this.index, value);
            } else {
                object.eSet(feature, value);
            }
        }

        protected Command createSetCommand(EditingDomain domain, Object owner, Object feature, Object value) {
            return SetCommand.create(domain, this.getCommandOwner(WrapperItemProvider.this), null, value);
        }

        @Override
        public boolean isMany(Object object) {
            return false;
        }

        @Override
        public Collection<?> getChoiceOfValues(Object object) {
            return super.getChoiceOfValues(WrapperItemProvider.this.owner);
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    protected abstract class WrappingCopyCommand
    extends CommandWrapper {
        protected Collection<?> result;
        protected Collection<?> affectedObjects;

        public WrappingCopyCommand(Command command) {
            super(command);
            this.result = Collections.EMPTY_LIST;
        }

        public void execute() {
            super.execute();
            IWrapperItemProvider copy = this.copy();
            copy.dispose();
            this.result = Collections.singletonList(copy);
        }

        public abstract IWrapperItemProvider copy();

        public Collection<?> getResult() {
            return this.result;
        }

        public Collection<?> getAffectedObjects() {
            if (this.affectedObjects == null) {
                this.affectedObjects = Collections.singletonList(WrapperItemProvider.this);
            }
            return this.affectedObjects;
        }
    }
}

