/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.command.Command
 *  org.eclipse.emf.common.command.CommandStack
 *  org.eclipse.emf.common.command.CompoundCommand
 *  org.eclipse.emf.common.command.UnexecutableCommand
 *  org.eclipse.emf.common.notify.AdapterFactory
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterImpl
 *  org.eclipse.emf.common.util.AbstractTreeIterator
 *  org.eclipse.emf.common.util.TreeIterator
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.common.util.UniqueEList
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.ecore.resource.ResourceSet
 *  org.eclipse.emf.ecore.resource.impl.ResourceSetImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.FeatureMap$Entry
 */
package org.eclipse.emf.edit.domain;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import org.eclipse.emf.common.command.Command;
import org.eclipse.emf.common.command.CommandStack;
import org.eclipse.emf.common.command.CompoundCommand;
import org.eclipse.emf.common.command.UnexecutableCommand;
import org.eclipse.emf.common.notify.AdapterFactory;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterImpl;
import org.eclipse.emf.common.util.AbstractTreeIterator;
import org.eclipse.emf.common.util.TreeIterator;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.common.util.UniqueEList;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.ResourceSet;
import org.eclipse.emf.ecore.resource.impl.ResourceSetImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.FeatureMap;
import org.eclipse.emf.edit.EMFEditPlugin;
import org.eclipse.emf.edit.command.CommandParameter;
import org.eclipse.emf.edit.command.CopyToClipboardCommand;
import org.eclipse.emf.edit.command.CreateChildCommand;
import org.eclipse.emf.edit.command.CutToClipboardCommand;
import org.eclipse.emf.edit.command.DeleteCommand;
import org.eclipse.emf.edit.command.OverrideableCommand;
import org.eclipse.emf.edit.command.PasteFromClipboardCommand;
import org.eclipse.emf.edit.command.RemoveCommand;
import org.eclipse.emf.edit.command.ReplaceCommand;
import org.eclipse.emf.edit.domain.EditingDomain;
import org.eclipse.emf.edit.domain.IEditingDomainProvider;
import org.eclipse.emf.edit.provider.IEditingDomainItemProvider;
import org.eclipse.emf.edit.provider.IWrapperItemProvider;
import org.eclipse.emf.edit.provider.ItemProviderAdapter;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class AdapterFactoryEditingDomain
implements EditingDomain {
    protected AdapterFactory adapterFactory;
    protected CommandStack commandStack;
    protected ResourceSet resourceSet;
    protected Collection<Object> clipboard;
    protected boolean optimizeCopy = true;
    protected Map<Resource, Boolean> resourceToReadOnlyMap;

    public static boolean isStale(Object object) {
        if (object instanceof IWrapperItemProvider) {
            IWrapperItemProvider wrapper = (IWrapperItemProvider)object;
            return AdapterFactoryEditingDomain.isStale(wrapper.getValue()) || AdapterFactoryEditingDomain.isStale(wrapper.getOwner());
        }
        if (object instanceof Collection) {
            for (Object item : (Collection)object) {
                if (!AdapterFactoryEditingDomain.isStale(item)) continue;
                return true;
            }
            return false;
        }
        if (object instanceof Object[]) {
            Object[] objectArray = (Object[])object;
            int n = objectArray.length;
            int n2 = 0;
            while (n2 < n) {
                Object item = objectArray[n2];
                if (AdapterFactoryEditingDomain.isStale(item)) {
                    return true;
                }
                ++n2;
            }
            return false;
        }
        if (object instanceof EObject) {
            EObject eObject = (EObject)object;
            return eObject.eIsProxy() && eObject.eAdapters().isEmpty();
        }
        if (object instanceof FeatureMap.Entry) {
            return AdapterFactoryEditingDomain.isStale(((FeatureMap.Entry)object).getValue());
        }
        if (object == null) {
            return false;
        }
        Class<?> objectClass = object.getClass();
        try {
            Method method = objectClass.getMethod("toArray", new Class[0]);
            return AdapterFactoryEditingDomain.isStale(method.invoke(object, new Object[0]));
        }
        catch (Exception exception) {
            return false;
        }
    }

    public static EditingDomain getEditingDomainFor(EObject object) {
        Resource resource = object.eResource();
        if (resource != null) {
            IEditingDomainProvider editingDomainProvider = (IEditingDomainProvider)EcoreUtil.getExistingAdapter((Notifier)resource, IEditingDomainProvider.class);
            if (editingDomainProvider != null) {
                return editingDomainProvider.getEditingDomain();
            }
            ResourceSet resourceSet = resource.getResourceSet();
            if (resourceSet instanceof IEditingDomainProvider) {
                EditingDomain editingDomain = ((IEditingDomainProvider)resourceSet).getEditingDomain();
                return editingDomain;
            }
            if (resourceSet != null && (editingDomainProvider = (IEditingDomainProvider)EcoreUtil.getExistingAdapter((Notifier)resourceSet, IEditingDomainProvider.class)) != null) {
                return editingDomainProvider.getEditingDomain();
            }
        }
        return null;
    }

    public static EditingDomain getEditingDomainFor(Object object) {
        if (object instanceof IEditingDomainProvider) {
            EditingDomain editingDomain = ((IEditingDomainProvider)object).getEditingDomain();
            return editingDomain;
        }
        if (object instanceof EObject) {
            EditingDomain editingDomain = AdapterFactoryEditingDomain.getEditingDomainFor((EObject)object);
            return editingDomain;
        }
        if (object instanceof FeatureMap.Entry) {
            return AdapterFactoryEditingDomain.getEditingDomainFor(((FeatureMap.Entry)object).getValue());
        }
        if (object instanceof IWrapperItemProvider) {
            return AdapterFactoryEditingDomain.getEditingDomainFor(((IWrapperItemProvider)object).getValue());
        }
        return null;
    }

    public static IEditingDomainItemProvider getEditingDomainItemProviderFor(Object object) {
        EObject eObject;
        EditingDomain editingDomain;
        if (object instanceof EObject && (editingDomain = AdapterFactoryEditingDomain.getEditingDomainFor(eObject = (EObject)object)) instanceof AdapterFactoryEditingDomain) {
            object = ((AdapterFactoryEditingDomain)editingDomain).getAdapterFactory().adapt((Notifier)eObject, IEditingDomainItemProvider.class);
        }
        return object instanceof IEditingDomainItemProvider ? (IEditingDomainItemProvider)object : (object instanceof IWrapperItemProvider ? AdapterFactoryEditingDomain.getEditingDomainItemProviderFor(((IWrapperItemProvider)object).getValue()) : (object instanceof FeatureMap.Entry ? AdapterFactoryEditingDomain.getEditingDomainItemProviderFor(((FeatureMap.Entry)object).getValue()) : null));
    }

    public AdapterFactoryEditingDomain(AdapterFactory adapterFactory, CommandStack commandStack) {
        this.adapterFactory = adapterFactory;
        this.commandStack = commandStack;
        this.resourceSet = new AdapterFactoryEditingDomainResourceSet();
    }

    public AdapterFactoryEditingDomain(AdapterFactory adapterFactory, CommandStack commandStack, Map<Resource, Boolean> resourceToReadOnlyMap) {
        this.adapterFactory = adapterFactory;
        this.commandStack = commandStack;
        this.resourceSet = new AdapterFactoryEditingDomainResourceSet();
        this.resourceToReadOnlyMap = resourceToReadOnlyMap;
    }

    public AdapterFactoryEditingDomain(AdapterFactory adapterFactory, CommandStack commandStack, ResourceSet resourceSet) {
        this.adapterFactory = adapterFactory;
        this.commandStack = commandStack;
        this.resourceSet = resourceSet;
    }

    public AdapterFactory getAdapterFactory() {
        return this.adapterFactory;
    }

    public void setAdapterFactory(AdapterFactory adapterFactory) {
        this.adapterFactory = adapterFactory;
    }

    @Override
    public Resource createResource(String fileNameURI) {
        URI uri = URI.createURI((String)fileNameURI);
        Resource resource = this.resourceSet.createResource(uri);
        return resource;
    }

    @Override
    public Resource loadResource(String fileNameURI) {
        try {
            Resource resource = this.resourceSet.getResource(URI.createURI((String)fileNameURI), true);
            return resource;
        }
        catch (Exception exception) {
            EMFEditPlugin.INSTANCE.log(exception);
            return null;
        }
    }

    @Override
    public ResourceSet getResourceSet() {
        return this.resourceSet;
    }

    @Override
    public Command createCommand(Class<? extends Command> commandClass, CommandParameter commandParameter) {
        Object owner = commandParameter.getOwner();
        if (commandClass == CopyToClipboardCommand.class) {
            return new CopyToClipboardCommand((EditingDomain)this, commandParameter.getCollection());
        }
        if (commandClass == PasteFromClipboardCommand.class) {
            return new PasteFromClipboardCommand(this, commandParameter.getOwner(), commandParameter.getFeature(), commandParameter.getIndex(), this.getOptimizeCopy());
        }
        if (commandClass == CutToClipboardCommand.class) {
            return new CutToClipboardCommand(this, RemoveCommand.create((EditingDomain)this, commandParameter.getOwner(), commandParameter.getFeature(), commandParameter.getCollection()));
        }
        if (commandClass == DeleteCommand.class) {
            return new DeleteCommand(this, commandParameter.getCollection());
        }
        if (owner != null) {
            IEditingDomainItemProvider editingDomainItemProvider = (IEditingDomainItemProvider)this.adapterFactory.adapt(owner, IEditingDomainItemProvider.class);
            return editingDomainItemProvider != null ? editingDomainItemProvider.createCommand(owner, this, commandClass, commandParameter) : new ItemProviderAdapter(null).createCommand(owner, this, commandClass, commandParameter);
        }
        if (commandClass == RemoveCommand.class) {
            CompoundCommand removeCommand = new CompoundCommand(Integer.MAX_VALUE);
            ArrayList objects = new ArrayList(commandParameter.getCollection());
            while (!objects.isEmpty()) {
                ListIterator remainingObjects = objects.listIterator();
                Object object = remainingObjects.next();
                remainingObjects.remove();
                Object parent = this.getParent(object);
                if (parent != null) {
                    ArrayList siblings = new ArrayList();
                    siblings.add(object);
                    while (remainingObjects.hasNext()) {
                        Object otherObject = remainingObjects.next();
                        Object otherParent = this.getParent(otherObject);
                        if (otherParent != parent) continue;
                        remainingObjects.remove();
                        siblings.add(otherObject);
                    }
                    removeCommand.append(this.createCommand(RemoveCommand.class, new CommandParameter(parent, null, siblings)));
                    continue;
                }
                if (object == null) continue;
                removeCommand.append(this.createCommand(RemoveCommand.class, new CommandParameter(object, null, Collections.singleton(object))));
            }
            return removeCommand.unwrap();
        }
        if (commandClass == ReplaceCommand.class) {
            Object parent;
            Object obj = commandParameter.getValue();
            Object object = parent = obj == null ? null : this.getParent(obj);
            if (parent == null) {
                parent = obj;
            }
            return this.createCommand(ReplaceCommand.class, new CommandParameter(parent, null, obj, commandParameter.getCollection()));
        }
        if (commandClass == CreateChildCommand.class) {
            Object parent;
            Collection<?> sel = commandParameter.getCollection();
            Object object = parent = sel == null ? null : this.getParent(sel.iterator().next());
            if (parent == null) {
                return UnexecutableCommand.INSTANCE;
            }
            return this.createCommand(CreateChildCommand.class, new CommandParameter(parent, commandParameter.getFeature(), commandParameter.getValue(), commandParameter.getCollection(), commandParameter.getIndex()));
        }
        try {
            Constructor<? extends Command> constructor = commandClass.getConstructor(EditingDomain.class, CommandParameter.class);
            Command command = constructor.newInstance(this, commandParameter);
            return command;
        }
        catch (IllegalAccessException illegalAccessException) {
        }
        catch (InstantiationException instantiationException) {
        }
        catch (NoSuchMethodException noSuchMethodException) {
        }
        catch (InvocationTargetException invocationTargetException) {
            // empty catch block
        }
        return UnexecutableCommand.INSTANCE;
    }

    @Override
    public Command createOverrideCommand(OverrideableCommand command) {
        return null;
    }

    @Override
    public CommandStack getCommandStack() {
        return this.commandStack;
    }

    @Override
    public Collection<?> getChildren(Object object) {
        IEditingDomainItemProvider editingDomainItemProvider = (IEditingDomainItemProvider)this.adapterFactory.adapt(object, IEditingDomainItemProvider.class);
        return editingDomainItemProvider != null ? editingDomainItemProvider.getChildren(object) : Collections.emptyList();
    }

    @Override
    public Object getParent(Object object) {
        IEditingDomainItemProvider editingDomainItemProvider = (IEditingDomainItemProvider)this.adapterFactory.adapt(object, IEditingDomainItemProvider.class);
        return editingDomainItemProvider != null ? editingDomainItemProvider.getParent(object) : null;
    }

    @Override
    public Object getRoot(Object object) {
        Object result = object;
        Object parent = this.getParent(object);
        while (parent != null) {
            result = parent;
            parent = this.getParent(parent);
        }
        return result;
    }

    public List<?> resolve(Collection<?> objects) {
        UniqueEList result = new UniqueEList();
        for (Object object : objects) {
            if (AdapterFactoryEditingDomain.isStale(object)) {
                EObject resolvedEObject;
                Object unwrappedObject = AdapterFactoryEditingDomain.unwrap(object);
                if (!(unwrappedObject instanceof EObject) || (resolvedEObject = EcoreUtil.resolve((EObject)((EObject)unwrappedObject), (ResourceSet)this.resourceSet)) == unwrappedObject) continue;
                result.add(object instanceof IWrapperItemProvider ? this.getWrapper(resolvedEObject) : resolvedEObject);
                continue;
            }
            result.add(object);
        }
        return result;
    }

    public Object getWrapper(Object object) {
        return AdapterFactoryEditingDomain.getWrapper(object, this);
    }

    public static Object getWrapper(Object object, EditingDomain domain) {
        if (object != null) {
            TreeIterator<?> i = domain.treeIterator(domain.getRoot(object));
            while (i.hasNext()) {
                Object entryValue;
                Object element;
                Object elementValue = element = i.next();
                while (elementValue instanceof IWrapperItemProvider) {
                    elementValue = ((IWrapperItemProvider)elementValue).getValue();
                }
                if (elementValue == object) {
                    return element;
                }
                if (!(elementValue instanceof FeatureMap.Entry) || (entryValue = ((FeatureMap.Entry)elementValue).getValue()) != object) continue;
                return element;
            }
        }
        return object;
    }

    public static Object unwrap(Object object) {
        while (object instanceof IWrapperItemProvider) {
            object = ((IWrapperItemProvider)object).getValue();
        }
        if (object instanceof FeatureMap.Entry) {
            object = ((FeatureMap.Entry)object).getValue();
        }
        return object;
    }

    @Override
    public Collection<?> getNewChildDescriptors(Object object, Object sibling) {
        IEditingDomainItemProvider editingDomainItemProvider;
        if (object == null) {
            object = this.getParent(sibling);
        }
        return (editingDomainItemProvider = (IEditingDomainItemProvider)this.adapterFactory.adapt(object, IEditingDomainItemProvider.class)) != null ? editingDomainItemProvider.getNewChildDescriptors(object, this, sibling) : Collections.emptyList();
    }

    @Override
    public Collection<Object> getClipboard() {
        return this.clipboard;
    }

    @Override
    public void setClipboard(Collection<Object> clipboard) {
        this.clipboard = clipboard;
    }

    @Override
    public boolean getOptimizeCopy() {
        return this.optimizeCopy;
    }

    public void setOptimizeCopy(boolean optimizeCopy) {
        this.optimizeCopy = optimizeCopy;
    }

    public Map<Resource, Boolean> getResourceToReadOnlyMap() {
        return this.resourceToReadOnlyMap;
    }

    public void setResourceToReadOnlyMap(Map<Resource, Boolean> resourceToReadOnlyMap) {
        this.resourceToReadOnlyMap = resourceToReadOnlyMap;
    }

    @Override
    public boolean isReadOnly(Resource resource) {
        if (this.resourceToReadOnlyMap == null) {
            return false;
        }
        Boolean result = this.resourceToReadOnlyMap.get(resource);
        if (result == null && resource != null) {
            Map attributes = (resource.getResourceSet() == null ? this.resourceSet : resource.getResourceSet()).getURIConverter().getAttributes(resource.getURI(), null);
            result = Boolean.TRUE.equals(attributes.get("readOnly"));
            this.resourceToReadOnlyMap.put(resource, result);
        }
        return Boolean.TRUE.equals(result);
    }

    @Deprecated
    protected boolean isReadOnlyURI(URI uri) {
        if (uri.isArchive()) {
            return this.isReadOnlyURI(URI.createURI((String)uri.authority()));
        }
        return !uri.isPlatformResource() && (uri.isRelative() || !uri.isFile());
    }

    @Override
    public TreeIterator<?> treeIterator(Object object) {
        return new DomainTreeIterator<Object>(this, object);
    }

    @Override
    public List<?> getTreePath(Object object) {
        LinkedList<Object> result = new LinkedList<Object>();
        result.addFirst(object);
        while ((object = this.getParent(object)) != null) {
            result.addFirst(object);
        }
        return result;
    }

    @Override
    public boolean isControllable(Object object) {
        if (!(object instanceof EObject)) {
            return false;
        }
        EObject eObject = (EObject)object;
        EObject container = eObject.eContainer();
        return container != null && eObject.eContainmentFeature().isResolveProxies() && !this.isReadOnly(eObject.eResource()) && !this.isReadOnly(container.eResource());
    }

    public static boolean isControlled(Object object) {
        if (!(object instanceof EObject)) {
            return false;
        }
        EObject eObject = (EObject)object;
        EObject container = eObject.eContainer();
        Resource resource = eObject.eResource();
        return resource != null && container != null && resource != container.eResource();
    }

    protected class AdapterFactoryEditingDomainResourceSet
    extends ResourceSetImpl
    implements IEditingDomainProvider {
        public EditingDomain getEditingDomain() {
            return AdapterFactoryEditingDomain.this;
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static class DomainTreeIterator<E>
    extends AbstractTreeIterator<E> {
        private static final long serialVersionUID = 1L;
        protected EditingDomain domain;

        public DomainTreeIterator(EditingDomain domain, E object) {
            super(object);
            this.domain = domain;
        }

        public DomainTreeIterator(EditingDomain domain, Object object, boolean includeRoot) {
            super(object, includeRoot);
            this.domain = domain;
        }

        protected Iterator<E> getChildren(Object o) {
            return this.domain.getChildren(o).iterator();
        }
    }

    public static class EditingDomainProvider
    extends AdapterImpl
    implements IEditingDomainProvider {
        protected EditingDomain editingDomain;

        public EditingDomainProvider(EditingDomain editingDomain) {
            this.editingDomain = editingDomain;
        }

        public EditingDomain getEditingDomain() {
            return this.editingDomain;
        }

        public boolean isAdapterForType(Object type) {
            return type == IEditingDomainProvider.class;
        }
    }
}

