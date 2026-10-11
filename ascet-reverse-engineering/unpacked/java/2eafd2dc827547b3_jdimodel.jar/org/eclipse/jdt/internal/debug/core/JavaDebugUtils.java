/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.VMDisconnectedException
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.debug.core.DebugException
 *  org.eclipse.debug.core.ILaunch
 *  org.eclipse.debug.core.model.ISourceLocator
 *  org.eclipse.debug.core.sourcelookup.ISourceLookupDirector
 *  org.eclipse.jdt.core.IClassFile
 *  org.eclipse.jdt.core.ICompilationUnit
 *  org.eclipse.jdt.core.IJavaElement
 *  org.eclipse.jdt.core.IJavaProject
 *  org.eclipse.jdt.core.IType
 *  org.eclipse.jdt.core.JavaCore
 *  org.eclipse.jdt.core.dom.ASTParser
 *  org.eclipse.jdt.core.dom.ASTVisitor
 *  org.eclipse.jdt.core.dom.AnonymousClassDeclaration
 *  org.eclipse.jdt.core.dom.CompilationUnit
 *  org.eclipse.jdt.core.dom.ITypeBinding
 *  org.eclipse.jdt.core.dom.TypeDeclaration
 */
package org.eclipse.jdt.internal.debug.core;

import com.sun.jdi.VMDisconnectedException;
import java.io.File;
import java.util.ArrayList;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.debug.core.DebugException;
import org.eclipse.debug.core.ILaunch;
import org.eclipse.debug.core.model.ISourceLocator;
import org.eclipse.debug.core.sourcelookup.ISourceLookupDirector;
import org.eclipse.jdt.core.IClassFile;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.dom.ASTParser;
import org.eclipse.jdt.core.dom.ASTVisitor;
import org.eclipse.jdt.core.dom.AnonymousClassDeclaration;
import org.eclipse.jdt.core.dom.CompilationUnit;
import org.eclipse.jdt.core.dom.ITypeBinding;
import org.eclipse.jdt.core.dom.TypeDeclaration;
import org.eclipse.jdt.debug.core.IJavaReferenceType;
import org.eclipse.jdt.debug.core.IJavaStackFrame;
import org.eclipse.jdt.debug.core.IJavaType;
import org.eclipse.jdt.debug.core.IJavaValue;

public class JavaDebugUtils {
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    public static IType resolveDeclaringType(IJavaStackFrame frame) throws CoreException {
        IJavaElement javaElement = JavaDebugUtils.resolveJavaElement(frame, frame.getLaunch());
        if (javaElement != null) {
            return JavaDebugUtils.resolveType(frame.getDeclaringTypeName(), javaElement);
        }
        return null;
    }

    public static IType resolveType(IJavaValue value) throws CoreException {
        IJavaElement javaElement = JavaDebugUtils.resolveJavaElement(value, value.getLaunch());
        if (javaElement != null) {
            return JavaDebugUtils.resolveType(value.getJavaType().getName(), javaElement);
        }
        return null;
    }

    public static IType resolveType(IJavaType type) throws CoreException {
        IJavaElement element = JavaDebugUtils.resolveJavaElement(type, type.getLaunch());
        if (element != null) {
            return JavaDebugUtils.resolveType(type.getName(), element);
        }
        return null;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static String getSourceName(Object object) throws CoreException {
        String typeName;
        block15: {
            if (object instanceof String) {
                return (String)object;
            }
            IJavaStackFrame frame = null;
            if (object instanceof IAdaptable) {
                IAdaptable iAdaptable = (IAdaptable)object;
                Class<?> clazz = class$0;
                if (clazz == null) {
                    Class<?> clazz2;
                    try {
                        clazz2 = Class.forName("org.eclipse.jdt.debug.core.IJavaStackFrame");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                    clazz = class$0 = clazz2;
                }
                frame = (IJavaStackFrame)iAdaptable.getAdapter((Class)clazz);
            }
            typeName = null;
            try {
                IJavaReferenceType refType;
                String[] sourcePaths;
                if (frame != null) {
                    if (frame.isObsolete()) {
                        return null;
                    }
                    String sourceName = frame.getSourcePath();
                    if (sourceName != null) {
                        return sourceName;
                    }
                    typeName = frame.getDeclaringTypeName();
                    break block15;
                }
                if (object instanceof IJavaValue) {
                    object = ((IJavaValue)object).getJavaType();
                }
                if (object instanceof IJavaReferenceType && (sourcePaths = (refType = (IJavaReferenceType)object).getSourcePaths(null)) != null && sourcePaths.length > 0) {
                    return sourcePaths[0];
                }
                if (object instanceof IJavaType) {
                    typeName = ((IJavaType)object).getName();
                }
            }
            catch (DebugException e) {
                int code = e.getStatus().getCode();
                if (code != 100 && code != 130 && !(e.getStatus().getException() instanceof VMDisconnectedException)) {
                    throw e;
                }
                return null;
            }
        }
        if (typeName != null) {
            return JavaDebugUtils.generateSourceName(typeName);
        }
        return null;
    }

    public static String generateSourceName(String qualifiedTypeName) {
        int index = qualifiedTypeName.lastIndexOf(46);
        if (index < 0) {
            index = 0;
        }
        if ((index = (qualifiedTypeName = qualifiedTypeName.replace('.', File.separatorChar)).indexOf(36)) >= 0) {
            qualifiedTypeName = qualifiedTypeName.substring(0, index);
        }
        qualifiedTypeName = qualifiedTypeName.length() == 0 ? null : String.valueOf(qualifiedTypeName) + ".java";
        return qualifiedTypeName;
    }

    private static IType resolveType(final String qualifiedName, IJavaElement javaElement) {
        IType type = null;
        String[] typeNames = JavaDebugUtils.getNestedTypeNames(qualifiedName);
        if (javaElement instanceof IClassFile) {
            type = ((IClassFile)javaElement).getType();
        } else if (javaElement instanceof ICompilationUnit) {
            type = ((ICompilationUnit)javaElement).getType(typeNames[0]);
        } else if (javaElement instanceof IType) {
            type = (IType)javaElement;
        }
        if (type != null) {
            int i = 1;
            while (i < typeNames.length) {
                String innerTypeName = typeNames[i];
                if (innerTypeName.length() > 0) {
                    class ResultException
                    extends RuntimeException {
                        private static final long serialVersionUID = 1L;
                        private final IType fResult;

                        public ResultException(IType result) {
                            this.fResult = result;
                        }
                    }
                    try {
                        Integer.parseInt(innerTypeName.substring(0, 1));
                        ASTParser parser = ASTParser.newParser((int)4);
                        parser.setResolveBindings(true);
                        parser.setSource(type.getTypeRoot());
                        CompilationUnit cu = (CompilationUnit)parser.createAST(null);
                        cu.accept(new ASTVisitor(false){

                            public boolean visit(AnonymousClassDeclaration node) {
                                ITypeBinding binding = node.resolveBinding();
                                if (binding == null) {
                                    return false;
                                }
                                if (qualifiedName.equals(binding.getBinaryName())) {
                                    throw new ResultException((IType)binding.getJavaElement());
                                }
                                return true;
                            }

                            public boolean visit(TypeDeclaration node) {
                                ITypeBinding binding = node.resolveBinding();
                                if (binding == null) {
                                    return false;
                                }
                                if (qualifiedName.equals(binding.getBinaryName())) {
                                    throw new ResultException((IType)binding.getJavaElement());
                                }
                                return true;
                            }
                        });
                        return type;
                    }
                    catch (NumberFormatException numberFormatException) {
                    }
                    catch (IllegalStateException illegalStateException) {
                        return type;
                    }
                    catch (ResultException e) {
                        return e.fResult;
                    }
                }
                type = type.getType(innerTypeName);
                ++i;
            }
        }
        return type;
    }

    public static IJavaElement resolveJavaElement(Object object, ILaunch launch) throws CoreException {
        Object sourceElement = JavaDebugUtils.resolveSourceElement(object, launch);
        return JavaDebugUtils.getJavaElement(sourceElement);
    }

    public static IJavaElement getJavaElement(Object sourceElement) {
        IJavaElement javaElement = null;
        if (sourceElement instanceof IJavaElement) {
            javaElement = (IJavaElement)sourceElement;
        } else if (sourceElement instanceof IAdaptable) {
            IAdaptable iAdaptable = (IAdaptable)sourceElement;
            Class<?> clazz = class$1;
            if (clazz == null) {
                try {
                    clazz = class$1 = Class.forName("org.eclipse.jdt.core.IJavaElement");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            javaElement = (IJavaElement)iAdaptable.getAdapter((Class)clazz);
        }
        if (javaElement == null && sourceElement instanceof IResource) {
            javaElement = JavaCore.create((IResource)((IResource)sourceElement));
        }
        if (javaElement == null) {
            return null;
        }
        if (!javaElement.exists()) {
            return null;
        }
        return javaElement;
    }

    public static Object resolveSourceElement(Object object, ILaunch launch) throws CoreException {
        ISourceLookupDirector director;
        Object[] objects;
        ISourceLocator sourceLocator = launch.getSourceLocator();
        if (sourceLocator instanceof ISourceLookupDirector && (objects = (director = (ISourceLookupDirector)sourceLocator).findSourceElements(object)).length > 0) {
            return objects[0];
        }
        return null;
    }

    private static String[] getNestedTypeNames(String typeName) {
        int index = typeName.lastIndexOf(46);
        if (index >= 0) {
            typeName = typeName.substring(index + 1);
        }
        index = typeName.indexOf(36);
        ArrayList<String> list = new ArrayList<String>(1);
        while (index >= 0) {
            list.add(typeName.substring(0, index));
            typeName = typeName.substring(index + 1);
            index = typeName.indexOf(36);
        }
        list.add(typeName);
        return list.toArray(new String[list.size()]);
    }

    public static IJavaElement findElement(String qualifiedTypeName, IJavaProject project) throws CoreException {
        String[] javaLikeExtensions = JavaCore.getJavaLikeExtensions();
        String path = qualifiedTypeName;
        int pos = path.indexOf(36);
        if (pos != -1) {
            path = path.substring(0, pos);
        }
        path = path.replace('.', '/');
        path = String.valueOf(path) + ".";
        int i = 0;
        while (i < javaLikeExtensions.length) {
            String ext = javaLikeExtensions[i];
            IJavaElement element = project.findElement((IPath)new Path(String.valueOf(path) + ext));
            if (element != null) {
                return element;
            }
            ++i;
        }
        return null;
    }
}

