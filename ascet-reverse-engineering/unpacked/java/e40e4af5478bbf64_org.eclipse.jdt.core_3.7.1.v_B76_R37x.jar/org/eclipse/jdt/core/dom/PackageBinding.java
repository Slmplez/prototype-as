/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.jdt.core.dom;

import java.util.Iterator;
import java.util.List;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.dom.ASTParser;
import org.eclipse.jdt.core.dom.Annotation;
import org.eclipse.jdt.core.dom.AnnotationBinding;
import org.eclipse.jdt.core.dom.BindingResolver;
import org.eclipse.jdt.core.dom.CompilationUnit;
import org.eclipse.jdt.core.dom.IAnnotationBinding;
import org.eclipse.jdt.core.dom.IBinding;
import org.eclipse.jdt.core.dom.IPackageBinding;
import org.eclipse.jdt.core.dom.PackageDeclaration;
import org.eclipse.jdt.internal.compiler.env.IBinaryAnnotation;
import org.eclipse.jdt.internal.compiler.env.IBinaryType;
import org.eclipse.jdt.internal.compiler.env.INameEnvironment;
import org.eclipse.jdt.internal.compiler.env.NameEnvironmentAnswer;
import org.eclipse.jdt.internal.compiler.lookup.BinaryTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.NameLookup;
import org.eclipse.jdt.internal.core.SearchableEnvironment;

class PackageBinding
implements IPackageBinding {
    private static final String[] NO_NAME_COMPONENTS = CharOperation.NO_STRINGS;
    private static final String UNNAMED = Util.EMPTY_STRING;
    private static final char PACKAGE_NAME_SEPARATOR = '.';
    private org.eclipse.jdt.internal.compiler.lookup.PackageBinding binding;
    private String name;
    private BindingResolver resolver;
    private String[] components;

    PackageBinding(org.eclipse.jdt.internal.compiler.lookup.PackageBinding binding, BindingResolver resolver) {
        this.binding = binding;
        this.resolver = resolver;
    }

    public IAnnotationBinding[] getAnnotations() {
        try {
            INameEnvironment nameEnvironment = this.binding.environment.nameEnvironment;
            if (!(nameEnvironment instanceof SearchableEnvironment)) {
                return AnnotationBinding.NoAnnotations;
            }
            NameLookup nameLookup = ((SearchableEnvironment)nameEnvironment).nameLookup;
            if (nameLookup == null) {
                return AnnotationBinding.NoAnnotations;
            }
            String pkgName = this.getName();
            IPackageFragment[] pkgs = nameLookup.findPackageFragments(pkgName, false);
            if (pkgs == null) {
                return AnnotationBinding.NoAnnotations;
            }
            int i = 0;
            int len = pkgs.length;
            while (i < len) {
                int fragType = pkgs[i].getKind();
                switch (fragType) {
                    case 1: {
                        String unitName = "package-info.java";
                        ICompilationUnit unit = pkgs[i].getCompilationUnit(unitName);
                        if (unit == null || !unit.exists()) break;
                        ASTParser p = ASTParser.newParser(3);
                        p.setSource(unit);
                        p.setResolveBindings(true);
                        p.setUnitName(unitName);
                        p.setFocalPosition(0);
                        p.setKind(8);
                        CompilationUnit domUnit = (CompilationUnit)p.createAST(null);
                        PackageDeclaration pkgDecl = domUnit.getPackage();
                        if (pkgDecl == null) break;
                        List annos = pkgDecl.annotations();
                        if (annos == null || annos.isEmpty()) {
                            return AnnotationBinding.NoAnnotations;
                        }
                        IAnnotationBinding[] result = new IAnnotationBinding[annos.size()];
                        int index = 0;
                        Iterator it = annos.iterator();
                        while (it.hasNext()) {
                            result[index] = ((Annotation)it.next()).resolveAnnotationBinding();
                            if (result[index] == null) {
                                return AnnotationBinding.NoAnnotations;
                            }
                            ++index;
                        }
                        return result;
                    }
                    case 2: {
                        NameEnvironmentAnswer answer = nameEnvironment.findType(TypeConstants.PACKAGE_INFO_NAME, this.binding.compoundName);
                        if (answer == null || !answer.isBinaryType()) break;
                        IBinaryType type = answer.getBinaryType();
                        char[][][] missingTypeNames = type.getMissingTypeNames();
                        IBinaryAnnotation[] binaryAnnotations = type.getAnnotations();
                        org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding[] binaryInstances = BinaryTypeBinding.createAnnotations(binaryAnnotations, this.binding.environment, missingTypeNames);
                        org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding[] allInstances = org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding.addStandardAnnotations(binaryInstances, type.getTagBits(), this.binding.environment);
                        int total = allInstances.length;
                        IAnnotationBinding[] domInstances = new AnnotationBinding[total];
                        int a = 0;
                        while (a < total) {
                            IAnnotationBinding annotationInstance = this.resolver.getAnnotationInstance(allInstances[a]);
                            if (annotationInstance == null) {
                                return AnnotationBinding.NoAnnotations;
                            }
                            domInstances[a] = annotationInstance;
                            ++a;
                        }
                        return domInstances;
                    }
                }
                ++i;
            }
        }
        catch (JavaModelException javaModelException) {
            return AnnotationBinding.NoAnnotations;
        }
        return AnnotationBinding.NoAnnotations;
    }

    public String getName() {
        if (this.name == null) {
            this.computeNameAndComponents();
        }
        return this.name;
    }

    public boolean isUnnamed() {
        return this.getName().equals(UNNAMED);
    }

    public String[] getNameComponents() {
        if (this.components == null) {
            this.computeNameAndComponents();
        }
        return this.components;
    }

    public int getKind() {
        return 1;
    }

    public int getModifiers() {
        return 0;
    }

    public boolean isDeprecated() {
        return false;
    }

    public boolean isRecovered() {
        return false;
    }

    public boolean isSynthetic() {
        return false;
    }

    public IJavaElement getJavaElement() {
        INameEnvironment nameEnvironment = this.binding.environment.nameEnvironment;
        if (!(nameEnvironment instanceof SearchableEnvironment)) {
            return null;
        }
        NameLookup nameLookup = ((SearchableEnvironment)nameEnvironment).nameLookup;
        if (nameLookup == null) {
            return null;
        }
        IPackageFragment[] pkgs = nameLookup.findPackageFragments(this.getName(), false);
        if (pkgs == null) {
            return null;
        }
        if (pkgs.length == 0) {
            org.eclipse.jdt.internal.core.util.Util.log((IStatus)new Status(2, "org.eclipse.jdt.core", "Searching for package " + this.getName() + " returns an empty array"));
            return null;
        }
        return pkgs[0];
    }

    public String getKey() {
        return new String(this.binding.computeUniqueKey());
    }

    public boolean isEqualTo(IBinding other) {
        if (other == this) {
            return true;
        }
        if (other == null) {
            return false;
        }
        if (!(other instanceof PackageBinding)) {
            return false;
        }
        org.eclipse.jdt.internal.compiler.lookup.PackageBinding packageBinding2 = ((PackageBinding)other).binding;
        return CharOperation.equals(this.binding.compoundName, packageBinding2.compoundName);
    }

    private void computeNameAndComponents() {
        char[][] compoundName = this.binding.compoundName;
        if (compoundName == CharOperation.NO_CHAR_CHAR || compoundName == null) {
            this.name = UNNAMED;
            this.components = NO_NAME_COMPONENTS;
        } else {
            int length = compoundName.length;
            this.components = new String[length];
            StringBuffer buffer = new StringBuffer();
            int i = 0;
            while (i < length - 1) {
                this.components[i] = new String(compoundName[i]);
                buffer.append(compoundName[i]).append('.');
                ++i;
            }
            this.components[length - 1] = new String(compoundName[length - 1]);
            buffer.append(compoundName[length - 1]);
            this.name = buffer.toString();
        }
    }

    public String toString() {
        return this.binding.toString();
    }
}

