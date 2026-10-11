/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.SafeRunner
 */
package org.eclipse.jdt.internal.core.hierarchy;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.jdt.core.ElementChangedEvent;
import org.eclipse.jdt.core.Flags;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IElementChangedListener;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaElementDelta;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.ITypeHierarchy;
import org.eclipse.jdt.core.ITypeHierarchyChangedListener;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.core.search.IJavaSearchScope;
import org.eclipse.jdt.core.search.SearchEngine;
import org.eclipse.jdt.internal.core.ClassFile;
import org.eclipse.jdt.internal.core.CompilationUnit;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.JavaModelStatus;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.Openable;
import org.eclipse.jdt.internal.core.PackageFragment;
import org.eclipse.jdt.internal.core.Region;
import org.eclipse.jdt.internal.core.TypeVector;
import org.eclipse.jdt.internal.core.hierarchy.ChangeCollector;
import org.eclipse.jdt.internal.core.hierarchy.HierarchyBuilder;
import org.eclipse.jdt.internal.core.hierarchy.IndexBasedHierarchyBuilder;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jdt.internal.core.util.Util;

public class TypeHierarchy
implements ITypeHierarchy,
IElementChangedListener {
    public static boolean DEBUG = false;
    static final byte VERSION = 0;
    static final byte SEPARATOR1 = 10;
    static final byte SEPARATOR2 = 44;
    static final byte SEPARATOR3 = 62;
    static final byte SEPARATOR4 = 13;
    static final byte COMPUTE_SUBTYPES = 1;
    static final byte CLASS = 0;
    static final byte INTERFACE = 1;
    static final byte COMPUTED_FOR = 2;
    static final byte ROOT = 4;
    static final byte[] NO_FLAGS = new byte[0];
    static final int SIZE = 10;
    protected IJavaProject project;
    protected IType focusType;
    protected ICompilationUnit[] workingCopies;
    protected Map classToSuperclass;
    protected Map typeToSuperInterfaces;
    protected Map typeToSubtypes;
    protected Map typeFlags;
    protected TypeVector rootClasses = new TypeVector();
    protected ArrayList interfaces = new ArrayList(10);
    public ArrayList missingTypes = new ArrayList(4);
    protected static final IType[] NO_TYPE = new IType[0];
    protected IProgressMonitor progressMonitor = null;
    protected ArrayList changeListeners = null;
    public Map files = null;
    protected Region packageRegion = null;
    protected Region projectRegion = null;
    protected boolean computeSubtypes;
    IJavaSearchScope scope;
    public boolean needsRefresh = true;
    protected ChangeCollector changeCollector;

    public TypeHierarchy() {
    }

    public TypeHierarchy(IType type, ICompilationUnit[] workingCopies, IJavaProject project, boolean computeSubtypes) {
        this(type, workingCopies, SearchEngine.createJavaSearchScope(new IJavaElement[]{project}), computeSubtypes);
        this.project = project;
    }

    public TypeHierarchy(IType type, ICompilationUnit[] workingCopies, IJavaSearchScope scope, boolean computeSubtypes) {
        this.focusType = type == null ? null : (IType)((Object)((JavaElement)((Object)type)).unresolved());
        this.workingCopies = workingCopies;
        this.computeSubtypes = computeSubtypes;
        this.scope = scope;
    }

    protected void initializeRegions() {
        IType[] allTypes = this.getAllTypes();
        int i = 0;
        while (i < allTypes.length) {
            IType type = allTypes[i];
            Openable o = (Openable)((JavaElement)((Object)type)).getOpenableParent();
            if (o != null) {
                ArrayList<IType> types = (ArrayList<IType>)this.files.get(o);
                if (types == null) {
                    types = new ArrayList<IType>();
                    this.files.put(o, types);
                }
                types.add(type);
            }
            IPackageFragment pkg = type.getPackageFragment();
            this.packageRegion.add(pkg);
            IJavaProject declaringProject = type.getJavaProject();
            if (declaringProject != null) {
                this.projectRegion.add(declaringProject);
            }
            this.checkCanceled();
            ++i;
        }
    }

    private void addAllCheckingDuplicates(ArrayList list, IType[] collection) {
        int i = 0;
        while (i < collection.length) {
            IType element = collection[i];
            if (!list.contains(element)) {
                list.add(element);
            }
            ++i;
        }
    }

    protected void addInterface(IType type) {
        this.interfaces.add(type);
    }

    protected void addRootClass(IType type) {
        if (this.rootClasses.contains(type)) {
            return;
        }
        this.rootClasses.add(type);
    }

    protected void addSubtype(IType type, IType subtype) {
        TypeVector subtypes = (TypeVector)this.typeToSubtypes.get(type);
        if (subtypes == null) {
            subtypes = new TypeVector();
            this.typeToSubtypes.put(type, subtypes);
        }
        if (!subtypes.contains(subtype)) {
            subtypes.add(subtype);
        }
    }

    public synchronized void addTypeHierarchyChangedListener(ITypeHierarchyChangedListener listener) {
        ArrayList<ITypeHierarchyChangedListener> listeners = this.changeListeners;
        if (listeners == null) {
            this.changeListeners = listeners = new ArrayList<ITypeHierarchyChangedListener>();
        }
        if (listeners.size() == 0) {
            JavaCore.addElementChangedListener(this);
        }
        if (listeners.indexOf(listener) == -1) {
            listeners.add(listener);
        }
    }

    private static Integer bytesToFlags(byte[] bytes) {
        if (bytes != null && bytes.length > 0) {
            return new Integer(new String(bytes));
        }
        return null;
    }

    public void cacheFlags(IType type, int flags) {
        this.typeFlags.put(type, new Integer(flags));
    }

    protected void cacheSuperclass(IType type, IType superclass) {
        if (superclass != null) {
            this.classToSuperclass.put(type, superclass);
            this.addSubtype(superclass, type);
        }
    }

    protected void cacheSuperInterfaces(IType type, IType[] superinterfaces) {
        this.typeToSuperInterfaces.put(type, superinterfaces);
        int i = 0;
        while (i < superinterfaces.length) {
            IType superinterface = superinterfaces[i];
            if (superinterface != null) {
                this.addSubtype(superinterface, type);
            }
            ++i;
        }
    }

    protected void checkCanceled() {
        if (this.progressMonitor != null && this.progressMonitor.isCanceled()) {
            throw new OperationCanceledException();
        }
    }

    protected void compute() throws JavaModelException, CoreException {
        if (this.focusType != null) {
            IndexBasedHierarchyBuilder builder = new IndexBasedHierarchyBuilder(this, this.scope);
            ((HierarchyBuilder)builder).build(this.computeSubtypes);
        }
    }

    public boolean contains(IType type) {
        if (this.classToSuperclass.get(type) != null) {
            return true;
        }
        if (this.rootClasses.contains(type)) {
            return true;
        }
        return this.interfaces.contains(type);
    }

    public void elementChanged(ElementChangedEvent event) {
        if (this.needsRefresh) {
            return;
        }
        if (this.isAffected(event.getDelta(), event.getType())) {
            this.needsRefresh = true;
            this.fireChange();
        }
    }

    public boolean exists() {
        if (!this.needsRefresh) {
            return true;
        }
        return (this.focusType == null || this.focusType.exists()) && this.javaProject().exists();
    }

    public void fireChange() {
        ArrayList listeners = this.getClonedChangeListeners();
        if (listeners == null) {
            return;
        }
        if (DEBUG) {
            System.out.println("FIRING hierarchy change [" + Thread.currentThread() + "]");
            if (this.focusType != null) {
                System.out.println("    for hierarchy focused on " + ((JavaElement)((Object)this.focusType)).toStringWithAncestors());
            }
        }
        int i = 0;
        while (i < listeners.size()) {
            final ITypeHierarchyChangedListener listener = (ITypeHierarchyChangedListener)listeners.get(i);
            SafeRunner.run((ISafeRunnable)new ISafeRunnable(){

                public void handleException(Throwable exception) {
                    Util.log(exception, "Exception occurred in listener of Type hierarchy change notification");
                }

                public void run() throws Exception {
                    listener.typeHierarchyChanged(TypeHierarchy.this);
                }
            });
            ++i;
        }
    }

    private synchronized ArrayList getClonedChangeListeners() {
        ArrayList listeners = this.changeListeners;
        if (listeners == null) {
            return null;
        }
        return (ArrayList)listeners.clone();
    }

    private static byte[] flagsToBytes(Integer flags) {
        if (flags != null) {
            return flags.toString().getBytes();
        }
        return NO_FLAGS;
    }

    public IType[] getAllClasses() {
        TypeVector classes = this.rootClasses.copy();
        Iterator iter = this.classToSuperclass.keySet().iterator();
        while (iter.hasNext()) {
            classes.add((IType)iter.next());
        }
        return classes.elements();
    }

    public IType[] getAllInterfaces() {
        IType[] collection = new IType[this.interfaces.size()];
        this.interfaces.toArray(collection);
        return collection;
    }

    public IType[] getAllSubtypes(IType type) {
        return this.getAllSubtypesForType(type);
    }

    private IType[] getAllSubtypesForType(IType type) {
        ArrayList subTypes = new ArrayList();
        this.getAllSubtypesForType0(type, subTypes);
        IType[] subClasses = new IType[subTypes.size()];
        subTypes.toArray(subClasses);
        return subClasses;
    }

    private void getAllSubtypesForType0(IType type, ArrayList subs) {
        IType[] subTypes = this.getSubtypesForType(type);
        if (subTypes.length != 0) {
            int i = 0;
            while (i < subTypes.length) {
                IType subType = subTypes[i];
                subs.add(subType);
                this.getAllSubtypesForType0(subType, subs);
                ++i;
            }
        }
    }

    public IType[] getAllSuperclasses(IType type) {
        IType superclass = this.getSuperclass(type);
        TypeVector supers = new TypeVector();
        while (superclass != null) {
            supers.add(superclass);
            superclass = this.getSuperclass(superclass);
        }
        return supers.elements();
    }

    public IType[] getAllSuperInterfaces(IType type) {
        ArrayList supers = this.getAllSuperInterfaces0(type, null);
        if (supers == null) {
            return NO_TYPE;
        }
        IType[] superinterfaces = new IType[supers.size()];
        supers.toArray(superinterfaces);
        return superinterfaces;
    }

    private ArrayList getAllSuperInterfaces0(IType type, ArrayList supers) {
        IType superclass;
        IType[] superinterfaces = (IType[])this.typeToSuperInterfaces.get(type);
        if (superinterfaces == null) {
            return supers;
        }
        if (superinterfaces.length != 0) {
            if (supers == null) {
                supers = new ArrayList();
            }
            this.addAllCheckingDuplicates(supers, superinterfaces);
            int i = 0;
            while (i < superinterfaces.length) {
                supers = this.getAllSuperInterfaces0(superinterfaces[i], supers);
                ++i;
            }
        }
        if ((superclass = (IType)this.classToSuperclass.get(type)) != null) {
            supers = this.getAllSuperInterfaces0(superclass, supers);
        }
        return supers;
    }

    public IType[] getAllSupertypes(IType type) {
        ArrayList supers = this.getAllSupertypes0(type, null);
        if (supers == null) {
            return NO_TYPE;
        }
        IType[] supertypes = new IType[supers.size()];
        supers.toArray(supertypes);
        return supertypes;
    }

    private ArrayList getAllSupertypes0(IType type, ArrayList supers) {
        IType superclass;
        IType[] superinterfaces = (IType[])this.typeToSuperInterfaces.get(type);
        if (superinterfaces == null) {
            return supers;
        }
        if (superinterfaces.length != 0) {
            if (supers == null) {
                supers = new ArrayList();
            }
            this.addAllCheckingDuplicates(supers, superinterfaces);
            int i = 0;
            while (i < superinterfaces.length) {
                supers = this.getAllSuperInterfaces0(superinterfaces[i], supers);
                ++i;
            }
        }
        if ((superclass = (IType)this.classToSuperclass.get(type)) != null) {
            if (supers == null) {
                supers = new ArrayList();
            }
            supers.add(superclass);
            supers = this.getAllSupertypes0(superclass, supers);
        }
        return supers;
    }

    public IType[] getAllTypes() {
        IType[] classes = this.getAllClasses();
        int classesLength = classes.length;
        IType[] allInterfaces = this.getAllInterfaces();
        int interfacesLength = allInterfaces.length;
        IType[] all = new IType[classesLength + interfacesLength];
        System.arraycopy(classes, 0, all, 0, classesLength);
        System.arraycopy(allInterfaces, 0, all, classesLength, interfacesLength);
        return all;
    }

    public int getCachedFlags(IType type) {
        Integer flagObject = (Integer)this.typeFlags.get(type);
        if (flagObject != null) {
            return flagObject;
        }
        return -1;
    }

    public IType[] getExtendingInterfaces(IType type) {
        if (!this.isInterface(type)) {
            return NO_TYPE;
        }
        return this.getExtendingInterfaces0(type);
    }

    private IType[] getExtendingInterfaces0(IType extendedInterface) {
        Iterator iter = this.typeToSuperInterfaces.entrySet().iterator();
        ArrayList<IType> interfaceList = new ArrayList<IType>();
        while (iter.hasNext()) {
            IType[] superInterfaces;
            Map.Entry entry = iter.next();
            IType type = (IType)entry.getKey();
            if (!this.isInterface(type) || (superInterfaces = (IType[])entry.getValue()) == null) continue;
            int i = 0;
            while (i < superInterfaces.length) {
                IType superInterface = superInterfaces[i];
                if (superInterface.equals(extendedInterface)) {
                    interfaceList.add(type);
                }
                ++i;
            }
        }
        IType[] extendingInterfaces = new IType[interfaceList.size()];
        interfaceList.toArray(extendingInterfaces);
        return extendingInterfaces;
    }

    public IType[] getImplementingClasses(IType type) {
        if (!this.isInterface(type)) {
            return NO_TYPE;
        }
        return this.getImplementingClasses0(type);
    }

    private IType[] getImplementingClasses0(IType interfce) {
        Iterator iter = this.typeToSuperInterfaces.entrySet().iterator();
        ArrayList<IType> iMenters = new ArrayList<IType>();
        while (iter.hasNext()) {
            Map.Entry entry = iter.next();
            IType type = (IType)entry.getKey();
            if (this.isInterface(type)) continue;
            IType[] types = (IType[])entry.getValue();
            int i = 0;
            while (i < types.length) {
                IType iFace = types[i];
                if (iFace.equals(interfce)) {
                    iMenters.add(type);
                }
                ++i;
            }
        }
        IType[] implementers = new IType[iMenters.size()];
        iMenters.toArray(implementers);
        return implementers;
    }

    public IType[] getRootClasses() {
        return this.rootClasses.elements();
    }

    public IType[] getRootInterfaces() {
        IType[] allInterfaces = this.getAllInterfaces();
        IType[] roots = new IType[allInterfaces.length];
        int rootNumber = 0;
        int i = 0;
        while (i < allInterfaces.length) {
            IType[] superInterfaces = this.getSuperInterfaces(allInterfaces[i]);
            if (superInterfaces == null || superInterfaces.length == 0) {
                roots[rootNumber++] = allInterfaces[i];
            }
            ++i;
        }
        IType[] result = new IType[rootNumber];
        if (result.length > 0) {
            System.arraycopy(roots, 0, result, 0, rootNumber);
        }
        return result;
    }

    public IType[] getSubclasses(IType type) {
        if (this.isInterface(type)) {
            return NO_TYPE;
        }
        TypeVector vector = (TypeVector)this.typeToSubtypes.get(type);
        if (vector == null) {
            return NO_TYPE;
        }
        return vector.elements();
    }

    public IType[] getSubtypes(IType type) {
        return this.getSubtypesForType(type);
    }

    private IType[] getSubtypesForType(IType type) {
        TypeVector vector = (TypeVector)this.typeToSubtypes.get(type);
        if (vector == null) {
            return NO_TYPE;
        }
        return vector.elements();
    }

    public IType getSuperclass(IType type) {
        if (this.isInterface(type)) {
            return null;
        }
        return (IType)this.classToSuperclass.get(type);
    }

    public IType[] getSuperInterfaces(IType type) {
        IType[] types = (IType[])this.typeToSuperInterfaces.get(type);
        if (types == null) {
            return NO_TYPE;
        }
        return types;
    }

    public IType[] getSupertypes(IType type) {
        IType superclass = this.getSuperclass(type);
        if (superclass == null) {
            return this.getSuperInterfaces(type);
        }
        TypeVector superTypes = new TypeVector(this.getSuperInterfaces(type));
        superTypes.add(superclass);
        return superTypes.elements();
    }

    public IType getType() {
        return this.focusType;
    }

    protected IType[] growAndAddToArray(IType[] array, IType[] additions) {
        if (array == null || array.length == 0) {
            return additions;
        }
        IType[] old = array;
        array = new IType[old.length + additions.length];
        System.arraycopy(old, 0, array, 0, old.length);
        System.arraycopy(additions, 0, array, old.length, additions.length);
        return array;
    }

    protected IType[] growAndAddToArray(IType[] array, IType addition) {
        if (array == null || array.length == 0) {
            return new IType[]{addition};
        }
        IType[] old = array;
        array = new IType[old.length + 1];
        System.arraycopy(old, 0, array, 0, old.length);
        array[old.length] = addition;
        return array;
    }

    public boolean hasFineGrainChanges() {
        ChangeCollector collector = this.changeCollector;
        return collector != null && collector.needsRefresh();
    }

    private boolean hasSubtypeNamed(String simpleName) {
        if (this.focusType != null && this.focusType.getElementName().equals(simpleName)) {
            return true;
        }
        IType[] types = this.focusType == null ? this.getAllTypes() : this.getAllSubtypes(this.focusType);
        int i = 0;
        int length = types.length;
        while (i < length) {
            if (types[i].getElementName().equals(simpleName)) {
                return true;
            }
            ++i;
        }
        return false;
    }

    private boolean hasTypeNamed(String simpleName) {
        IType[] types = this.getAllTypes();
        int i = 0;
        int length = types.length;
        while (i < length) {
            if (types[i].getElementName().equals(simpleName)) {
                return true;
            }
            ++i;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    boolean includesTypeOrSupertype(IType type) {
        try {
            int lastSeparator;
            String simpleName;
            if (this.hasTypeNamed(type.getElementName())) {
                return true;
            }
            String superclassName = type.getSuperclassName();
            if (superclassName != null && this.hasTypeNamed(simpleName = superclassName.substring((lastSeparator = superclassName.lastIndexOf(46)) + 1))) {
                return true;
            }
            String[] superinterfaceNames = type.getSuperInterfaceNames();
            if (superinterfaceNames == null) return false;
            int i = 0;
            int length = superinterfaceNames.length;
            while (true) {
                if (i >= length) {
                    return false;
                }
                String superinterfaceName = superinterfaceNames[i];
                int lastSeparator2 = superinterfaceName.lastIndexOf(46);
                String simpleName2 = superinterfaceName.substring(lastSeparator2 + 1);
                if (this.hasTypeNamed(simpleName2)) {
                    return true;
                }
                ++i;
            }
        }
        catch (JavaModelException javaModelException) {}
        return false;
    }

    protected void initialize(int size) {
        if (size < 10) {
            size = 10;
        }
        int smallSize = size / 2;
        this.classToSuperclass = new HashMap(size);
        this.interfaces = new ArrayList(smallSize);
        this.missingTypes = new ArrayList(smallSize);
        this.rootClasses = new TypeVector();
        this.typeToSubtypes = new HashMap(smallSize);
        this.typeToSuperInterfaces = new HashMap(smallSize);
        this.typeFlags = new HashMap(smallSize);
        this.projectRegion = new Region();
        this.packageRegion = new Region();
        this.files = new HashMap(5);
    }

    public synchronized boolean isAffected(IJavaElementDelta delta, int eventType) {
        IJavaElement element = delta.getElement();
        switch (element.getElementType()) {
            case 1: {
                return this.isAffectedByJavaModel(delta, element, eventType);
            }
            case 2: {
                return this.isAffectedByJavaProject(delta, element, eventType);
            }
            case 3: {
                return this.isAffectedByPackageFragmentRoot(delta, element, eventType);
            }
            case 4: {
                return this.isAffectedByPackageFragment(delta, (PackageFragment)element, eventType);
            }
            case 5: 
            case 6: {
                return this.isAffectedByOpenable(delta, element, eventType);
            }
        }
        return false;
    }

    private boolean isAffectedByChildren(IJavaElementDelta delta, int eventType) {
        if ((delta.getFlags() & 8) > 0) {
            IJavaElementDelta[] children = delta.getAffectedChildren();
            int i = 0;
            while (i < children.length) {
                if (this.isAffected(children[i], eventType)) {
                    return true;
                }
                ++i;
            }
        }
        return false;
    }

    private boolean isAffectedByJavaModel(IJavaElementDelta delta, IJavaElement element, int eventType) {
        switch (delta.getKind()) {
            case 1: 
            case 2: {
                return element.equals(this.javaProject().getJavaModel());
            }
            case 4: {
                return this.isAffectedByChildren(delta, eventType);
            }
        }
        return false;
    }

    /*
     * Enabled aggressive exception aggregation
     */
    private boolean isAffectedByJavaProject(IJavaElementDelta delta, IJavaElement element, int eventType) {
        int kind = delta.getKind();
        int flags = delta.getFlags();
        if ((flags & 0x200) != 0) {
            kind = 1;
        }
        if ((flags & 0x400) != 0) {
            kind = 2;
        }
        switch (kind) {
            case 1: {
                try {
                    IClasspathEntry[] classpath = ((JavaProject)this.javaProject()).getExpandedClasspath();
                    int i = 0;
                    while (i < classpath.length) {
                        if (classpath[i].getEntryKind() == 2 && classpath[i].getPath().equals((Object)element.getPath())) {
                            return true;
                        }
                        ++i;
                    }
                    if (this.focusType != null) {
                        classpath = ((JavaProject)element).getExpandedClasspath();
                        IPath hierarchyProject = this.javaProject().getPath();
                        int i2 = 0;
                        while (i2 < classpath.length) {
                            if (classpath[i2].getEntryKind() == 2 && classpath[i2].getPath().equals((Object)hierarchyProject)) {
                                return true;
                            }
                            ++i2;
                        }
                    }
                    return false;
                }
                catch (JavaModelException javaModelException) {
                    return false;
                }
            }
            case 2: {
                IJavaElement[] pkgs = this.packageRegion.getElements();
                int i = 0;
                while (i < pkgs.length) {
                    IJavaProject javaProject = pkgs[i].getJavaProject();
                    if (javaProject != null && javaProject.equals(element)) {
                        return true;
                    }
                    ++i;
                }
                return false;
            }
            case 4: {
                return this.isAffectedByChildren(delta, eventType);
            }
        }
        return false;
    }

    private boolean isAffectedByPackageFragment(IJavaElementDelta delta, PackageFragment element, int eventType) {
        switch (delta.getKind()) {
            case 1: {
                return this.projectRegion.contains(element);
            }
            case 2: {
                return this.packageRegionContainsSamePackageFragment(element);
            }
            case 4: {
                return this.isAffectedByChildren(delta, eventType);
            }
        }
        return false;
    }

    private boolean isAffectedByPackageFragmentRoot(IJavaElementDelta delta, IJavaElement element, int eventType) {
        switch (delta.getKind()) {
            case 1: {
                return this.projectRegion.contains(element);
            }
            case 2: 
            case 4: {
                int flags = delta.getFlags();
                if ((flags & 0x40) > 0 && this.projectRegion != null) {
                    IPackageFragmentRoot root = (IPackageFragmentRoot)element;
                    IPath rootPath = root.getPath();
                    IJavaElement[] elements = this.projectRegion.getElements();
                    int i = 0;
                    while (i < elements.length) {
                        JavaProject javaProject = (JavaProject)elements[i];
                        try {
                            IClasspathEntry entry = javaProject.getClasspathEntryFor(rootPath);
                            if (entry != null) {
                                return true;
                            }
                        }
                        catch (JavaModelException javaModelException) {}
                        ++i;
                    }
                }
                if ((flags & 0x80) <= 0 && (flags & 0x8000) <= 0) break;
                IJavaElement[] pkgs = this.packageRegion.getElements();
                int i = 0;
                while (i < pkgs.length) {
                    if (pkgs[i].getParent().equals(element)) {
                        return true;
                    }
                    ++i;
                }
                return false;
            }
        }
        return this.isAffectedByChildren(delta, eventType);
    }

    protected boolean isAffectedByOpenable(IJavaElementDelta delta, IJavaElement element, int eventType) {
        if (element instanceof CompilationUnit) {
            ChangeCollector collector;
            CompilationUnit cu;
            block16: {
                ICompilationUnit focusCU;
                cu = (CompilationUnit)element;
                ICompilationUnit iCompilationUnit = focusCU = this.focusType != null ? this.focusType.getCompilationUnit() : null;
                if (focusCU != null && focusCU.getOwner() != cu.getOwner()) {
                    return false;
                }
                if (eventType != 4 && !cu.isPrimary() && delta.getKind() == 1) {
                    return false;
                }
                collector = this.changeCollector;
                if (collector == null) {
                    collector = new ChangeCollector(this);
                }
                try {
                    collector.addChange(cu, delta);
                }
                catch (JavaModelException e) {
                    if (!DEBUG) break block16;
                    e.printStackTrace();
                }
            }
            if (cu.isWorkingCopy() && eventType == 4) {
                this.changeCollector = collector;
                return false;
            }
            return collector.needsRefresh();
        }
        if (element instanceof ClassFile) {
            switch (delta.getKind()) {
                case 2: {
                    return this.files.get(element) != null;
                }
                case 1: {
                    IType type = ((ClassFile)element).getType();
                    String typeName = type.getElementName();
                    if (!this.hasSupertype(typeName) && !this.subtypesIncludeSupertypeOf(type) && !this.missingTypes.contains(typeName)) break;
                    return true;
                }
                case 4: {
                    IJavaElementDelta[] children = delta.getAffectedChildren();
                    int i = 0;
                    int length = children.length;
                    while (i < length) {
                        IJavaElementDelta child = children[i];
                        IJavaElement childElement = child.getElement();
                        if (childElement instanceof IType) {
                            boolean hasSupertypeChange;
                            IType type = (IType)childElement;
                            boolean hasVisibilityChange = (delta.getFlags() & 2) > 0;
                            boolean bl = hasSupertypeChange = (delta.getFlags() & 0x800) > 0;
                            if (hasVisibilityChange && this.hasSupertype(type.getElementName()) || hasSupertypeChange && this.includesTypeOrSupertype(type)) {
                                return true;
                            }
                        }
                        ++i;
                    }
                    break;
                }
            }
        }
        return false;
    }

    private boolean isInterface(IType type) {
        int flags = this.getCachedFlags(type);
        if (flags == -1) {
            try {
                return type.isInterface();
            }
            catch (JavaModelException javaModelException) {
                return false;
            }
        }
        return Flags.isInterface(flags);
    }

    public IJavaProject javaProject() {
        return this.focusType.getJavaProject();
    }

    protected static byte[] readUntil(InputStream input, byte separator) throws JavaModelException, IOException {
        return TypeHierarchy.readUntil(input, separator, 0);
    }

    protected static byte[] readUntil(InputStream input, byte separator, int offset) throws IOException, JavaModelException {
        byte b;
        int length = 0;
        byte[] bytes = new byte[10];
        while ((b = (byte)input.read()) != separator && b != -1) {
            if (bytes.length == length) {
                byte[] byArray = bytes;
                bytes = new byte[length * 2];
                System.arraycopy(byArray, 0, bytes, 0, length);
            }
            bytes[length++] = b;
        }
        if (b == -1) {
            throw new JavaModelException(new JavaModelStatus(4));
        }
        byte[] byArray = bytes;
        bytes = new byte[length + offset];
        System.arraycopy(byArray, 0, bytes, offset, length);
        return bytes;
    }

    public static ITypeHierarchy load(IType type, InputStream input, WorkingCopyOwner owner) throws JavaModelException {
        try {
            byte[] missing;
            byte b;
            byte[] bytes;
            TypeHierarchy typeHierarchy = new TypeHierarchy();
            typeHierarchy.initialize(1);
            IType[] types = new IType[10];
            int typeCount = 0;
            byte version = (byte)input.read();
            if (version != 0) {
                throw new JavaModelException(new JavaModelStatus(4));
            }
            byte generalInfo = (byte)input.read();
            if ((generalInfo & 1) != 0) {
                typeHierarchy.computeSubtypes = true;
            }
            if ((bytes = TypeHierarchy.readUntil(input, (byte)10)).length > 0) {
                typeHierarchy.project = (IJavaProject)JavaCore.create(new String(bytes));
                typeHierarchy.scope = SearchEngine.createJavaSearchScope(new IJavaElement[]{typeHierarchy.project});
            } else {
                typeHierarchy.project = null;
                typeHierarchy.scope = SearchEngine.createWorkspaceScope();
            }
            bytes = TypeHierarchy.readUntil(input, (byte)10);
            int j = 0;
            int length = bytes.length;
            int i = 0;
            while (i < length) {
                b = bytes[i];
                if (b == 44) {
                    missing = new byte[i - j];
                    System.arraycopy(bytes, j, missing, 0, i - j);
                    typeHierarchy.missingTypes.add(new String(missing));
                    j = i + 1;
                }
                ++i;
            }
            missing = new byte[length - j];
            System.arraycopy(bytes, j, missing, 0, length - j);
            typeHierarchy.missingTypes.add(new String(missing));
            while ((b = (byte)input.read()) != 10 && b != -1) {
                byte info;
                bytes = TypeHierarchy.readUntil(input, (byte)13, 1);
                bytes[0] = b;
                IType element = (IType)JavaCore.create(new String(bytes), owner);
                if (types.length == typeCount) {
                    IType[] iTypeArray = types;
                    types = new IType[typeCount * 2];
                    System.arraycopy(iTypeArray, 0, types, 0, typeCount);
                }
                types[typeCount++] = element;
                bytes = TypeHierarchy.readUntil(input, (byte)13);
                Integer flags = TypeHierarchy.bytesToFlags(bytes);
                if (flags != null) {
                    typeHierarchy.cacheFlags(element, flags);
                }
                if (((info = (byte)input.read()) & 1) != 0) {
                    typeHierarchy.addInterface(element);
                }
                if ((info & 2) != 0) {
                    if (!element.equals(type)) {
                        throw new JavaModelException(new JavaModelStatus(4));
                    }
                    typeHierarchy.focusType = element;
                }
                if ((info & 4) == 0) continue;
                typeHierarchy.addRootClass(element);
            }
            while ((b = (byte)input.read()) != 10 && b != -1) {
                bytes = TypeHierarchy.readUntil(input, (byte)62, 1);
                bytes[0] = b;
                int subClass = new Integer(new String(bytes));
                bytes = TypeHierarchy.readUntil(input, (byte)10);
                int superClass = new Integer(new String(bytes));
                typeHierarchy.cacheSuperclass(types[subClass], types[superClass]);
            }
            while ((b = (byte)input.read()) != 10 && b != -1) {
                byte[] b2;
                bytes = TypeHierarchy.readUntil(input, (byte)62, 1);
                bytes[0] = b;
                int subClass = new Integer(new String(bytes));
                bytes = TypeHierarchy.readUntil(input, (byte)10);
                IType[] superInterfaces = new IType[bytes.length / 2 + 1];
                int interfaceCount = 0;
                int j2 = 0;
                int i2 = 0;
                while (i2 < bytes.length) {
                    if (bytes[i2] == 44) {
                        b2 = new byte[i2 - j2];
                        System.arraycopy(bytes, j2, b2, 0, i2 - j2);
                        j2 = i2 + 1;
                        superInterfaces[interfaceCount++] = types[new Integer(new String(b2))];
                    }
                    ++i2;
                }
                b2 = new byte[bytes.length - j2];
                System.arraycopy(bytes, j2, b2, 0, bytes.length - j2);
                superInterfaces[interfaceCount++] = types[new Integer(new String(b2))];
                IType[] iTypeArray = superInterfaces;
                superInterfaces = new IType[interfaceCount];
                System.arraycopy(iTypeArray, 0, superInterfaces, 0, interfaceCount);
                typeHierarchy.cacheSuperInterfaces(types[subClass], superInterfaces);
            }
            if (b == -1) {
                throw new JavaModelException(new JavaModelStatus(4));
            }
            return typeHierarchy;
        }
        catch (IOException e) {
            throw new JavaModelException(e, 985);
        }
    }

    protected boolean packageRegionContainsSamePackageFragment(PackageFragment element) {
        IJavaElement[] pkgs = this.packageRegion.getElements();
        int i = 0;
        while (i < pkgs.length) {
            PackageFragment pkg = (PackageFragment)pkgs[i];
            if (Util.equalArraysOrNull(pkg.names, element.names)) {
                return true;
            }
            ++i;
        }
        return false;
    }

    public synchronized void refresh(IProgressMonitor monitor) throws JavaModelException {
        try {
            try {
                this.progressMonitor = monitor;
                if (monitor != null) {
                    monitor.beginTask(this.focusType != null ? Messages.bind(Messages.hierarchy_creatingOnType, this.focusType.getFullyQualifiedName()) : Messages.hierarchy_creating, 100);
                }
                long start = -1L;
                if (DEBUG) {
                    start = System.currentTimeMillis();
                    if (this.computeSubtypes) {
                        System.out.println("CREATING TYPE HIERARCHY [" + Thread.currentThread() + "]");
                    } else {
                        System.out.println("CREATING SUPER TYPE HIERARCHY [" + Thread.currentThread() + "]");
                    }
                    if (this.focusType != null) {
                        System.out.println("  on type " + ((JavaElement)((Object)this.focusType)).toStringWithAncestors());
                    }
                }
                this.compute();
                this.initializeRegions();
                this.needsRefresh = false;
                this.changeCollector = null;
                if (DEBUG) {
                    if (this.computeSubtypes) {
                        System.out.println("CREATED TYPE HIERARCHY in " + (System.currentTimeMillis() - start) + "ms");
                    } else {
                        System.out.println("CREATED SUPER TYPE HIERARCHY in " + (System.currentTimeMillis() - start) + "ms");
                    }
                    System.out.println(this.toString());
                }
            }
            catch (JavaModelException e) {
                throw e;
            }
            catch (CoreException e) {
                throw new JavaModelException(e);
            }
        }
        finally {
            if (monitor != null) {
                monitor.done();
            }
            this.progressMonitor = null;
        }
    }

    public synchronized void removeTypeHierarchyChangedListener(ITypeHierarchyChangedListener listener) {
        ArrayList listeners = this.changeListeners;
        if (listeners == null) {
            return;
        }
        listeners.remove(listener);
        if (listeners.isEmpty()) {
            JavaCore.removeElementChangedListener(this);
        }
    }

    public void store(OutputStream output, IProgressMonitor monitor) throws JavaModelException {
        try {
            Map.Entry entry;
            Integer index;
            Object t;
            Map.Entry entry2;
            Hashtable<Object, Integer> hashtable = new Hashtable<Object, Integer>();
            Hashtable<Integer, Object> hashtable2 = new Hashtable<Integer, Object>();
            int count = 0;
            if (this.focusType != null) {
                Integer index2 = new Integer(count++);
                hashtable.put(this.focusType, index2);
                hashtable2.put(index2, this.focusType);
            }
            Object[] types = this.classToSuperclass.entrySet().toArray();
            int i = 0;
            while (i < types.length) {
                Object superClass;
                entry2 = (Map.Entry)types[i];
                t = entry2.getKey();
                if (hashtable.get(t) == null) {
                    index = new Integer(count++);
                    hashtable.put(t, index);
                    hashtable2.put(index, t);
                }
                if ((superClass = entry2.getValue()) != null && hashtable.get(superClass) == null) {
                    Integer index3 = new Integer(count++);
                    hashtable.put(superClass, index3);
                    hashtable2.put(index3, superClass);
                }
                ++i;
            }
            types = this.typeToSuperInterfaces.entrySet().toArray();
            i = 0;
            while (i < types.length) {
                Object[] sp;
                entry2 = (Map.Entry)types[i];
                t = entry2.getKey();
                if (hashtable.get(t) == null) {
                    index = new Integer(count++);
                    hashtable.put(t, index);
                    hashtable2.put(index, t);
                }
                if ((sp = (Object[])entry2.getValue()) != null) {
                    int j = 0;
                    while (j < sp.length) {
                        Object superInterface = sp[j];
                        if (sp[j] != null && hashtable.get(superInterface) == null) {
                            Integer index4 = new Integer(count++);
                            hashtable.put(superInterface, index4);
                            hashtable2.put(index4, superInterface);
                        }
                        ++j;
                    }
                }
                ++i;
            }
            output.write(0);
            int generalInfo = 0;
            if (this.computeSubtypes) {
                generalInfo = (byte)(generalInfo | 1);
            }
            output.write(generalInfo);
            if (this.project != null) {
                output.write(this.project.getHandleIdentifier().getBytes());
            }
            output.write(10);
            int i2 = 0;
            while (i2 < this.missingTypes.size()) {
                if (i2 != 0) {
                    output.write(44);
                }
                output.write(((String)this.missingTypes.get(i2)).getBytes());
                ++i2;
            }
            output.write(10);
            i2 = 0;
            while (i2 < count) {
                t = (IType)hashtable2.get(new Integer(i2));
                output.write(t.getHandleIdentifier().getBytes());
                output.write(13);
                output.write(TypeHierarchy.flagsToBytes((Integer)this.typeFlags.get(t)));
                output.write(13);
                int info = 0;
                if (this.focusType != null && this.focusType.equals(t)) {
                    info = (byte)(info | 2);
                }
                if (this.interfaces.contains(t)) {
                    info = (byte)(info | 1);
                }
                if (this.rootClasses.contains((IType)t)) {
                    info = (byte)(info | 4);
                }
                output.write(info);
                ++i2;
            }
            output.write(10);
            types = this.classToSuperclass.entrySet().toArray();
            i2 = 0;
            while (i2 < types.length) {
                entry = (Map.Entry)types[i2];
                IJavaElement key = (IJavaElement)entry.getKey();
                IJavaElement value = (IJavaElement)entry.getValue();
                output.write(((Integer)hashtable.get(key)).toString().getBytes());
                output.write(62);
                output.write(((Integer)hashtable.get(value)).toString().getBytes());
                output.write(10);
                ++i2;
            }
            output.write(10);
            types = this.typeToSuperInterfaces.entrySet().toArray();
            i2 = 0;
            while (i2 < types.length) {
                entry = (Map.Entry)types[i2];
                IJavaElement key = (IJavaElement)entry.getKey();
                IJavaElement[] values = (IJavaElement[])entry.getValue();
                if (values.length > 0) {
                    output.write(((Integer)hashtable.get(key)).toString().getBytes());
                    output.write(62);
                    int j = 0;
                    while (j < values.length) {
                        IJavaElement value = values[j];
                        if (j != 0) {
                            output.write(44);
                        }
                        output.write(((Integer)hashtable.get(value)).toString().getBytes());
                        ++j;
                    }
                    output.write(10);
                }
                ++i2;
            }
            output.write(10);
        }
        catch (IOException e) {
            throw new JavaModelException(e, 985);
        }
    }

    boolean subtypesIncludeSupertypeOf(IType type) {
        String simpleSuper;
        String superclassName = null;
        try {
            superclassName = type.getSuperclassName();
        }
        catch (JavaModelException e) {
            if (DEBUG) {
                e.printStackTrace();
            }
            return false;
        }
        if (superclassName == null) {
            superclassName = "Object";
        }
        int dot = -1;
        dot = superclassName.lastIndexOf(46);
        String string = simpleSuper = dot > -1 ? superclassName.substring(dot + 1) : superclassName;
        if (this.hasSubtypeNamed(simpleSuper)) {
            return true;
        }
        String[] interfaceNames = null;
        try {
            interfaceNames = type.getSuperInterfaceNames();
        }
        catch (JavaModelException e) {
            if (DEBUG) {
                e.printStackTrace();
            }
            return false;
        }
        int i = 0;
        int length = interfaceNames.length;
        while (i < length) {
            String simpleInterface;
            dot = -1;
            String interfaceName = interfaceNames[i];
            dot = interfaceName.lastIndexOf(46);
            String string2 = simpleInterface = dot > -1 ? interfaceName.substring(dot) : interfaceName;
            if (this.hasSubtypeNamed(simpleInterface)) {
                return true;
            }
            ++i;
        }
        return false;
    }

    public String toString() {
        StringBuffer buffer = new StringBuffer();
        buffer.append("Focus: ");
        if (this.focusType == null) {
            buffer.append("<NONE>\n");
        } else {
            this.toString(buffer, this.focusType, 0);
        }
        if (this.exists()) {
            if (this.focusType != null) {
                buffer.append("Super types:\n");
                this.toString(buffer, this.focusType, 0, true);
                buffer.append("Sub types:\n");
                this.toString(buffer, this.focusType, 0, false);
            } else if (this.rootClasses.size > 0) {
                IJavaElement root;
                IJavaElement[] roots = Util.sortCopy(this.getRootClasses());
                buffer.append("Super types of root classes:\n");
                int length = roots.length;
                int i = 0;
                while (i < length) {
                    root = roots[i];
                    this.toString(buffer, root, 1);
                    this.toString(buffer, root, 1, true);
                    ++i;
                }
                buffer.append("Sub types of root classes:\n");
                i = 0;
                while (i < length) {
                    root = roots[i];
                    this.toString(buffer, root, 1);
                    this.toString(buffer, root, 1, false);
                    ++i;
                }
            } else if (this.rootClasses.size == 0) {
                buffer.append("No root classes");
            }
        } else {
            buffer.append("(Hierarchy became stale)");
        }
        return buffer.toString();
    }

    private void toString(StringBuffer buffer, IJavaElement type, int indent, boolean ascendant) {
        IJavaElement[] types = ascendant ? this.getSupertypes((IType)type) : this.getSubtypes((IType)type);
        IJavaElement[] sortedTypes = Util.sortCopy(types);
        int i = 0;
        while (i < sortedTypes.length) {
            this.toString(buffer, sortedTypes[i], indent + 1);
            this.toString(buffer, sortedTypes[i], indent + 1, ascendant);
            ++i;
        }
    }

    private void toString(StringBuffer buffer, IJavaElement type, int indent) {
        int j = 0;
        while (j < indent) {
            buffer.append("  ");
            ++j;
        }
        buffer.append(((JavaElement)type).toStringWithAncestors(false));
        buffer.append('\n');
    }

    boolean hasSupertype(String simpleName) {
        Iterator iter = this.classToSuperclass.values().iterator();
        while (iter.hasNext()) {
            IType superType = (IType)iter.next();
            if (!superType.getElementName().equals(simpleName)) continue;
            return true;
        }
        return false;
    }

    protected void worked(int work) {
        if (this.progressMonitor != null) {
            this.progressMonitor.worked(work);
            this.checkCanceled();
        }
    }
}

