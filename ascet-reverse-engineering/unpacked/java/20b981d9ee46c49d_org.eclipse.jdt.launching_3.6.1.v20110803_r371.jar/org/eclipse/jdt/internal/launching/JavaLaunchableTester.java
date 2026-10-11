/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.expressions.PropertyTester
 *  org.eclipse.core.resources.IContainer
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.jdt.core.Flags
 *  org.eclipse.jdt.core.IBuffer
 *  org.eclipse.jdt.core.IClassFile
 *  org.eclipse.jdt.core.IClasspathEntry
 *  org.eclipse.jdt.core.ICompilationUnit
 *  org.eclipse.jdt.core.IJavaElement
 *  org.eclipse.jdt.core.IJavaProject
 *  org.eclipse.jdt.core.IMember
 *  org.eclipse.jdt.core.IMethod
 *  org.eclipse.jdt.core.IOpenable
 *  org.eclipse.jdt.core.IPackageFragment
 *  org.eclipse.jdt.core.IPackageFragmentRoot
 *  org.eclipse.jdt.core.ISourceRange
 *  org.eclipse.jdt.core.IType
 *  org.eclipse.jdt.core.JavaCore
 *  org.eclipse.jdt.core.JavaModelException
 *  org.eclipse.jdt.core.Signature
 *  org.eclipse.jdt.core.ToolFactory
 *  org.eclipse.jdt.core.compiler.IScanner
 *  org.eclipse.jdt.core.compiler.InvalidInputException
 */
package org.eclipse.jdt.internal.launching;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.expressions.PropertyTester;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.jdt.core.Flags;
import org.eclipse.jdt.core.IBuffer;
import org.eclipse.jdt.core.IClassFile;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IMember;
import org.eclipse.jdt.core.IMethod;
import org.eclipse.jdt.core.IOpenable;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.ISourceRange;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.ToolFactory;
import org.eclipse.jdt.core.compiler.IScanner;
import org.eclipse.jdt.core.compiler.InvalidInputException;

public class JavaLaunchableTester
extends PropertyTester {
    private static final String PROPERTY_HAS_MAIN = "hasMain";
    private static final String PROPERTY_HAS_METHOD = "hasMethod";
    private static final String PROPERTY_HAS_METHOD_WITH_ANNOTATION = "hasMethodWithAnnotation";
    private static final String PROPERTY_HAS_TYPE_WITH_ANNOTATION = "hasTypeWithAnnotation";
    private static final String PROPERTY_EXTENDS_CLASS = "extendsClass";
    private static final String PROPERTY_IS_CONTAINER = "isContainer";
    private static final String PROPERTY_IS_PACKAGE_FRAGMENT = "isPackageFragment";
    private static final String PROPERTY_IS_PACKAGE_FRAGMENT_ROOT = "isPackageFragmentRoot";
    private static final String PROPERTY_PROJECT_NATURE = "hasProjectNature";
    private static final String PROPERTY_EXTENDS_INTERFACE = "extendsInterface";
    private static final String PROPERTY_BUILDPATH_REFERENCE = "buildpathReference";
    private static Map fgModifiers = new HashMap();
    private static final int FLAGS_MASK = 1343;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    static {
        fgModifiers.put("public", new Integer(1));
        fgModifiers.put("protected", new Integer(4));
        fgModifiers.put("private", new Integer(2));
        fgModifiers.put("static", new Integer(8));
        fgModifiers.put("final", new Integer(16));
        fgModifiers.put("synchronized", new Integer(32));
        fgModifiers.put("abstract", new Integer(1024));
        fgModifiers.put("native", new Integer(256));
    }

    private IType getType(IJavaElement element) {
        IType type = null;
        if (element instanceof ICompilationUnit) {
            type = ((ICompilationUnit)element).findPrimaryType();
        } else if (element instanceof IClassFile) {
            type = ((IClassFile)element).getType();
        } else if (element instanceof IType) {
            type = (IType)element;
        } else if (element instanceof IMember) {
            type = ((IMember)element).getDeclaringType();
        }
        return type;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private boolean hasMain(IJavaElement element) {
        try {
            IType type = this.getType(element);
            if (type == null) return false;
            if (!type.exists()) return false;
            if (this.hasMainMethod(type)) {
                return true;
            }
            IJavaElement[] children = type.getChildren();
            int i = 0;
            while (true) {
                if (i >= children.length) {
                    return false;
                }
                if (this.hasMainInChildren(this.getType(children[i]))) {
                    return true;
                }
                ++i;
            }
        }
        catch (JavaModelException javaModelException) {
            return false;
        }
        catch (CoreException coreException) {}
        return false;
    }

    private boolean hasMainMethod(IType type) throws JavaModelException {
        IMethod[] methods = type.getMethods();
        int i = 0;
        while (i < methods.length) {
            if (methods[i].isMainMethod()) {
                return true;
            }
            ++i;
        }
        return false;
    }

    private boolean hasMainInChildren(IType type) throws CoreException {
        if (type.isClass() & Flags.isStatic((int)type.getFlags())) {
            if (this.hasMainMethod(type)) {
                return true;
            }
            IJavaElement[] children = type.getChildren();
            int i = 0;
            while (i < children.length) {
                if (children[i].getElementType() == 7) {
                    return this.hasMainInChildren((IType)children[i]);
                }
                ++i;
            }
        }
        return false;
    }

    private boolean hasMethod(IJavaElement element, Object[] args) {
        try {
            IType type;
            if (args.length > 1 && (type = this.getType(element)) != null && type.exists()) {
                String name = (String)args[0];
                String signature = (String)args[1];
                String[] parms = Signature.getParameterTypes((String)signature);
                String returnType = Signature.getReturnType((String)signature);
                IMethod candidate = type.getMethod(name, parms);
                if (candidate.exists() && candidate.getReturnType().equals(returnType) && args.length > 2) {
                    String modifierText = (String)args[2];
                    String[] modifiers = modifierText.split(" ");
                    int flags = 0;
                    int j = 0;
                    while (j < modifiers.length) {
                        String modifier = modifiers[j];
                        Integer flag = (Integer)fgModifiers.get(modifier);
                        if (flag != null) {
                            flags |= flag.intValue();
                        }
                        ++j;
                    }
                    if (candidate.getFlags() == flags) {
                        return true;
                    }
                }
            }
        }
        catch (JavaModelException javaModelException) {}
        return false;
    }

    private boolean hasTypeWithAnnotation(IJavaElement element, String annotationType) {
        IBuffer buffer;
        IType type;
        block11: {
            block10: {
                type = this.getType(element);
                if (type != null && type.exists()) break block10;
                return false;
            }
            buffer = null;
            IOpenable openable = type.getOpenable();
            if (openable instanceof ICompilationUnit) {
                buffer = ((ICompilationUnit)openable).getBuffer();
            } else if (openable instanceof IClassFile) {
                buffer = ((IClassFile)openable).getBuffer();
            }
            if (buffer != null) break block11;
            return false;
        }
        try {
            ISourceRange sourceRange = type.getSourceRange();
            ISourceRange nameRange = type.getNameRange();
            if (sourceRange != null && nameRange != null) {
                IScanner scanner = ToolFactory.createScanner((boolean)false, (boolean)false, (boolean)true, (boolean)false);
                scanner.setSource(buffer.getCharacters());
                scanner.resetTo(sourceRange.getOffset(), nameRange.getOffset());
                if (this.findAnnotation(scanner, annotationType)) {
                    return true;
                }
            }
        }
        catch (JavaModelException javaModelException) {
        }
        catch (InvalidInputException invalidInputException) {}
        return false;
    }

    /*
     * Enabled aggressive exception aggregation
     */
    private boolean hasMethodWithAnnotation(IJavaElement element, Object[] args) {
        try {
            String annotationType = (String)args[0];
            int flags = 0;
            if (args.length > 1) {
                String[] modifiers = ((String)args[1]).split(" ");
                int j = 0;
                while (j < modifiers.length) {
                    String modifier = modifiers[j];
                    Integer flag = (Integer)fgModifiers.get(modifier);
                    if (flag != null) {
                        flags |= flag.intValue();
                    }
                    ++j;
                }
            } else {
                flags = -1;
            }
            IType type = this.getType(element);
            if (type == null || !type.exists()) {
                return false;
            }
            IMethod[] methods = type.getMethods();
            if (methods.length == 0) {
                return false;
            }
            IBuffer buffer = null;
            IOpenable openable = type.getOpenable();
            if (openable instanceof ICompilationUnit) {
                buffer = ((ICompilationUnit)openable).getBuffer();
            } else if (openable instanceof IClassFile) {
                buffer = ((IClassFile)openable).getBuffer();
            }
            if (buffer == null) {
                return false;
            }
            IScanner scanner = null;
            int i = 0;
            while (i < methods.length) {
                IMethod curr = methods[i];
                if (!(curr.isConstructor() || flags != -1 && flags != (curr.getFlags() & 0x53F))) {
                    ISourceRange sourceRange = curr.getSourceRange();
                    ISourceRange nameRange = curr.getNameRange();
                    if (sourceRange != null && nameRange != null) {
                        if (scanner == null) {
                            scanner = ToolFactory.createScanner((boolean)false, (boolean)false, (boolean)true, (boolean)false);
                            scanner.setSource(buffer.getCharacters());
                        }
                        scanner.resetTo(sourceRange.getOffset(), nameRange.getOffset());
                        if (this.findAnnotation(scanner, annotationType)) {
                            return true;
                        }
                    }
                }
                ++i;
            }
        }
        catch (JavaModelException javaModelException) {
        }
        catch (InvalidInputException invalidInputException) {}
        return false;
    }

    private boolean findAnnotation(IScanner scanner, String annotationName) throws InvalidInputException {
        String simpleName = Signature.getSimpleName((String)annotationName);
        StringBuffer buf = new StringBuffer();
        int tok = scanner.getNextToken();
        while (tok != 158) {
            if (tok == 401) {
                buf.setLength(0);
                tok = this.readName(scanner, buf);
                String name = buf.toString();
                if (!name.equals(annotationName) && !name.equals(simpleName) && !name.endsWith(String.valueOf('.') + simpleName)) continue;
                return true;
            }
            tok = scanner.getNextToken();
        }
        return false;
    }

    private int readName(IScanner scanner, StringBuffer buf) throws InvalidInputException {
        int tok = scanner.getNextToken();
        while (tok == 5) {
            buf.append(scanner.getCurrentTokenSource());
            tok = scanner.getNextToken();
            if (tok != 6) {
                return tok;
            }
            buf.append('.');
            tok = scanner.getNextToken();
        }
        return tok;
    }

    private boolean hasProjectNature(IJavaElement element, String ntype) {
        try {
            IJavaProject jproj;
            if (element != null && (jproj = element.getJavaProject()) != null) {
                IProject proj = jproj.getProject();
                return proj.isAccessible() && proj.hasNature(ntype);
            }
            return false;
        }
        catch (CoreException coreException) {
            return false;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private boolean hasSuperclass(IJavaElement element, String qname) {
        try {
            IType type = this.getType(element);
            if (type == null) return false;
            IType[] stypes = type.newSupertypeHierarchy((IProgressMonitor)new NullProgressMonitor()).getAllSuperclasses(type);
            int i = 0;
            while (true) {
                if (i >= stypes.length) {
                    return false;
                }
                if (stypes[i].getFullyQualifiedName().equals(qname)) return true;
                if (stypes[i].getElementName().equals(qname)) {
                    return true;
                }
                ++i;
            }
        }
        catch (JavaModelException javaModelException) {}
        return false;
    }

    private boolean hasItemOnBuildPath(IJavaElement element, Object[] args) {
        if (element != null && args != null) {
            IJavaProject project = element.getJavaProject();
            HashSet<IJavaProject> searched = new HashSet<IJavaProject>();
            searched.add(project);
            return this.hasItemsOnBuildPath(project, searched, args);
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private boolean hasItemsOnBuildPath(IJavaProject project, Set searched, Object[] args) {
        try {
            ArrayList<IJavaProject> projects = new ArrayList<IJavaProject>();
            if (project != null && project.exists()) {
                IClasspathEntry[] entries = project.getResolvedClasspath(true);
                int i = 0;
                while (i < entries.length) {
                    IClasspathEntry entry = entries[i];
                    IPath path = entry.getPath();
                    String spath = path.toPortableString();
                    int j = 0;
                    while (j < args.length) {
                        if (spath.lastIndexOf((String)args[j]) != -1) {
                            return true;
                        }
                        ++j;
                    }
                    if (entry.getEntryKind() == 2) {
                        String name = entry.getPath().lastSegment();
                        IProject dep = ResourcesPlugin.getWorkspace().getRoot().getProject(name);
                        IJavaProject javaProject = JavaCore.create((IProject)dep);
                        if (!searched.contains(javaProject)) {
                            projects.add(javaProject);
                        }
                    }
                    ++i;
                }
            }
            Iterator iterator = projects.iterator();
            while (iterator.hasNext()) {
                IJavaProject jp = (IJavaProject)iterator.next();
                searched.add(jp);
                if (!this.hasItemsOnBuildPath(jp, searched, args)) continue;
                return true;
            }
            return false;
        }
        catch (JavaModelException javaModelException) {}
        return false;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private boolean implementsInterface(IJavaElement element, String qname) {
        try {
            IType type = this.getType(element);
            if (type == null) return false;
            IType[] itypes = type.newSupertypeHierarchy((IProgressMonitor)new NullProgressMonitor()).getAllInterfaces();
            int i = 0;
            while (true) {
                if (i >= itypes.length) {
                    return false;
                }
                if (itypes[i].getFullyQualifiedName().equals(qname)) {
                    return true;
                }
                ++i;
            }
        }
        catch (JavaModelException javaModelException) {}
        return false;
    }

    public boolean test(Object receiver, String property, Object[] args, Object expectedValue) {
        if (PROPERTY_IS_CONTAINER.equals(property)) {
            if (receiver instanceof IAdaptable) {
                IResource resource;
                IAdaptable iAdaptable = (IAdaptable)receiver;
                Class<?> clazz = class$0;
                if (clazz == null) {
                    try {
                        clazz = class$0 = Class.forName("org.eclipse.core.resources.IResource");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                if ((resource = (IResource)iAdaptable.getAdapter((Class)clazz)) != null) {
                    return resource instanceof IContainer;
                }
            }
            return false;
        }
        IJavaElement element = null;
        if (receiver instanceof IAdaptable) {
            IAdaptable iAdaptable = (IAdaptable)receiver;
            Class<?> clazz = class$1;
            if (clazz == null) {
                try {
                    clazz = class$1 = Class.forName("org.eclipse.jdt.core.IJavaElement");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((element = (IJavaElement)iAdaptable.getAdapter((Class)clazz)) != null && !element.exists()) {
                return false;
            }
        }
        if (PROPERTY_HAS_MAIN.equals(property)) {
            return this.hasMain(element);
        }
        if (PROPERTY_HAS_METHOD.equals(property)) {
            return this.hasMethod(element, args);
        }
        if (PROPERTY_HAS_METHOD_WITH_ANNOTATION.equals(property)) {
            return this.hasMethodWithAnnotation(element, args);
        }
        if (PROPERTY_HAS_TYPE_WITH_ANNOTATION.equals(property)) {
            return this.hasTypeWithAnnotation(element, (String)args[0]);
        }
        if (PROPERTY_BUILDPATH_REFERENCE.equals(property)) {
            return this.hasItemOnBuildPath(element, args);
        }
        if (PROPERTY_EXTENDS_CLASS.equals(property)) {
            return this.hasSuperclass(element, (String)args[0]);
        }
        if (PROPERTY_PROJECT_NATURE.equals(property)) {
            return this.hasProjectNature(element, (String)args[0]);
        }
        if (PROPERTY_EXTENDS_INTERFACE.equals(property)) {
            return this.implementsInterface(element, (String)args[0]);
        }
        if (PROPERTY_IS_PACKAGE_FRAGMENT.equals(property)) {
            return element instanceof IPackageFragment;
        }
        if (PROPERTY_IS_PACKAGE_FRAGMENT_ROOT.equals(property)) {
            return element instanceof IPackageFragmentRoot;
        }
        return false;
    }
}

