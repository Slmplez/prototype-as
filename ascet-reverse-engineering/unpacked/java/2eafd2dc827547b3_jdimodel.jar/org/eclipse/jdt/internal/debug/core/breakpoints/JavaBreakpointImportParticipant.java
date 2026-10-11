/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IMarker
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.debug.core.model.IBreakpoint
 *  org.eclipse.debug.core.model.IBreakpointImportParticipant
 *  org.eclipse.jdt.core.ICompilationUnit
 *  org.eclipse.jdt.core.JavaCore
 *  org.eclipse.jdt.core.Signature
 *  org.eclipse.jdt.core.dom.ASTNode
 *  org.eclipse.jdt.core.dom.ASTParser
 *  org.eclipse.jdt.core.dom.ASTVisitor
 *  org.eclipse.jdt.core.dom.AbstractTypeDeclaration
 *  org.eclipse.jdt.core.dom.ArrayType
 *  org.eclipse.jdt.core.dom.CompilationUnit
 *  org.eclipse.jdt.core.dom.EnumDeclaration
 *  org.eclipse.jdt.core.dom.FieldDeclaration
 *  org.eclipse.jdt.core.dom.ITypeBinding
 *  org.eclipse.jdt.core.dom.MethodDeclaration
 *  org.eclipse.jdt.core.dom.PackageDeclaration
 *  org.eclipse.jdt.core.dom.ParameterizedType
 *  org.eclipse.jdt.core.dom.SimpleName
 *  org.eclipse.jdt.core.dom.SingleVariableDeclaration
 *  org.eclipse.jdt.core.dom.Type
 *  org.eclipse.jdt.core.dom.TypeDeclaration
 *  org.eclipse.jdt.core.dom.VariableDeclarationFragment
 */
package org.eclipse.jdt.internal.debug.core.breakpoints;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Stack;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IMarker;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.core.runtime.Status;
import org.eclipse.debug.core.model.IBreakpoint;
import org.eclipse.debug.core.model.IBreakpointImportParticipant;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.ASTParser;
import org.eclipse.jdt.core.dom.ASTVisitor;
import org.eclipse.jdt.core.dom.AbstractTypeDeclaration;
import org.eclipse.jdt.core.dom.ArrayType;
import org.eclipse.jdt.core.dom.CompilationUnit;
import org.eclipse.jdt.core.dom.EnumDeclaration;
import org.eclipse.jdt.core.dom.FieldDeclaration;
import org.eclipse.jdt.core.dom.ITypeBinding;
import org.eclipse.jdt.core.dom.MethodDeclaration;
import org.eclipse.jdt.core.dom.PackageDeclaration;
import org.eclipse.jdt.core.dom.ParameterizedType;
import org.eclipse.jdt.core.dom.SimpleName;
import org.eclipse.jdt.core.dom.SingleVariableDeclaration;
import org.eclipse.jdt.core.dom.Type;
import org.eclipse.jdt.core.dom.TypeDeclaration;
import org.eclipse.jdt.core.dom.VariableDeclarationFragment;
import org.eclipse.jdt.debug.core.IJavaWatchpoint;
import org.eclipse.jdt.internal.debug.core.breakpoints.JavaClassPrepareBreakpoint;
import org.eclipse.jdt.internal.debug.core.breakpoints.JavaExceptionBreakpoint;
import org.eclipse.jdt.internal.debug.core.breakpoints.JavaLineBreakpoint;
import org.eclipse.jdt.internal.debug.core.breakpoints.JavaMethodBreakpoint;
import org.eclipse.jdt.internal.debug.core.breakpoints.JavaMethodEntryBreakpoint;
import org.eclipse.jdt.internal.debug.core.breakpoints.JavaPatternBreakpoint;
import org.eclipse.jdt.internal.debug.core.breakpoints.JavaStratumLineBreakpoint;
import org.eclipse.jdt.internal.debug.core.breakpoints.JavaTargetPatternBreakpoint;
import org.eclipse.jdt.internal.debug.core.breakpoints.JavaWatchpoint;
import org.eclipse.jdt.internal.debug.core.breakpoints.ValidBreakpointLocationLocator;

public class JavaBreakpointImportParticipant
implements IBreakpointImportParticipant {
    public boolean matches(Map attributes, IBreakpoint breakpoint) throws CoreException {
        if (attributes == null || breakpoint == null) {
            return false;
        }
        String type = (String)attributes.get("type");
        if (type == null) {
            return false;
        }
        if (!breakpoint.getMarker().getType().equals(type)) {
            return false;
        }
        if (breakpoint instanceof JavaClassPrepareBreakpoint) {
            return this.matchesClassBreakpoint(attributes, (JavaClassPrepareBreakpoint)breakpoint);
        }
        if (breakpoint instanceof JavaExceptionBreakpoint) {
            return this.matchesExceptionBreakpoint(attributes, (JavaExceptionBreakpoint)breakpoint);
        }
        if (breakpoint instanceof JavaMethodBreakpoint) {
            return this.matchesMethodBreakpoint(attributes, (JavaMethodBreakpoint)breakpoint);
        }
        if (breakpoint instanceof JavaMethodEntryBreakpoint) {
            return this.matchesMethodEntryBreakpoint(attributes, (JavaMethodEntryBreakpoint)breakpoint);
        }
        if (breakpoint instanceof JavaWatchpoint) {
            return this.matchesWatchpoint(attributes, (JavaWatchpoint)breakpoint);
        }
        if (breakpoint instanceof JavaStratumLineBreakpoint) {
            return this.matchesStratumLineBreakpoint(attributes, (JavaStratumLineBreakpoint)breakpoint);
        }
        if (breakpoint instanceof JavaPatternBreakpoint) {
            return this.matchesPatternBreakpoint(attributes, (JavaPatternBreakpoint)breakpoint);
        }
        if (breakpoint instanceof JavaTargetPatternBreakpoint) {
            return this.matchesTargetPatternBreakpoint(attributes, (JavaTargetPatternBreakpoint)breakpoint);
        }
        if (breakpoint instanceof JavaLineBreakpoint) {
            return this.matchesLineBreakpoint(attributes, (JavaLineBreakpoint)breakpoint);
        }
        return false;
    }

    public void verify(IBreakpoint breakpoint) throws CoreException {
        ICompilationUnit cunit;
        IResource resource = breakpoint.getMarker().getResource();
        CompilationUnit unit = null;
        if (resource != null && resource.getType() == 1 && (cunit = JavaCore.createCompilationUnitFrom((IFile)((IFile)resource))) != null) {
            ASTParser parser = ASTParser.newParser((int)4);
            parser.setSource(cunit);
            parser.setResolveBindings(true);
            unit = (CompilationUnit)parser.createAST((IProgressMonitor)new NullProgressMonitor());
        }
        if (unit != null) {
            if (breakpoint instanceof JavaClassPrepareBreakpoint || breakpoint instanceof JavaWatchpoint || breakpoint instanceof JavaMethodEntryBreakpoint || breakpoint instanceof JavaMethodBreakpoint) {
                unit.accept((ASTVisitor)new BreakpointVerifier(breakpoint, unit));
            } else if (breakpoint instanceof JavaLineBreakpoint) {
                JavaLineBreakpoint bp = (JavaLineBreakpoint)breakpoint;
                int currentline = bp.getLineNumber();
                ValidBreakpointLocationLocator locator = new ValidBreakpointLocationLocator(unit, currentline, true, true);
                unit.accept((ASTVisitor)locator);
                int newline = locator.getLineLocation();
                if (locator.getLocationType() == 1) {
                    if (currentline != newline) {
                        bp.getMarker().setAttribute("org.eclipse.jdt.debug.core.typeName", (Object)locator.getFullyQualifiedTypeName());
                        bp.getMarker().setAttribute("lineNumber", newline);
                        int length = bp.getCharEnd() - bp.getCharStart();
                        int pos = unit.getPosition(newline, 1);
                        bp.getMarker().setAttribute("charStart", pos);
                        bp.getMarker().setAttribute("charEnd", pos + length);
                    }
                } else {
                    throw new CoreException(Status.CANCEL_STATUS);
                }
            }
        }
    }

    private boolean attributesEqual(Object attr1, Object attr2) {
        if (attr1 == null) {
            return attr2 == null;
        }
        return attr1.equals(attr2);
    }

    private boolean matchesLineBreakpoint(Map attributes, JavaLineBreakpoint breakpoint) throws CoreException {
        Integer line = (Integer)attributes.get("lineNumber");
        return breakpoint.getLineNumber() == (line == null ? -1 : line) && this.attributesEqual(breakpoint.getTypeName(), attributes.get("org.eclipse.jdt.debug.core.typeName"));
    }

    private boolean matchesClassBreakpoint(Map attributes, JavaClassPrepareBreakpoint breakpoint) throws CoreException {
        Integer type = (Integer)attributes.get("org.eclipse.jdt.debug.core.memberType");
        return this.attributesEqual(breakpoint.getTypeName(), attributes.get("org.eclipse.jdt.debug.core.typeName")) && breakpoint.getMemberType() == (type == null ? -1 : type);
    }

    private boolean matchesExceptionBreakpoint(Map attributes, JavaExceptionBreakpoint breakpoint) throws CoreException {
        return this.attributesEqual(breakpoint.getTypeName(), attributes.get("org.eclipse.jdt.debug.core.typeName"));
    }

    private boolean matchesMethodBreakpoint(Map attributes, JavaMethodBreakpoint breakpoint) throws CoreException {
        return this.attributesEqual(breakpoint.getTypeName(), attributes.get("org.eclipse.jdt.debug.core.typeName")) && this.attributesEqual(breakpoint.getMethodName(), attributes.get("org.eclipse.jdt.debug.core.methodName")) && this.attributesEqual(breakpoint.getMethodSignature(), attributes.get("org.eclipse.jdt.debug.core.methodSignature"));
    }

    private boolean matchesMethodEntryBreakpoint(Map attributes, JavaMethodEntryBreakpoint breakpoint) throws CoreException {
        return this.attributesEqual(breakpoint.getTypeName(), attributes.get("org.eclipse.jdt.debug.core.typeName")) && this.attributesEqual(breakpoint.getMethodName(), attributes.get("org.eclipse.jdt.debug.core.methodName")) && this.attributesEqual(breakpoint.getMethodSignature(), attributes.get("org.eclipse.jdt.debug.core.methodSignature"));
    }

    private boolean matchesWatchpoint(Map attributes, JavaWatchpoint watchpoint) throws CoreException {
        return watchpoint.getFieldName().equals(attributes.get("org.eclipse.jdt.debug.core.fieldName")) && this.attributesEqual(watchpoint.getTypeName(), attributes.get("org.eclipse.jdt.debug.core.typeName"));
    }

    private boolean matchesStratumLineBreakpoint(Map attributes, JavaStratumLineBreakpoint breakpoint) throws CoreException {
        Integer line = (Integer)attributes.get("lineNumber");
        return breakpoint.getLineNumber() == (line == null ? -1 : line) && this.attributesEqual(breakpoint.getSourceName(), attributes.get("org.eclipse.jdt.debug.core.sourceName")) && this.attributesEqual(breakpoint.getStratum(), attributes.get("org.eclipse.jdt.debug.stratum")) && this.attributesEqual(breakpoint.getSourcePath(), attributes.get("org.eclipse.jdt.debug.source_path"));
    }

    private boolean matchesPatternBreakpoint(Map attributes, JavaPatternBreakpoint breakpoint) throws CoreException {
        Integer line = (Integer)attributes.get("lineNumber");
        return breakpoint.getLineNumber() == (line == null ? -1 : line) && this.attributesEqual(breakpoint.getSourceName(), attributes.get("org.eclipse.jdt.debug.core.sourceName")) && breakpoint.getPattern().equals(attributes.get("org.eclipse.jdt.debug.core.pattern"));
    }

    private boolean matchesTargetPatternBreakpoint(Map attributes, JavaTargetPatternBreakpoint breakpoint) throws CoreException {
        Integer line = (Integer)attributes.get("lineNumber");
        return breakpoint.getLineNumber() == (line == null ? -1 : line) && this.attributesEqual(breakpoint.getTypeName(), attributes.get("org.eclipse.jdt.debug.core.typeName")) && this.attributesEqual(breakpoint.getSourceName(), attributes.get("org.eclipse.jdt.debug.core.sourceName"));
    }

    class BreakpointVerifier
    extends ASTVisitor {
        final int TYPE = 0;
        final int METHOD = 1;
        final int FIELD = 2;
        String fTypename = null;
        String fName = null;
        String fSignature = null;
        IBreakpoint fBreakpoint = null;
        CompilationUnit fUnit = null;
        Stack fTypeNameStack = null;

        public BreakpointVerifier(IBreakpoint breakpoint, CompilationUnit unit) {
            this.fTypename = this.getBreakpointTypeName(breakpoint);
            this.fName = this.getMemberName(breakpoint);
            this.fSignature = this.getMemberSignature(breakpoint);
            this.fBreakpoint = breakpoint;
            this.fUnit = unit;
            this.fTypeNameStack = new Stack();
        }

        String getBreakpointTypeName(IBreakpoint breakpoint) {
            return breakpoint.getMarker().getAttribute("org.eclipse.jdt.debug.core.typeName", null);
        }

        String getMemberName(IBreakpoint breakpoint) {
            if (breakpoint instanceof IJavaWatchpoint) {
                return breakpoint.getMarker().getAttribute("org.eclipse.jdt.debug.core.fieldName", null);
            }
            return breakpoint.getMarker().getAttribute("org.eclipse.jdt.debug.core.methodName", null);
        }

        String getMemberSignature(IBreakpoint breakpoint) {
            return breakpoint.getMarker().getAttribute("org.eclipse.jdt.debug.core.methodSignature", null);
        }

        private String getTypeName(ASTNode node) {
            return this.getTypeName(node, new StringBuffer());
        }

        private String getTypeName(ASTNode node, StringBuffer buffer) {
            switch (node.getNodeType()) {
                case 15: {
                    CompilationUnit unit = (CompilationUnit)node;
                    PackageDeclaration packageDeclaration = unit.getPackage();
                    if (packageDeclaration != null) {
                        buffer.insert(0, '.');
                        buffer.insert(0, packageDeclaration.getName().getFullyQualifiedName());
                    }
                    return String.valueOf(buffer);
                }
            }
            if (node instanceof AbstractTypeDeclaration) {
                AbstractTypeDeclaration typeDeclaration = (AbstractTypeDeclaration)node;
                ITypeBinding binding = typeDeclaration.resolveBinding();
                if (binding != null) {
                    return binding.getBinaryName();
                }
                if (typeDeclaration.isPackageMemberTypeDeclaration()) {
                    buffer.insert(0, typeDeclaration.getName().getIdentifier());
                } else {
                    buffer.insert(0, typeDeclaration.getName().getFullyQualifiedName());
                    buffer.insert(0, '$');
                }
            }
            return this.getTypeName(node.getParent(), buffer);
        }

        public boolean visit(TypeDeclaration node) {
            return this.doTypeVisit((AbstractTypeDeclaration)node);
        }

        public void endVisit(TypeDeclaration node) {
            this.doEndTypeVisit();
        }

        public boolean visit(EnumDeclaration node) {
            return this.doTypeVisit((AbstractTypeDeclaration)node);
        }

        public void endVisit(EnumDeclaration node) {
            this.doEndTypeVisit();
        }

        private void doEndTypeVisit() {
            if (!this.fTypeNameStack.isEmpty()) {
                this.fTypeNameStack.pop();
            }
        }

        private boolean doTypeVisit(AbstractTypeDeclaration node) {
            SimpleName name = node.getName();
            String typename = this.getTypeName((ASTNode)node);
            this.fTypeNameStack.push(typename);
            if (!this.fTypename.startsWith(typename)) {
                return false;
            }
            if (this.fBreakpoint instanceof JavaClassPrepareBreakpoint && name != null && typename.equals(this.fTypename)) {
                int charstart = name.getStartPosition();
                IMarker marker = this.fBreakpoint.getMarker();
                try {
                    marker.setAttribute("charStart", charstart);
                    marker.setAttribute("charEnd", charstart + name.getLength());
                }
                catch (CoreException coreException) {}
                return false;
            }
            return this.fTypename.indexOf(36) > -1 || name != null;
        }

        public boolean visit(FieldDeclaration node) {
            if (!this.fTypename.equals(this.fTypeNameStack.peek())) {
                return false;
            }
            List fragments = node.fragments();
            VariableDeclarationFragment fragment = null;
            SimpleName name = null;
            IMarker marker = this.fBreakpoint.getMarker();
            int currentstart = marker.getAttribute("charStart", -1);
            Iterator iter = fragments.iterator();
            while (iter.hasNext()) {
                int charstart;
                fragment = (VariableDeclarationFragment)iter.next();
                name = fragment.getName();
                if (name == null || !name.getFullyQualifiedName().equals(this.fName) || currentstart == (charstart = name.getStartPosition())) continue;
                try {
                    marker.setAttribute("charStart", charstart);
                    marker.setAttribute("charEnd", charstart + name.getLength());
                }
                catch (CoreException coreException) {}
            }
            return false;
        }

        public boolean visit(MethodDeclaration node) {
            int charstart;
            IMarker marker;
            int currentstart;
            String sig;
            SimpleName name = node.getName();
            String typename = (String)this.fTypeNameStack.peek();
            if (!this.fTypename.equals(typename) && !this.fTypename.startsWith(typename)) {
                return false;
            }
            if (name != null && name.getFullyQualifiedName().equals(this.fName) && (sig = this.getMethodSignatureFromNode(node)) != null && (sig = sig.replaceAll("\\.", "/")).equals(this.fSignature) && (currentstart = (marker = this.fBreakpoint.getMarker()).getAttribute("charStart", -1)) != (charstart = name.getStartPosition())) {
                try {
                    marker.setAttribute("charStart", charstart);
                    marker.setAttribute("charEnd", charstart + name.getLength());
                }
                catch (CoreException coreException) {}
            }
            return this.fBreakpoint instanceof JavaClassPrepareBreakpoint;
        }

        private String getMethodSignatureFromNode(MethodDeclaration node) {
            Assert.isNotNull((Object)node);
            List params = node.parameters();
            List rparams = this.getParametersTypeNames(params);
            if (rparams.size() == params.size()) {
                if (!node.isConstructor()) {
                    String rtype;
                    Type returnType = node.getReturnType2();
                    if (returnType != null && (rtype = this.getTypeSignature(returnType)) != null) {
                        return Signature.createMethodSignature((String[])rparams.toArray(new String[rparams.size()]), (String)rtype);
                    }
                } else {
                    StringBuffer buffer = new StringBuffer();
                    buffer.append("<init>");
                    this.collectSyntheticParam(node, rparams);
                    buffer.append(Signature.createMethodSignature((String[])rparams.toArray(new String[rparams.size()]), (String)"V"));
                    return buffer.toString();
                }
            }
            return null;
        }

        private List getParametersTypeNames(List rawparams) {
            ArrayList<String> rparams = new ArrayList<String>(rawparams.size());
            SingleVariableDeclaration param = null;
            String pname = null;
            Iterator iter = rawparams.iterator();
            while (iter.hasNext()) {
                param = (SingleVariableDeclaration)iter.next();
                pname = this.getTypeSignature(param.getType());
                if (pname == null) continue;
                rparams.add(pname);
            }
            return rparams;
        }

        private String getTypeSignature(Type type) {
            ITypeBinding binding = type.resolveBinding();
            if (binding == null) {
                return null;
            }
            switch (type.getNodeType()) {
                case 39: 
                case 43: 
                case 75: {
                    return Signature.createTypeSignature((String)binding.getQualifiedName(), (boolean)true);
                }
                case 5: {
                    ArrayType a = (ArrayType)type;
                    return Signature.createArraySignature((String)this.getTypeSignature(a.getElementType()), (int)a.getDimensions());
                }
                case 74: {
                    return this.getTypeSignature(((ParameterizedType)type).getType());
                }
            }
            return null;
        }

        private void collectSyntheticParam(MethodDeclaration method, List rparams) {
            Assert.isNotNull((Object)method);
            if (this.isInTopLevelType(method)) {
                return;
            }
            ASTNode parent = method.getParent();
            StringBuffer name = new StringBuffer();
            while (parent != null) {
                CompilationUnit cunit;
                PackageDeclaration pdec;
                if ((parent = parent.getParent()) instanceof AbstractTypeDeclaration) {
                    AbstractTypeDeclaration type = (AbstractTypeDeclaration)parent;
                    name.insert(0, type.getName().getFullyQualifiedName());
                    if (!type.isMemberTypeDeclaration()) continue;
                    name.insert(0, '$');
                    continue;
                }
                if (!(parent instanceof CompilationUnit) || (pdec = (cunit = (CompilationUnit)parent).getPackage()) == null) continue;
                name.insert(0, '.');
                name.insert(0, cunit.getPackage().getName().getFullyQualifiedName());
            }
            name.insert(0, "L");
            name.append(';');
            if (name.length() > 2) {
                rparams.add(0, name.toString());
            }
        }

        private boolean isInTopLevelType(MethodDeclaration method) {
            TypeDeclaration type = (TypeDeclaration)method.getParent();
            return type != null && type.isPackageMemberTypeDeclaration();
        }
    }
}

