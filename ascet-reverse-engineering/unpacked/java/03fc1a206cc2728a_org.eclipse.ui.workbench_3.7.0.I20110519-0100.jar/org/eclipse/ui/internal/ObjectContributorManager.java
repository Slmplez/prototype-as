/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.IAdapterManager
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.dynamichelpers.ExtensionTracker
 *  org.eclipse.core.runtime.dynamichelpers.IExtensionChangeHandler
 *  org.eclipse.core.runtime.dynamichelpers.IExtensionTracker
 *  org.eclipse.jface.viewers.IStructuredSelection
 */
package org.eclipse.ui.internal;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IAdapterManager;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.dynamichelpers.ExtensionTracker;
import org.eclipse.core.runtime.dynamichelpers.IExtensionChangeHandler;
import org.eclipse.core.runtime.dynamichelpers.IExtensionTracker;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.IObjectContributor;
import org.eclipse.ui.internal.LegacyResourceSupport;
import org.eclipse.ui.internal.util.Util;

public abstract class ObjectContributorManager
implements IExtensionChangeHandler {
    protected Map contributors = new Hashtable(5);
    protected Map objectLookup = null;
    protected Map resourceAdapterLookup = null;
    protected Map adaptableLookup = null;
    protected Set contributorRecordSet = new HashSet(5);
    static /* synthetic */ Class class$0;

    public ObjectContributorManager() {
        String extensionPointId = this.getExtensionPointFilter();
        if (extensionPointId != null) {
            IExtensionPoint extensionPoint = Platform.getExtensionRegistry().getExtensionPoint("org.eclipse.ui", extensionPointId);
            IExtensionTracker tracker = PlatformUI.getWorkbench().getExtensionTracker();
            tracker.registerHandler((IExtensionChangeHandler)this, ExtensionTracker.createExtensionPointFilter((IExtensionPoint)extensionPoint));
        }
    }

    protected String getExtensionPointFilter() {
        return null;
    }

    private void addContributorsFor(List types, List result) {
        Iterator classes = types.iterator();
        while (classes.hasNext()) {
            Class clazz = (Class)classes.next();
            List contributorList = (List)this.contributors.get(clazz.getName());
            if (contributorList == null) continue;
            result.addAll(contributorList);
        }
    }

    protected final List computeClassOrder(Class extensibleClass) {
        ArrayList result = new ArrayList(4);
        Class clazz = extensibleClass;
        while (clazz != null) {
            result.add(clazz);
            clazz = clazz.getSuperclass();
        }
        return result;
    }

    protected final List computeInterfaceOrder(List classList) {
        ArrayList result = new ArrayList(4);
        HashMap seen = new HashMap(4);
        Iterator list = classList.iterator();
        while (list.hasNext()) {
            Class[] interfaces = ((Class)list.next()).getInterfaces();
            this.internalComputeInterfaceOrder(interfaces, result, seen);
        }
        return result;
    }

    public void flushLookup() {
        this.objectLookup = null;
        this.resourceAdapterLookup = null;
        this.adaptableLookup = null;
    }

    private void cacheResourceAdapterLookup(Class adapterClass, List results) {
        if (this.resourceAdapterLookup == null) {
            this.resourceAdapterLookup = new HashMap();
        }
        this.resourceAdapterLookup.put(adapterClass, results);
    }

    private void cacheAdaptableLookup(String adapterClass, List results) {
        if (this.adaptableLookup == null) {
            this.adaptableLookup = new HashMap();
        }
        this.adaptableLookup.put(adapterClass, results);
    }

    private void cacheObjectLookup(Class objectClass, List results) {
        if (this.objectLookup == null) {
            this.objectLookup = new HashMap();
        }
        this.objectLookup.put(objectClass, results);
    }

    public Collection getContributors() {
        return Collections.unmodifiableCollection(this.contributors.values());
    }

    protected List addContributorsFor(Class objectClass) {
        List classList = this.computeClassOrder(objectClass);
        ArrayList result = new ArrayList();
        this.addContributorsFor(classList, result);
        classList = this.computeInterfaceOrder(classList);
        this.addContributorsFor(classList, result);
        return result;
    }

    public boolean hasContributorsFor(Object object) {
        List contributors = this.getContributors(object);
        return contributors.size() > 0;
    }

    private void internalComputeInterfaceOrder(Class[] interfaces, List result, Map seen) {
        ArrayList<Class> newInterfaces = new ArrayList<Class>(seen.size());
        int i = 0;
        while (i < interfaces.length) {
            Class interfac = interfaces[i];
            if (seen.get(interfac) == null) {
                result.add(interfac);
                seen.put(interfac, interfac);
                newInterfaces.add(interfac);
            }
            ++i;
        }
        Iterator newList = newInterfaces.iterator();
        while (newList.hasNext()) {
            this.internalComputeInterfaceOrder(((Class)newList.next()).getInterfaces(), result, seen);
        }
    }

    public boolean isApplicableTo(IStructuredSelection selection, IObjectContributor contributor) {
        Iterator elements = selection.iterator();
        while (elements.hasNext()) {
            if (contributor.isApplicableTo(elements.next())) continue;
            return false;
        }
        return true;
    }

    public boolean isApplicableTo(List list, IObjectContributor contributor) {
        Iterator elements = list.iterator();
        while (elements.hasNext()) {
            if (contributor.isApplicableTo(elements.next())) continue;
            return false;
        }
        return true;
    }

    public void registerContributor(IObjectContributor contributor, String targetType) {
        IConfigurationElement element;
        ArrayList<IObjectContributor> contributorList = (ArrayList<IObjectContributor>)this.contributors.get(targetType);
        if (contributorList == null) {
            contributorList = new ArrayList<IObjectContributor>(5);
            this.contributors.put(targetType, contributorList);
        }
        contributorList.add(contributor);
        this.flushLookup();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.core.runtime.IConfigurationElement");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((element = (IConfigurationElement)Util.getAdapter(contributor, clazz)) != null) {
            ContributorRecord contributorRecord = new ContributorRecord(contributor, targetType);
            this.contributorRecordSet.add(contributorRecord);
            PlatformUI.getWorkbench().getExtensionTracker().registerObject(element.getDeclaringExtension(), (Object)contributorRecord, 2);
        }
    }

    public void unregisterAllContributors() {
        this.contributors = new Hashtable(5);
        this.flushLookup();
    }

    public void unregisterContributor(IObjectContributor contributor, String targetType) {
        List contributorList = (List)this.contributors.get(targetType);
        if (contributorList == null) {
            return;
        }
        contributorList.remove(contributor);
        if (contributorList.isEmpty()) {
            this.contributors.remove(targetType);
        }
        this.flushLookup();
    }

    public void unregisterContributors(String targetType) {
        this.contributors.remove(targetType);
        this.flushLookup();
    }

    protected List getContributors(Object object) {
        Object resource = LegacyResourceSupport.getAdaptedContributorResource(object);
        ArrayList<String> adapters = new ArrayList<String>(Arrays.asList(Platform.getAdapterManager().computeAdapterTypes(object.getClass())));
        this.removeCommonAdapters(adapters, Arrays.asList(object.getClass()));
        List contributors = new ArrayList();
        ObjectContributorManager.addAll(contributors, this.getObjectContributors(object.getClass()));
        if (resource != null) {
            ObjectContributorManager.addAll(contributors, this.getResourceContributors(resource.getClass()));
        }
        if (adapters != null) {
            Iterator it = adapters.iterator();
            while (it.hasNext()) {
                String adapter = (String)it.next();
                ObjectContributorManager.addAll(contributors, this.getAdaptableContributors(adapter));
            }
        }
        return (contributors = ObjectContributorManager.removeDups(contributors)).isEmpty() ? Collections.EMPTY_LIST : new ArrayList(contributors);
    }

    protected List getObjectContributors(Class objectClass) {
        List<Object> objectList = null;
        if (this.objectLookup != null) {
            objectList = (List)this.objectLookup.get(objectClass);
        }
        if (objectList == null) {
            objectList = this.addContributorsFor(objectClass);
            objectList = objectList.size() == 0 ? Collections.EMPTY_LIST : Collections.unmodifiableList(objectList);
            this.cacheObjectLookup(objectClass, objectList);
        }
        return objectList;
    }

    protected List getResourceContributors(Class resourceClass) {
        List<Object> resourceList = null;
        if (this.resourceAdapterLookup != null) {
            resourceList = (List)this.resourceAdapterLookup.get(resourceClass);
        }
        if (resourceList == null) {
            resourceList = this.addContributorsFor(resourceClass);
            resourceList = resourceList.size() == 0 ? Collections.EMPTY_LIST : Collections.unmodifiableList(this.filterOnlyAdaptableContributors(resourceList));
            this.cacheResourceAdapterLookup(resourceClass, resourceList);
        }
        return resourceList;
    }

    protected List getAdaptableContributors(String adapterType) {
        List<Object> adaptableList = null;
        if (this.adaptableLookup != null) {
            adaptableList = (List)this.adaptableLookup.get(adapterType);
        }
        if (adaptableList == null) {
            adaptableList = LegacyResourceSupport.isResourceType(adapterType) || LegacyResourceSupport.isResourceMappingType(adapterType) ? Collections.EMPTY_LIST : ((adaptableList = (List)this.contributors.get(adapterType)) == null || adaptableList.size() == 0 ? Collections.EMPTY_LIST : Collections.unmodifiableList(this.filterOnlyAdaptableContributors(adaptableList)));
            this.cacheAdaptableLookup(adapterType, adaptableList);
        }
        return adaptableList;
    }

    protected void removeCommonAdapters(List adapters, List results) {
        Iterator it = results.iterator();
        while (it.hasNext()) {
            Class clazz = (Class)it.next();
            List commonTypes = this.computeCombinedOrder(clazz);
            Iterator it2 = commonTypes.iterator();
            while (it2.hasNext()) {
                Class type = (Class)it2.next();
                adapters.remove(type.getName());
            }
        }
    }

    protected List computeCombinedOrder(Class inputClass) {
        ArrayList result = new ArrayList(4);
        Class clazz = inputClass;
        while (clazz != null) {
            result.add(clazz);
            Class<?>[] interfaces = clazz.getInterfaces();
            int i = 0;
            while (i < interfaces.length) {
                result.add(interfaces[i]);
                ++i;
            }
            clazz = clazz.getSuperclass();
        }
        return result;
    }

    private List filterOnlyAdaptableContributors(List contributors) {
        ArrayList<IObjectContributor> adaptableContributors = null;
        Iterator it = contributors.iterator();
        while (it.hasNext()) {
            IObjectContributor c = (IObjectContributor)it.next();
            if (!c.canAdapt()) continue;
            if (adaptableContributors == null) {
                adaptableContributors = new ArrayList<IObjectContributor>();
            }
            adaptableContributors.add(c);
        }
        return adaptableContributors == null ? Collections.EMPTY_LIST : adaptableContributors;
    }

    public void removeExtension(IExtension source, Object[] objects) {
        int i = 0;
        while (i < objects.length) {
            if (objects[i] instanceof ContributorRecord) {
                ContributorRecord contributorRecord = (ContributorRecord)objects[i];
                this.unregisterContributor(contributorRecord.contributor, contributorRecord.objectClassName);
                this.contributorRecordSet.remove(contributorRecord);
            }
            ++i;
        }
    }

    public void dispose() {
        if (this.getExtensionPointFilter() != null) {
            PlatformUI.getWorkbench().getExtensionTracker().unregisterHandler((IExtensionChangeHandler)this);
        }
    }

    protected List getContributors(List elements) {
        ArrayList commonAdapters = new ArrayList();
        List commonClasses = this.getCommonClasses(elements, commonAdapters);
        Class resourceClass = this.getCommonResourceClass(elements);
        Class resourceMappingClass = this.getResourceMappingClass(elements);
        List contributors = new ArrayList();
        if (resourceClass != null) {
            ObjectContributorManager.addAll(contributors, this.getResourceContributors(resourceClass));
        }
        if (commonClasses != null && !commonClasses.isEmpty()) {
            int i = 0;
            while (i < commonClasses.size()) {
                List results = this.getObjectContributors((Class)commonClasses.get(i));
                ObjectContributorManager.addAll(contributors, results);
                ++i;
            }
        }
        if (resourceMappingClass == null) {
            resourceMappingClass = LegacyResourceSupport.getResourceMappingClass();
            if (resourceMappingClass != null && commonAdapters.contains(resourceMappingClass.getName())) {
                ObjectContributorManager.addAll(contributors, this.getResourceContributors(resourceMappingClass));
            }
        } else {
            contributors.addAll(this.getResourceContributors(resourceMappingClass));
        }
        if (!commonAdapters.isEmpty()) {
            Iterator it = commonAdapters.iterator();
            while (it.hasNext()) {
                String adapter = (String)it.next();
                ObjectContributorManager.addAll(contributors, this.getAdaptableContributors(adapter));
            }
        }
        return (contributors = ObjectContributorManager.removeDups(contributors)).isEmpty() ? Collections.EMPTY_LIST : new ArrayList(contributors);
    }

    private static void addAll(Collection collection, List toAdd) {
        int i = 0;
        int size = toAdd.size();
        while (i < size) {
            collection.add(toAdd.get(i));
            ++i;
        }
    }

    private static List removeDups(List list) {
        if (list.size() <= 1) {
            return list;
        }
        HashSet set = new HashSet(list);
        if (set.size() == list.size()) {
            return list;
        }
        ArrayList result = new ArrayList(set.size());
        Iterator i = list.iterator();
        while (i.hasNext()) {
            Object o = i.next();
            if (!set.remove(o)) continue;
            result.add(o);
        }
        return result;
    }

    private List getCommonClasses(List objects, List commonAdapters) {
        if (objects == null || objects.size() == 0) {
            return null;
        }
        if (this.allSameClass(objects)) {
            Class<?> clazz = objects.get(0).getClass();
            commonAdapters.addAll(Arrays.asList(Platform.getAdapterManager().computeAdapterTypes(clazz)));
            ArrayList result = new ArrayList(1);
            result.add(clazz);
            return result;
        }
        List classes = this.computeClassOrder(objects.get(0).getClass());
        List adapters = this.computeAdapterOrder(classes);
        List interfaces = this.computeInterfaceOrder(classes);
        ArrayList lastCommonTypes = new ArrayList();
        boolean classesEmpty = classes.isEmpty();
        boolean interfacesEmpty = interfaces.isEmpty();
        int i = 1;
        while (i < objects.size()) {
            List otherAdapters;
            List otherClasses = this.computeClassOrder(objects.get(i).getClass());
            if (!classesEmpty) {
                classesEmpty = this.extractCommonClasses(classes, otherClasses);
            }
            List otherInterfaces = this.computeInterfaceOrder(otherClasses);
            if (!interfacesEmpty) {
                interfacesEmpty = this.extractCommonClasses(interfaces, otherInterfaces);
            }
            ArrayList classesAndInterfaces = new ArrayList(otherClasses);
            if (otherInterfaces != null) {
                classesAndInterfaces.addAll(otherInterfaces);
            }
            if ((otherAdapters = this.computeAdapterOrder(classesAndInterfaces)).isEmpty() && !adapters.isEmpty()) {
                this.removeNonCommonAdapters(adapters, classesAndInterfaces);
            } else if (adapters.isEmpty()) {
                this.removeNonCommonAdapters(otherAdapters, lastCommonTypes);
                if (!otherAdapters.isEmpty()) {
                    adapters.addAll(otherAdapters);
                }
            } else {
                Iterator it = adapters.iterator();
                while (it.hasNext()) {
                    String adapter = (String)it.next();
                    if (otherAdapters.contains(adapter)) continue;
                    it.remove();
                }
            }
            lastCommonTypes.clear();
            lastCommonTypes.addAll(classes);
            lastCommonTypes.addAll(interfaces);
            if (interfacesEmpty && classesEmpty && adapters.isEmpty()) {
                return null;
            }
            ++i;
        }
        ArrayList results = new ArrayList(4);
        ArrayList superClasses = new ArrayList(4);
        if (!classesEmpty) {
            int j = 0;
            while (j < classes.size()) {
                if (classes.get(j) != null) {
                    superClasses.add(classes.get(j));
                }
                ++j;
            }
            if (!superClasses.isEmpty()) {
                results.add(superClasses.get(0));
            }
        }
        if (!interfacesEmpty) {
            this.removeCommonInterfaces(superClasses, interfaces, results);
        }
        if (!adapters.isEmpty()) {
            this.removeCommonAdapters(adapters, results);
            commonAdapters.addAll(adapters);
        }
        return results;
    }

    private boolean allSameClass(List objects) {
        int size = objects.size();
        if (size <= 1) {
            return true;
        }
        Class<?> clazz = objects.get(0).getClass();
        int i = 1;
        while (i < size) {
            if (!objects.get(i).getClass().equals(clazz)) {
                return false;
            }
            ++i;
        }
        return true;
    }

    private boolean extractCommonClasses(List classes, List otherClasses) {
        boolean classesEmpty = true;
        if (otherClasses.isEmpty()) {
            classes.clear();
        } else {
            int j = 0;
            while (j < classes.size()) {
                if (classes.get(j) != null) {
                    classesEmpty = false;
                    if (!otherClasses.contains(classes.get(j))) {
                        classes.set(j, null);
                    }
                }
                ++j;
            }
        }
        return classesEmpty;
    }

    private void removeNonCommonAdapters(List adapters, List classes) {
        int i = 0;
        while (i < classes.size()) {
            Class clazz;
            String name;
            Object o = classes.get(i);
            if (o != null && adapters.contains(name = (clazz = (Class)o).getName())) {
                return;
            }
            ++i;
        }
        adapters.clear();
    }

    private void removeCommonInterfaces(List superClasses, List types, List results) {
        List dropInterfaces = null;
        if (!superClasses.isEmpty()) {
            dropInterfaces = this.computeInterfaceOrder(superClasses);
        }
        int j = 0;
        while (j < types.size()) {
            if (types.get(j) != null && dropInterfaces != null && !dropInterfaces.contains(types.get(j))) {
                results.add(types.get(j));
            }
            ++j;
        }
    }

    private List computeAdapterOrder(List classList) {
        HashSet<String> result = new HashSet<String>(4);
        IAdapterManager adapterMgr = Platform.getAdapterManager();
        Iterator list = classList.iterator();
        while (list.hasNext()) {
            Class clazz = (Class)list.next();
            String[] adapters = adapterMgr.computeAdapterTypes(clazz);
            int i = 0;
            while (i < adapters.length) {
                String adapter = adapters[i];
                if (!result.contains(adapter)) {
                    result.add(adapter);
                }
                ++i;
            }
        }
        return new ArrayList(result);
    }

    private Class getCommonResourceClass(List objects) {
        if (objects == null || objects.size() == 0) {
            return null;
        }
        Class resourceClass = LegacyResourceSupport.getResourceClass();
        if (resourceClass == null) {
            return null;
        }
        ArrayList<Object> testList = new ArrayList<Object>(objects.size());
        int i = 0;
        while (i < objects.size()) {
            Object object = objects.get(i);
            if (object instanceof IAdaptable) {
                if (!resourceClass.isInstance(object)) {
                    Object resource = LegacyResourceSupport.getAdaptedContributorResource(object);
                    if (resource == null) {
                        return null;
                    }
                    testList.add(resource);
                }
            } else {
                return null;
            }
            ++i;
        }
        return this.getCommonClass(testList);
    }

    private Class getResourceMappingClass(List objects) {
        if (objects == null || objects.size() == 0) {
            return null;
        }
        Class resourceMappingClass = LegacyResourceSupport.getResourceMappingClass();
        if (resourceMappingClass == null) {
            return null;
        }
        int i = 0;
        while (i < objects.size()) {
            Object object = objects.get(i);
            if (object instanceof IAdaptable) {
                Object resourceMapping;
                if (!resourceMappingClass.isInstance(object) && (resourceMapping = LegacyResourceSupport.getAdaptedContributorResourceMapping(object)) == null) {
                    return null;
                }
            } else {
                return null;
            }
            ++i;
        }
        return resourceMappingClass;
    }

    private Class getCommonClass(List objects) {
        if (objects == null || objects.size() == 0) {
            return null;
        }
        Class commonClass = objects.get(0).getClass();
        if (objects.size() == 1) {
            return commonClass;
        }
        int i = 1;
        while (i < objects.size()) {
            Object object = objects.get(i);
            Class<?> newClass = object.getClass();
            if (!newClass.equals(commonClass) && (commonClass = this.getCommonClass(commonClass, newClass)) == null) {
                return null;
            }
            ++i;
        }
        return commonClass;
    }

    private Class getCommonClass(Class class1, Class class2) {
        List list1 = this.computeCombinedOrder(class1);
        List list2 = this.computeCombinedOrder(class2);
        int i = 0;
        while (i < list1.size()) {
            int j = 0;
            while (j < list2.size()) {
                Class candidate2;
                Class candidate1 = (Class)list1.get(i);
                if (candidate1.equals(candidate2 = (Class)list2.get(j))) {
                    return candidate1;
                }
                ++j;
            }
            ++i;
        }
        return null;
    }

    private class ContributorRecord {
        String objectClassName;
        IObjectContributor contributor;

        public ContributorRecord(IObjectContributor contributor, String targetType) {
            this.contributor = contributor;
            this.objectClassName = targetType;
        }
    }
}

