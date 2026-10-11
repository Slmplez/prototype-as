/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.OperationCanceledException
 */
package org.eclipse.jdt.internal.core.hierarchy;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.zip.ZipFile;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileReader;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFormatException;
import org.eclipse.jdt.internal.compiler.env.IBinaryType;
import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;
import org.eclipse.jdt.internal.compiler.env.IGenericType;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.problem.DefaultProblemFactory;
import org.eclipse.jdt.internal.core.ClassFile;
import org.eclipse.jdt.internal.core.JarPackageFragmentRoot;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.NameLookup;
import org.eclipse.jdt.internal.core.Openable;
import org.eclipse.jdt.internal.core.PackageFragment;
import org.eclipse.jdt.internal.core.ResolvedBinaryType;
import org.eclipse.jdt.internal.core.SearchableEnvironment;
import org.eclipse.jdt.internal.core.SourceTypeElementInfo;
import org.eclipse.jdt.internal.core.hierarchy.HierarchyResolver;
import org.eclipse.jdt.internal.core.hierarchy.HierarchyType;
import org.eclipse.jdt.internal.core.hierarchy.TypeHierarchy;
import org.eclipse.jdt.internal.core.util.ResourceCompilationUnit;
import org.eclipse.jdt.internal.core.util.Util;

public abstract class HierarchyBuilder {
    protected TypeHierarchy hierarchy;
    protected NameLookup nameLookup;
    protected HierarchyResolver hierarchyResolver;
    protected Map infoToHandle;
    protected String focusQualifiedName;

    public HierarchyBuilder(TypeHierarchy hierarchy) throws JavaModelException {
        org.eclipse.jdt.core.ICompilationUnit[] unitsToLookInside;
        this.hierarchy = hierarchy;
        JavaProject project = (JavaProject)hierarchy.javaProject();
        IType focusType = hierarchy.getType();
        org.eclipse.jdt.core.ICompilationUnit unitToLookInside = focusType == null ? null : focusType.getCompilationUnit();
        org.eclipse.jdt.core.ICompilationUnit[] workingCopies = this.hierarchy.workingCopies;
        if (unitToLookInside != null) {
            int wcLength;
            int n = wcLength = workingCopies == null ? 0 : workingCopies.length;
            if (wcLength == 0) {
                unitsToLookInside = new org.eclipse.jdt.core.ICompilationUnit[]{unitToLookInside};
            } else {
                unitsToLookInside = new org.eclipse.jdt.core.ICompilationUnit[wcLength + 1];
                unitsToLookInside[0] = unitToLookInside;
                System.arraycopy(workingCopies, 0, unitsToLookInside, 1, wcLength);
            }
        } else {
            unitsToLookInside = workingCopies;
        }
        if (project != null) {
            SearchableEnvironment searchableEnvironment = project.newSearchableNameEnvironment(unitsToLookInside);
            this.nameLookup = searchableEnvironment.nameLookup;
            this.hierarchyResolver = new HierarchyResolver(searchableEnvironment, project.getOptions(true), this, new DefaultProblemFactory());
        }
        this.infoToHandle = new HashMap(5);
        this.focusQualifiedName = focusType == null ? null : focusType.getFullyQualifiedName();
    }

    public abstract void build(boolean var1) throws JavaModelException, CoreException;

    protected void buildSupertypes() {
        IGenericType type;
        IType focusType = this.getType();
        if (focusType == null) {
            return;
        }
        try {
            type = (IGenericType)((JavaElement)((Object)focusType)).getElementInfo();
        }
        catch (JavaModelException javaModelException) {
            return;
        }
        this.hierarchyResolver.resolve(type);
        if (!this.hierarchy.contains(focusType)) {
            this.hierarchy.addRootClass(focusType);
        }
    }

    public void connect(IGenericType type, IType typeHandle, IType superclassHandle, IType[] superinterfaceHandles) {
        if (typeHandle == null) {
            return;
        }
        if (TypeHierarchy.DEBUG) {
            System.out.println("Connecting: " + ((JavaElement)((Object)typeHandle)).toStringWithAncestors());
            System.out.println("  to superclass: " + (superclassHandle == null ? "<None>" : ((JavaElement)((Object)superclassHandle)).toStringWithAncestors()));
            System.out.print("  and superinterfaces:");
            if (superinterfaceHandles == null || superinterfaceHandles.length == 0) {
                System.out.println(" <None>");
            } else {
                System.out.println();
                int i = 0;
                int length = superinterfaceHandles.length;
                while (i < length) {
                    if (superinterfaceHandles[i] != null) {
                        System.out.println("    " + ((JavaElement)((Object)superinterfaceHandles[i])).toStringWithAncestors());
                    }
                    ++i;
                }
            }
        }
        switch (TypeDeclaration.kind(type.getModifiers())) {
            case 1: 
            case 3: {
                if (superclassHandle == null) {
                    this.hierarchy.addRootClass(typeHandle);
                    break;
                }
                this.hierarchy.cacheSuperclass(typeHandle, superclassHandle);
                break;
            }
            case 2: 
            case 4: {
                if (this.hierarchy.typeToSuperInterfaces.get(typeHandle) != null) break;
                this.hierarchy.addInterface(typeHandle);
            }
        }
        if (superinterfaceHandles == null) {
            superinterfaceHandles = TypeHierarchy.NO_TYPE;
        }
        this.hierarchy.cacheSuperInterfaces(typeHandle, superinterfaceHandles);
        this.hierarchy.cacheFlags(typeHandle, type.getModifiers());
    }

    protected IType getHandle(IGenericType genericType, ReferenceBinding binding) {
        if (genericType == null) {
            return null;
        }
        if (genericType instanceof HierarchyType) {
            IType handle = (IType)this.infoToHandle.get(genericType);
            if (handle == null) {
                handle = ((HierarchyType)genericType).typeHandle;
                handle = (IType)((Object)((JavaElement)((Object)handle)).resolved(binding));
                this.infoToHandle.put(genericType, handle);
            }
            return handle;
        }
        if (genericType.isBinaryType()) {
            ClassFile classFile = (ClassFile)this.infoToHandle.get(genericType);
            if (classFile == null) {
                IType handle = this.lookupBinaryHandle((IBinaryType)genericType);
                if (handle == null) {
                    return null;
                }
                classFile = (ClassFile)handle.getParent();
                this.infoToHandle.put(genericType, classFile);
            }
            return new ResolvedBinaryType(classFile, classFile.getTypeName(), new String(binding.computeUniqueKey()));
        }
        if (genericType instanceof SourceTypeElementInfo) {
            IType handle = ((SourceTypeElementInfo)genericType).getHandle();
            return (IType)((Object)((JavaElement)((Object)handle)).resolved(binding));
        }
        return null;
    }

    protected IType getType() {
        return this.hierarchy.getType();
    }

    protected IType lookupBinaryHandle(IBinaryType typeInfo) {
        int flag;
        switch (TypeDeclaration.kind(typeInfo.getModifiers())) {
            case 1: {
                flag = 2;
                break;
            }
            case 2: {
                flag = 4;
                break;
            }
            case 3: {
                flag = 8;
                break;
            }
            default: {
                flag = 16;
            }
        }
        char[] bName = typeInfo.getName();
        String qualifiedName = new String(ClassFile.translatedName(bName));
        if (qualifiedName.equals(this.focusQualifiedName)) {
            return this.getType();
        }
        NameLookup.Answer answer = this.nameLookup.findType(qualifiedName, false, flag, true, false, false, null);
        return answer == null || answer.type == null || !answer.type.isBinary() ? null : answer.type;
    }

    protected void worked(IProgressMonitor monitor, int work) {
        if (monitor != null) {
            if (monitor.isCanceled()) {
                throw new OperationCanceledException();
            }
            monitor.worked(work);
        }
    }

    protected ICompilationUnit createCompilationUnitFromPath(Openable handle, IFile file) {
        final char[] elementName = handle.getElementName().toCharArray();
        return new ResourceCompilationUnit(file, file.getLocationURI()){

            public char[] getFileName() {
                return elementName;
            }
        };
    }

    protected IBinaryType createInfoFromClassFile(Openable handle, IResource file) {
        ClassFileReader info = null;
        try {
            info = Util.newClassFileReader(file);
        }
        catch (ClassFormatException e) {
            if (TypeHierarchy.DEBUG) {
                e.printStackTrace();
            }
            return null;
        }
        catch (IOException e) {
            if (TypeHierarchy.DEBUG) {
                e.printStackTrace();
            }
            return null;
        }
        catch (CoreException e) {
            if (TypeHierarchy.DEBUG) {
                e.printStackTrace();
            }
            return null;
        }
        this.infoToHandle.put(info, handle);
        return info;
    }

    /*
     * Loose catch block
     */
    protected IBinaryType createInfoFromClassFileInJar(Openable classFile) {
        PackageFragment pkg = (PackageFragment)classFile.getParent();
        String classFilePath = Util.concatWith(pkg.names, classFile.getElementName(), '/');
        ClassFileReader info = null;
        ZipFile zipFile = null;
        try {
            zipFile = ((JarPackageFragmentRoot)pkg.getParent()).getJar();
            info = ClassFileReader.read(zipFile, classFilePath);
        }
        catch (ClassFormatException e) {
            if (TypeHierarchy.DEBUG) {
                e.printStackTrace();
            }
            JavaModelManager.getJavaModelManager().closeZipFile(zipFile);
            return null;
        }
        catch (IOException e) {
            if (TypeHierarchy.DEBUG) {
                e.printStackTrace();
            }
            JavaModelManager.getJavaModelManager().closeZipFile(zipFile);
            return null;
        }
        catch (CoreException e) {
            if (TypeHierarchy.DEBUG) {
                e.printStackTrace();
            }
            JavaModelManager.getJavaModelManager().closeZipFile(zipFile);
            return null;
            {
                catch (Throwable throwable) {
                    JavaModelManager.getJavaModelManager().closeZipFile(zipFile);
                    throw throwable;
                }
            }
        }
        JavaModelManager.getJavaModelManager().closeZipFile(zipFile);
        this.infoToHandle.put(info, classFile);
        return info;
    }
}

