/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IContainer
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IFolder
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IResourceRuleFactory
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.jobs.ISchedulingRule
 *  org.eclipse.core.runtime.jobs.MultiRule
 *  org.eclipse.text.edits.TextEdit
 */
package org.eclipse.jdt.internal.core;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceRuleFactory;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.core.runtime.jobs.MultiRule;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaElementDelta;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.dom.AST;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.ASTParser;
import org.eclipse.jdt.core.dom.AbstractTypeDeclaration;
import org.eclipse.jdt.core.dom.Javadoc;
import org.eclipse.jdt.core.dom.MethodDeclaration;
import org.eclipse.jdt.core.dom.Name;
import org.eclipse.jdt.core.dom.PackageDeclaration;
import org.eclipse.jdt.core.dom.SimpleName;
import org.eclipse.jdt.core.dom.rewrite.ASTRewrite;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;
import org.eclipse.jdt.internal.core.CompilationUnit;
import org.eclipse.jdt.internal.core.DefaultWorkingCopyOwner;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.JavaElementDelta;
import org.eclipse.jdt.internal.core.JavaModelStatus;
import org.eclipse.jdt.internal.core.MultiOperation;
import org.eclipse.jdt.internal.core.PackageFragment;
import org.eclipse.jdt.internal.core.PackageFragmentRoot;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jdt.internal.core.util.Util;
import org.eclipse.text.edits.TextEdit;

public class CopyResourceElementsOperation
extends MultiOperation
implements SuffixConstants {
    protected ArrayList createdElements;
    protected Map deltasPerProject = new HashMap(1);
    protected ASTParser parser;

    public CopyResourceElementsOperation(IJavaElement[] resourcesToCopy, IJavaElement[] destContainers, boolean force) {
        super(resourcesToCopy, destContainers, force);
        this.initializeASTParser();
    }

    private void initializeASTParser() {
        this.parser = ASTParser.newParser(4);
    }

    private IResource[] collectResourcesOfInterest(IPackageFragment source) throws JavaModelException {
        IJavaElement[] children = source.getChildren();
        int childOfInterest = 5;
        if (source.getKind() == 2) {
            childOfInterest = 6;
        }
        ArrayList<IResource> correctKindChildren = new ArrayList<IResource>(children.length);
        int i = 0;
        while (i < children.length) {
            IJavaElement child = children[i];
            if (child.getElementType() == childOfInterest) {
                correctKindChildren.add(((JavaElement)child).resource());
            }
            ++i;
        }
        Object[] nonJavaResources = source.getNonJavaResources();
        int actualNonJavaResourceCount = 0;
        int i2 = 0;
        int max = nonJavaResources.length;
        while (i2 < max) {
            if (nonJavaResources[i2] instanceof IResource) {
                ++actualNonJavaResourceCount;
            }
            ++i2;
        }
        IResource[] actualNonJavaResources = new IResource[actualNonJavaResourceCount];
        int i3 = 0;
        int max2 = nonJavaResources.length;
        int index = 0;
        while (i3 < max2) {
            if (nonJavaResources[i3] instanceof IResource) {
                actualNonJavaResources[index++] = (IResource)nonJavaResources[i3];
            }
            ++i3;
        }
        if (actualNonJavaResourceCount != 0) {
            int correctKindChildrenSize = correctKindChildren.size();
            IResource[] result = new IResource[correctKindChildrenSize + actualNonJavaResourceCount];
            correctKindChildren.toArray(result);
            System.arraycopy(actualNonJavaResources, 0, result, correctKindChildrenSize, actualNonJavaResourceCount);
            return result;
        }
        IResource[] result = new IResource[correctKindChildren.size()];
        correctKindChildren.toArray(result);
        return result;
    }

    private boolean createNeededPackageFragments(IContainer sourceFolder, PackageFragmentRoot root, String[] newFragName, boolean moveFolder) throws JavaModelException {
        boolean containsReadOnlyPackageFragment = false;
        IContainer parentFolder = (IContainer)root.resource();
        JavaElementDelta projectDelta = null;
        String[] sideEffectPackageName = null;
        char[][] inclusionPatterns = root.fullInclusionPatternChars();
        char[][] exclusionPatterns = root.fullExclusionPatternChars();
        int i = 0;
        while (i < newFragName.length) {
            String subFolderName = newFragName[i];
            sideEffectPackageName = Util.arrayConcat(sideEffectPackageName, subFolderName);
            IResource subFolder = parentFolder.findMember(subFolderName);
            if (subFolder == null) {
                if (!moveFolder || i != newFragName.length - 1) {
                    this.createFolder(parentFolder, subFolderName, this.force);
                }
                parentFolder = parentFolder.getFolder((IPath)new Path(subFolderName));
                if (Util.isReadOnly((IResource)(sourceFolder = sourceFolder.getFolder((IPath)new Path(subFolderName))))) {
                    containsReadOnlyPackageFragment = true;
                }
                PackageFragment sideEffectPackage = root.getPackageFragment(sideEffectPackageName);
                if (i < newFragName.length - 1 && !Util.isExcluded((IResource)parentFolder, inclusionPatterns, exclusionPatterns)) {
                    if (projectDelta == null) {
                        projectDelta = this.getDeltaFor(root.getJavaProject());
                    }
                    projectDelta.added(sideEffectPackage);
                }
                this.createdElements.add(sideEffectPackage);
            } else {
                parentFolder = (IContainer)subFolder;
            }
            ++i;
        }
        return containsReadOnlyPackageFragment;
    }

    private JavaElementDelta getDeltaFor(IJavaProject javaProject) {
        JavaElementDelta delta = (JavaElementDelta)this.deltasPerProject.get(javaProject);
        if (delta == null) {
            delta = new JavaElementDelta(javaProject);
            this.deltasPerProject.put(javaProject, delta);
        }
        return delta;
    }

    protected String getMainTaskName() {
        return Messages.operation_copyResourceProgress;
    }

    protected ISchedulingRule getSchedulingRule() {
        if (this.elementsToProcess == null) {
            return null;
        }
        int length = this.elementsToProcess.length;
        if (length == 1) {
            return this.getSchedulingRule(this.elementsToProcess[0]);
        }
        ISchedulingRule[] rules = new ISchedulingRule[length];
        int index = 0;
        int i = 0;
        while (i < length) {
            ISchedulingRule rule = this.getSchedulingRule(this.elementsToProcess[i]);
            if (rule != null) {
                rules[index++] = rule;
            }
            ++i;
        }
        if (index != length) {
            ISchedulingRule[] iSchedulingRuleArray = rules;
            rules = new ISchedulingRule[index];
            System.arraycopy(iSchedulingRuleArray, 0, rules, 0, index);
        }
        return new MultiRule(rules);
    }

    private ISchedulingRule getSchedulingRule(IJavaElement element) {
        IFile destResource;
        String newName;
        if (element == null) {
            return null;
        }
        IResource sourceResource = this.getResource(element);
        IResource destContainer = this.getResource(this.getDestinationParent(element));
        if (!(destContainer instanceof IContainer)) {
            return null;
        }
        try {
            newName = this.getNewNameFor(element);
        }
        catch (JavaModelException javaModelException) {
            return null;
        }
        if (newName == null) {
            newName = element.getElementName();
        }
        String sourceEncoding = null;
        if (sourceResource.getType() == 1) {
            destResource = ((IContainer)destContainer).getFile((IPath)new Path(newName));
            try {
                sourceEncoding = ((IFile)sourceResource).getCharset(false);
            }
            catch (CoreException coreException) {}
        } else {
            destResource = ((IContainer)destContainer).getFolder((IPath)new Path(newName));
        }
        IResourceRuleFactory factory = ResourcesPlugin.getWorkspace().getRuleFactory();
        ISchedulingRule rule = this.isMove() ? factory.moveRule(sourceResource, (IResource)destResource) : factory.copyRule(sourceResource, (IResource)destResource);
        if (sourceEncoding != null) {
            rule = new MultiRule(new ISchedulingRule[]{rule, factory.charsetRule((IResource)destResource)});
        }
        return rule;
    }

    private IResource getResource(IJavaElement element) {
        String pkgName;
        int firstDot;
        if (element == null) {
            return null;
        }
        if (element.getElementType() == 4 && (firstDot = (pkgName = element.getElementName()).indexOf(46)) != -1) {
            element = ((IPackageFragmentRoot)element.getParent()).getPackageFragment(pkgName.substring(0, firstDot));
        }
        return element.getResource();
    }

    protected void prepareDeltas(IJavaElement sourceElement, IJavaElement destinationElement, boolean isMove) {
        if (Util.isExcluded(sourceElement) || Util.isExcluded(destinationElement)) {
            return;
        }
        IJavaProject destProject = destinationElement.getJavaProject();
        if (isMove) {
            IJavaProject sourceProject = sourceElement.getJavaProject();
            this.getDeltaFor(sourceProject).movedFrom(sourceElement, destinationElement);
            this.getDeltaFor(destProject).movedTo(destinationElement, sourceElement);
        } else {
            this.getDeltaFor(destProject).added(destinationElement);
        }
    }

    private void processCompilationUnitResource(ICompilationUnit source, PackageFragment dest) throws JavaModelException {
        String newCUName = this.getNewNameFor(source);
        String destName = newCUName != null ? newCUName : source.getElementName();
        TextEdit edit = this.updateContent(source, dest, newCUName);
        IFile sourceResource = (IFile)source.getResource();
        String sourceEncoding = null;
        try {
            sourceEncoding = sourceResource.getCharset(false);
        }
        catch (CoreException coreException) {}
        IContainer destFolder = (IContainer)dest.getResource();
        IFile destFile = destFolder.getFile((IPath)new Path(destName));
        CompilationUnit destCU = new CompilationUnit(dest, destName, DefaultWorkingCopyOwner.PRIMARY);
        if (!destFile.equals((Object)sourceResource)) {
            try {
                if (!destCU.isWorkingCopy()) {
                    int flags;
                    if (destFile.exists()) {
                        if (this.force) {
                            this.deleteResource((IResource)destFile, 2);
                            destCU.close();
                        } else {
                            throw new JavaModelException(new JavaModelStatus(977, Messages.bind(Messages.status_nameCollision, destFile.getFullPath().toString())));
                        }
                    }
                    int n = flags = this.force ? 1 : 0;
                    if (this.isMove()) {
                        sourceResource.move(destFile.getFullPath(), flags |= 2, this.getSubProgressMonitor(1));
                    } else {
                        if (edit != null) {
                            flags |= 2;
                        }
                        sourceResource.copy(destFile.getFullPath(), flags, this.getSubProgressMonitor(1));
                    }
                    CopyResourceElementsOperation.setAttribute("hasModifiedResource", "true");
                } else {
                    destCU.getBuffer().setContents(source.getBuffer().getContents());
                }
            }
            catch (JavaModelException e) {
                throw e;
            }
            catch (CoreException e) {
                throw new JavaModelException(e);
            }
            if (edit != null) {
                boolean wasReadOnly = destFile.isReadOnly();
                try {
                    try {
                        this.saveContent(dest, destName, edit, sourceEncoding, destFile);
                    }
                    catch (CoreException e) {
                        if (e instanceof JavaModelException) {
                            throw (JavaModelException)e;
                        }
                        throw new JavaModelException(e);
                    }
                }
                finally {
                    Util.setReadOnly((IResource)destFile, wasReadOnly);
                }
            }
            this.prepareDeltas(source, destCU, this.isMove());
            if (newCUName != null) {
                String oldName = Util.getNameWithoutJavaLikeExtension(source.getElementName());
                String newName = Util.getNameWithoutJavaLikeExtension(newCUName);
                this.prepareDeltas(source.getType(oldName), destCU.getType(newName), this.isMove());
            }
        } else {
            if (!this.force) {
                throw new JavaModelException(new JavaModelStatus(977, Messages.bind(Messages.status_nameCollision, destFile.getFullPath().toString())));
            }
            if (edit != null) {
                this.saveContent(dest, destName, edit, sourceEncoding, destFile);
            }
        }
    }

    protected void processDeltas() {
        Iterator deltas = this.deltasPerProject.values().iterator();
        while (deltas.hasNext()) {
            this.addDelta((IJavaElementDelta)deltas.next());
        }
    }

    protected void processElement(IJavaElement element) throws JavaModelException {
        IJavaElement dest = this.getDestinationParent(element);
        switch (element.getElementType()) {
            case 5: {
                this.processCompilationUnitResource((ICompilationUnit)element, (PackageFragment)dest);
                this.createdElements.add(((IPackageFragment)dest).getCompilationUnit(element.getElementName()));
                break;
            }
            case 4: {
                this.processPackageFragmentResource((PackageFragment)element, (PackageFragmentRoot)dest, this.getNewNameFor(element));
                break;
            }
            default: {
                throw new JavaModelException(new JavaModelStatus(967, element));
            }
        }
    }

    protected void processElements() throws JavaModelException {
        this.createdElements = new ArrayList(this.elementsToProcess.length);
        try {
            super.processElements();
        }
        finally {
            this.resultElements = new IJavaElement[this.createdElements.size()];
            this.createdElements.toArray(this.resultElements);
            this.processDeltas();
        }
    }

    private void processPackageFragmentResource(PackageFragment source, PackageFragmentRoot root, String newName) throws JavaModelException {
        try {
            Object[] newFragName = newName == null ? source.names : Util.getTrimmedSimpleNames(newName);
            PackageFragment newFrag = root.getPackageFragment((String[])newFragName);
            IResource[] resources = this.collectResourcesOfInterest(source);
            boolean shouldMoveFolder = this.isMove() && !newFrag.resource().exists();
            IFolder srcFolder = (IFolder)source.resource();
            IPath destPath = newFrag.getPath();
            if (shouldMoveFolder) {
                if (srcFolder.getFullPath().isPrefixOf(destPath)) {
                    shouldMoveFolder = false;
                } else {
                    IResource[] members = srcFolder.members();
                    int i = 0;
                    while (i < members.length) {
                        if (members[i] instanceof IFolder) {
                            shouldMoveFolder = false;
                            break;
                        }
                        ++i;
                    }
                }
            }
            boolean containsReadOnlySubPackageFragments = this.createNeededPackageFragments((IContainer)source.parent.resource(), root, (String[])newFragName, shouldMoveFolder);
            boolean sourceIsReadOnly = Util.isReadOnly((IResource)srcFolder);
            if (shouldMoveFolder) {
                if (sourceIsReadOnly) {
                    Util.setReadOnly((IResource)srcFolder, false);
                }
                srcFolder.move(destPath, this.force, true, this.getSubProgressMonitor(1));
                if (sourceIsReadOnly) {
                    Util.setReadOnly((IResource)srcFolder, true);
                }
                CopyResourceElementsOperation.setAttribute("hasModifiedResource", "true");
            } else if (resources.length > 0) {
                IResource destinationResource;
                int max;
                int i;
                if (this.isRename()) {
                    if (!destPath.equals((Object)source.getPath())) {
                        this.moveResources(resources, destPath);
                    }
                } else if (this.isMove()) {
                    i = 0;
                    max = resources.length;
                    while (i < max) {
                        destinationResource = ResourcesPlugin.getWorkspace().getRoot().findMember(destPath.append(resources[i].getName()));
                        if (destinationResource != null) {
                            if (this.force) {
                                this.deleteResource(destinationResource, 2);
                            } else {
                                throw new JavaModelException(new JavaModelStatus(977, Messages.bind(Messages.status_nameCollision, destinationResource.getFullPath().toString())));
                            }
                        }
                        ++i;
                    }
                    this.moveResources(resources, destPath);
                } else {
                    i = 0;
                    max = resources.length;
                    while (i < max) {
                        destinationResource = ResourcesPlugin.getWorkspace().getRoot().findMember(destPath.append(resources[i].getName()));
                        if (destinationResource != null) {
                            if (this.force) {
                                this.deleteResource(destinationResource, 2);
                            } else {
                                throw new JavaModelException(new JavaModelStatus(977, Messages.bind(Messages.status_nameCollision, destinationResource.getFullPath().toString())));
                            }
                        }
                        ++i;
                    }
                    this.copyResources(resources, destPath);
                }
            }
            if (!Util.equalArraysOrNull(newFragName, source.names)) {
                char[][] inclusionPatterns = root.fullInclusionPatternChars();
                char[][] exclusionPatterns = root.fullExclusionPatternChars();
                int i = 0;
                while (i < resources.length) {
                    ICompilationUnit cu;
                    String resourceName = resources[i].getName();
                    if (Util.isJavaLikeFileName(resourceName) && !Util.isExcluded((cu = newFrag.getCompilationUnit(resourceName)).getPath(), inclusionPatterns, exclusionPatterns, false)) {
                        this.parser.setSource(cu);
                        org.eclipse.jdt.core.dom.CompilationUnit astCU = (org.eclipse.jdt.core.dom.CompilationUnit)this.parser.createAST(this.progressMonitor);
                        AST ast = astCU.getAST();
                        ASTRewrite rewrite = ASTRewrite.create(ast);
                        this.updatePackageStatement(astCU, (String[])newFragName, rewrite, cu);
                        TextEdit edits = rewrite.rewriteAST();
                        this.applyTextEdit(cu, edits);
                        cu.save(null, false);
                    }
                    ++i;
                }
            }
            boolean isEmpty = true;
            if (this.isMove()) {
                this.updateReadOnlyPackageFragmentsForMove((IContainer)source.parent.resource(), root, (String[])newFragName, sourceIsReadOnly);
                if (srcFolder.exists()) {
                    IResource[] remaining = srcFolder.members();
                    int i = 0;
                    int length = remaining.length;
                    while (i < length) {
                        IResource file = remaining[i];
                        if (file instanceof IFile) {
                            if (Util.isReadOnly(file)) {
                                Util.setReadOnly(file, false);
                            }
                            this.deleteResource(file, 3);
                        } else {
                            isEmpty = false;
                        }
                        ++i;
                    }
                }
                if (isEmpty) {
                    IResource rootResource = destPath.isPrefixOf(srcFolder.getFullPath()) ? newFrag.resource() : source.parent.resource();
                    this.deleteEmptyPackageFragment(source, false, rootResource);
                }
            } else if (containsReadOnlySubPackageFragments) {
                this.updateReadOnlyPackageFragmentsForCopy((IContainer)source.parent.resource(), root, (String[])newFragName);
            }
            if (isEmpty && this.isMove() && !Util.isExcluded(source) && !Util.isExcluded(newFrag)) {
                IJavaProject sourceProject = source.getJavaProject();
                this.getDeltaFor(sourceProject).movedFrom(source, newFrag);
                IJavaProject destProject = newFrag.getJavaProject();
                this.getDeltaFor(destProject).movedTo(newFrag, source);
            }
        }
        catch (JavaModelException e) {
            throw e;
        }
        catch (CoreException ce) {
            throw new JavaModelException(ce);
        }
    }

    private void saveContent(PackageFragment dest, String destName, TextEdit edits, String sourceEncoding, IFile destFile) throws JavaModelException {
        try {
            if (sourceEncoding != null) {
                destFile.setCharset(sourceEncoding, this.progressMonitor);
            }
        }
        catch (CoreException coreException) {}
        Util.setReadOnly((IResource)destFile, false);
        ICompilationUnit destCU = dest.getCompilationUnit(destName);
        this.applyTextEdit(destCU, edits);
        destCU.save(this.getSubProgressMonitor(1), this.force);
    }

    private TextEdit updateContent(ICompilationUnit cu, PackageFragment dest, String newName) throws JavaModelException {
        Object[] currPackageName = ((PackageFragment)cu.getParent()).names;
        Object[] destPackageName = dest.names;
        if (Util.equalArraysOrNull(currPackageName, destPackageName) && newName == null) {
            return null;
        }
        cu.makeConsistent(this.progressMonitor);
        this.parser.setSource(cu);
        org.eclipse.jdt.core.dom.CompilationUnit astCU = (org.eclipse.jdt.core.dom.CompilationUnit)this.parser.createAST(this.progressMonitor);
        AST ast = astCU.getAST();
        ASTRewrite rewrite = ASTRewrite.create(ast);
        this.updateTypeName(cu, astCU, cu.getElementName(), newName, rewrite);
        this.updatePackageStatement(astCU, (String[])destPackageName, rewrite, cu);
        return rewrite.rewriteAST();
    }

    private void updatePackageStatement(org.eclipse.jdt.core.dom.CompilationUnit astCU, String[] pkgName, ASTRewrite rewriter, ICompilationUnit cu) throws JavaModelException {
        boolean defaultPackage = pkgName.length == 0;
        AST ast = astCU.getAST();
        if (defaultPackage) {
            PackageDeclaration pkg = astCU.getPackage();
            if (pkg != null) {
                int extendedStart;
                Javadoc javadoc = pkg.getJavadoc();
                int pkgStart = javadoc != null ? javadoc.getStartPosition() + javadoc.getLength() + 1 : pkg.getStartPosition();
                if (pkgStart != (extendedStart = astCU.getExtendedStartPosition(pkg))) {
                    String commentSource = cu.getSource().substring(extendedStart, pkgStart);
                    ASTNode comment = rewriter.createStringPlaceholder(commentSource, 35);
                    rewriter.set(astCU, org.eclipse.jdt.core.dom.CompilationUnit.PACKAGE_PROPERTY, comment, null);
                } else {
                    rewriter.set(astCU, org.eclipse.jdt.core.dom.CompilationUnit.PACKAGE_PROPERTY, null, null);
                }
            }
        } else {
            PackageDeclaration pkg = astCU.getPackage();
            if (pkg != null) {
                Name name = ast.newName(pkgName);
                rewriter.set(pkg, PackageDeclaration.NAME_PROPERTY, name, null);
            } else {
                pkg = ast.newPackageDeclaration();
                pkg.setName(ast.newName(pkgName));
                rewriter.set(astCU, org.eclipse.jdt.core.dom.CompilationUnit.PACKAGE_PROPERTY, pkg, null);
            }
        }
    }

    private void updateReadOnlyPackageFragmentsForCopy(IContainer sourceFolder, PackageFragmentRoot root, String[] newFragName) {
        IContainer parentFolder = (IContainer)root.resource();
        int i = 0;
        int length = newFragName.length;
        while (i < length) {
            String subFolderName = newFragName[i];
            parentFolder = parentFolder.getFolder((IPath)new Path(subFolderName));
            if ((sourceFolder = sourceFolder.getFolder((IPath)new Path(subFolderName))).exists() && Util.isReadOnly((IResource)sourceFolder)) {
                Util.setReadOnly((IResource)parentFolder, true);
            }
            ++i;
        }
    }

    private void updateReadOnlyPackageFragmentsForMove(IContainer sourceFolder, PackageFragmentRoot root, String[] newFragName, boolean sourceFolderIsReadOnly) {
        IContainer parentFolder = (IContainer)root.resource();
        int i = 0;
        int length = newFragName.length;
        while (i < length) {
            String subFolderName = newFragName[i];
            parentFolder = parentFolder.getFolder((IPath)new Path(subFolderName));
            if ((sourceFolder = sourceFolder.getFolder((IPath)new Path(subFolderName))).exists() && Util.isReadOnly((IResource)sourceFolder) || i == length - 1 && sourceFolderIsReadOnly) {
                Util.setReadOnly((IResource)parentFolder, true);
                Util.setReadOnly((IResource)sourceFolder, false);
            }
            ++i;
        }
    }

    private void updateTypeName(ICompilationUnit cu, org.eclipse.jdt.core.dom.CompilationUnit astCU, String oldName, String newName, ASTRewrite rewriter) throws JavaModelException {
        if (newName != null) {
            String oldTypeName = Util.getNameWithoutJavaLikeExtension(oldName);
            String newTypeName = Util.getNameWithoutJavaLikeExtension(newName);
            AST ast = astCU.getAST();
            IType[] types = cu.getTypes();
            int i = 0;
            int max = types.length;
            while (i < max) {
                AbstractTypeDeclaration typeNode;
                IType currentType = types[i];
                if (currentType.getElementName().equals(oldTypeName) && (typeNode = (AbstractTypeDeclaration)((JavaElement)((Object)currentType)).findNode(astCU)) != null) {
                    rewriter.replace(typeNode.getName(), ast.newSimpleName(newTypeName), null);
                    Iterator bodyDeclarations = typeNode.bodyDeclarations().iterator();
                    while (bodyDeclarations.hasNext()) {
                        SimpleName methodName;
                        MethodDeclaration methodDeclaration;
                        Object bodyDeclaration = bodyDeclarations.next();
                        if (!(bodyDeclaration instanceof MethodDeclaration) || !(methodDeclaration = (MethodDeclaration)bodyDeclaration).isConstructor() || !(methodName = methodDeclaration.getName()).getIdentifier().equals(oldTypeName)) continue;
                        rewriter.replace(methodName, ast.newSimpleName(newTypeName), null);
                    }
                }
                ++i;
            }
        }
    }

    protected IJavaModelStatus verify() {
        IJavaModelStatus status = super.verify();
        if (!status.isOK()) {
            return status;
        }
        if (this.renamingsList != null && this.renamingsList.length != this.elementsToProcess.length) {
            return new JavaModelStatus(980);
        }
        return JavaModelStatus.VERIFIED_OK;
    }

    protected void verify(IJavaElement element) throws JavaModelException {
        int elementType;
        IResource resource;
        if (element == null || !element.exists()) {
            this.error(969, element);
        }
        if (element.isReadOnly() && (this.isRename() || this.isMove())) {
            this.error(976, element);
        }
        if ((resource = ((JavaElement)element).resource()) instanceof IFolder && resource.isLinked()) {
            this.error(995, element);
        }
        if ((elementType = element.getElementType()) == 5) {
            CompilationUnit compilationUnit = (CompilationUnit)element;
            if (this.isMove() && compilationUnit.isWorkingCopy() && !compilationUnit.isPrimary()) {
                this.error(967, element);
            }
        } else if (elementType != 4) {
            this.error(967, element);
        }
        JavaElement dest = (JavaElement)this.getDestinationParent(element);
        this.verifyDestination(element, dest);
        if (this.renamings != null) {
            this.verifyRenaming(element);
        }
    }
}

