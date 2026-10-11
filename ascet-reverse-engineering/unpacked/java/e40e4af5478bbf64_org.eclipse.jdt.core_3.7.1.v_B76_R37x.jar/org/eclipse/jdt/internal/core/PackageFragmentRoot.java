/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IContainer
 *  org.eclipse.core.resources.IFolder
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.jdt.internal.core;

import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Map;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Status;
import org.eclipse.jdt.core.IBuffer;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaModel;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IOpenable;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.core.BufferManager;
import org.eclipse.jdt.internal.core.ClasspathEntry;
import org.eclipse.jdt.internal.core.CopyPackageFragmentRootOperation;
import org.eclipse.jdt.internal.core.CreatePackageFragmentOperation;
import org.eclipse.jdt.internal.core.DeletePackageFragmentRootOperation;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.JavaModel;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.JavaModelStatus;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.MovePackageFragmentRootOperation;
import org.eclipse.jdt.internal.core.Openable;
import org.eclipse.jdt.internal.core.OpenableElementInfo;
import org.eclipse.jdt.internal.core.PackageFragment;
import org.eclipse.jdt.internal.core.PackageFragmentRootInfo;
import org.eclipse.jdt.internal.core.SourceMapper;
import org.eclipse.jdt.internal.core.util.MementoTokenizer;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jdt.internal.core.util.Util;

public class PackageFragmentRoot
extends Openable
implements IPackageFragmentRoot {
    protected static final char ATTACHMENT_PROPERTY_DELIMITER = '*';
    public static final String NO_SOURCE_ATTACHMENT = "";
    protected IResource resource;

    protected PackageFragmentRoot(IResource resource, JavaProject project) {
        super(project);
        this.resource = resource;
    }

    public void attachSource(IPath sourcePath, IPath rootPath, IProgressMonitor monitor) throws JavaModelException {
        try {
            try {
                this.verifyAttachSource(sourcePath);
                if (monitor != null) {
                    monitor.beginTask(Messages.element_attachingSource, 2);
                }
                SourceMapper oldMapper = this.getSourceMapper();
                boolean rootNeedsToBeClosed = false;
                if (sourcePath == null) {
                    rootNeedsToBeClosed = true;
                    this.setSourceMapper(null);
                } else {
                    Object target;
                    IPath storedSourcePath = this.getSourceAttachmentPath();
                    IPath storedRootPath = this.getSourceAttachmentRootPath();
                    if (monitor != null) {
                        monitor.worked(1);
                    }
                    if (!(storedSourcePath == null || storedSourcePath.equals((Object)sourcePath) && rootPath != null && rootPath.equals((Object)storedRootPath) || storedRootPath == null)) {
                        rootNeedsToBeClosed = true;
                    }
                    if ((target = JavaModel.getTarget(sourcePath, false)) == null) {
                        throw new JavaModelException(new JavaModelStatus(979, sourcePath));
                    }
                    SourceMapper mapper = this.createSourceMapper(sourcePath, rootPath);
                    if (rootPath == null && mapper.rootPath != null) {
                        rootPath = new Path(mapper.rootPath);
                    }
                    this.setSourceMapper(mapper);
                }
                if (sourcePath == null) {
                    Util.setSourceAttachmentProperty(this.getPath(), null);
                } else {
                    Util.setSourceAttachmentProperty(this.getPath(), String.valueOf(sourcePath.toString()) + (rootPath == null ? NO_SOURCE_ATTACHMENT : String.valueOf('*') + rootPath.toString()));
                }
                if (rootNeedsToBeClosed) {
                    if (oldMapper != null) {
                        oldMapper.close();
                    }
                    BufferManager manager = BufferManager.getDefaultBufferManager();
                    Enumeration openBuffers = manager.getOpenBuffers();
                    while (openBuffers.hasMoreElements()) {
                        IBuffer buffer = (IBuffer)openBuffers.nextElement();
                        IOpenable possibleMember = buffer.getOwner();
                        if (!this.isAncestorOf((IJavaElement)((Object)possibleMember))) continue;
                        buffer.close();
                    }
                    if (monitor != null) {
                        monitor.worked(1);
                    }
                }
            }
            catch (JavaModelException e) {
                Util.setSourceAttachmentProperty(this.getPath(), null);
                throw e;
            }
        }
        finally {
            if (monitor != null) {
                monitor.done();
            }
        }
    }

    protected boolean buildStructure(OpenableElementInfo info, IProgressMonitor pm, Map newElements, IResource underlyingResource) throws JavaModelException {
        ((PackageFragmentRootInfo)info).setRootKind(this.determineKind(underlyingResource));
        return this.computeChildren(info, underlyingResource);
    }

    SourceMapper createSourceMapper(IPath sourcePath, IPath rootPath) {
        SourceMapper mapper = new SourceMapper(sourcePath, rootPath == null ? null : rootPath.toOSString(), this.getJavaProject().getOptions(true));
        return mapper;
    }

    public void delete(int updateResourceFlags, int updateModelFlags, IProgressMonitor monitor) throws JavaModelException {
        DeletePackageFragmentRootOperation op = new DeletePackageFragmentRootOperation(this, updateResourceFlags, updateModelFlags);
        op.runOperation(monitor);
    }

    protected boolean computeChildren(OpenableElementInfo info, IResource underlyingResource) throws JavaModelException {
        try {
            if (underlyingResource.getType() == 2 || underlyingResource.getType() == 4) {
                char[][] exclusionPatterns;
                IContainer rootFolder;
                ArrayList vChildren = new ArrayList(5);
                char[][] inclusionPatterns = this.fullInclusionPatternChars();
                this.computeFolderChildren(rootFolder, !Util.isExcluded((IResource)(rootFolder = (IContainer)underlyingResource), inclusionPatterns, exclusionPatterns = this.fullExclusionPatternChars()), CharOperation.NO_STRINGS, vChildren, inclusionPatterns, exclusionPatterns);
                IJavaElement[] children = new IJavaElement[vChildren.size()];
                vChildren.toArray(children);
                info.setChildren(children);
            }
        }
        catch (JavaModelException e) {
            info.setChildren(new IJavaElement[0]);
            throw e;
        }
        return true;
    }

    protected void computeFolderChildren(IContainer folder, boolean isIncluded, String[] pkgName, ArrayList vChildren, char[][] inclusionPatterns, char[][] exclusionPatterns) throws JavaModelException {
        if (isIncluded) {
            PackageFragment pkg = this.getPackageFragment(pkgName);
            vChildren.add(pkg);
        }
        try {
            JavaProject javaProject = (JavaProject)this.getJavaProject();
            JavaModelManager manager = JavaModelManager.getJavaModelManager();
            IResource[] members = folder.members();
            boolean hasIncluded = isIncluded;
            int length = members.length;
            if (length > 0) {
                String sourceLevel = javaProject.getOption("org.eclipse.jdt.core.compiler.source", true);
                String complianceLevel = javaProject.getOption("org.eclipse.jdt.core.compiler.compliance", true);
                int i = 0;
                while (i < length) {
                    IResource member = members[i];
                    String memberName = member.getName();
                    switch (member.getType()) {
                        case 2: {
                            if (!Util.isValidFolderNameForPackage(memberName, sourceLevel, complianceLevel) || !javaProject.contains(member)) break;
                            String[] newNames = Util.arrayConcat(pkgName, manager.intern(memberName));
                            boolean isMemberIncluded = !Util.isExcluded(member, inclusionPatterns, exclusionPatterns);
                            this.computeFolderChildren((IContainer)((IFolder)member), isMemberIncluded, newNames, vChildren, inclusionPatterns, exclusionPatterns);
                            break;
                        }
                        case 1: {
                            if (hasIncluded || !Util.isValidCompilationUnitName(memberName, sourceLevel, complianceLevel) || Util.isExcluded(member, inclusionPatterns, exclusionPatterns)) break;
                            hasIncluded = true;
                            PackageFragment pkg = this.getPackageFragment(pkgName);
                            vChildren.add(pkg);
                        }
                    }
                    ++i;
                }
            }
        }
        catch (IllegalArgumentException e) {
            throw new JavaModelException(e, 969);
        }
        catch (CoreException e) {
            throw new JavaModelException(e);
        }
    }

    public void copy(IPath destination, int updateResourceFlags, int updateModelFlags, IClasspathEntry sibling, IProgressMonitor monitor) throws JavaModelException {
        CopyPackageFragmentRootOperation op = new CopyPackageFragmentRootOperation(this, destination, updateResourceFlags, updateModelFlags, sibling);
        op.runOperation(monitor);
    }

    protected Object createElementInfo() {
        return new PackageFragmentRootInfo();
    }

    public IPackageFragment createPackageFragment(String pkgName, boolean force, IProgressMonitor monitor) throws JavaModelException {
        CreatePackageFragmentOperation op = new CreatePackageFragmentOperation(this, pkgName, force);
        op.runOperation(monitor);
        return this.getPackageFragment(op.pkgName);
    }

    protected int determineKind(IResource underlyingResource) throws JavaModelException {
        IClasspathEntry entry = ((JavaProject)this.getJavaProject()).getClasspathEntryFor(underlyingResource.getFullPath());
        if (entry != null) {
            return entry.getContentKind();
        }
        return 1;
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (!(o instanceof PackageFragmentRoot)) {
            return false;
        }
        PackageFragmentRoot other = (PackageFragmentRoot)o;
        return this.resource().equals((Object)other.resource()) && this.parent.equals(other.parent);
    }

    private IClasspathEntry findSourceAttachmentRecommendation() {
        try {
            IClasspathEntry entry;
            IPath rootPath = this.getPath();
            JavaProject parentProject = (JavaProject)this.getJavaProject();
            try {
                Object target;
                entry = parentProject.getClasspathEntryFor(rootPath);
                if (entry != null && (target = JavaModel.getTarget(entry.getSourceAttachmentPath(), true)) != null) {
                    return entry;
                }
            }
            catch (JavaModelException javaModelException) {}
            IJavaModel model = this.getJavaModel();
            IJavaProject[] jProjects = model.getJavaProjects();
            int i = 0;
            int max = jProjects.length;
            while (i < max) {
                JavaProject jProject = (JavaProject)jProjects[i];
                if (jProject != parentProject) {
                    try {
                        Object target;
                        entry = jProject.getClasspathEntryFor(rootPath);
                        if (entry != null && (target = JavaModel.getTarget(entry.getSourceAttachmentPath(), true)) != null) {
                            return entry;
                        }
                    }
                    catch (JavaModelException javaModelException) {}
                }
                ++i;
            }
        }
        catch (JavaModelException javaModelException) {}
        return null;
    }

    public char[][] fullExclusionPatternChars() {
        ClasspathEntry entry;
        block5: {
            block4: {
                try {
                    if (!this.isOpen() || this.getKind() == 1) break block4;
                    return null;
                }
                catch (JavaModelException javaModelException) {
                    return null;
                }
            }
            entry = (ClasspathEntry)this.getRawClasspathEntry();
            if (entry != null) break block5;
            return null;
        }
        return entry.fullExclusionPatternChars();
    }

    public char[][] fullInclusionPatternChars() {
        ClasspathEntry entry;
        block5: {
            block4: {
                try {
                    if (!this.isOpen() || this.getKind() == 1) break block4;
                    return null;
                }
                catch (JavaModelException javaModelException) {
                    return null;
                }
            }
            entry = (ClasspathEntry)this.getRawClasspathEntry();
            if (entry != null) break block5;
            return null;
        }
        return entry.fullInclusionPatternChars();
    }

    public String getElementName() {
        IResource res = this.resource();
        if (res instanceof IFolder) {
            return ((IFolder)res).getName();
        }
        return NO_SOURCE_ATTACHMENT;
    }

    public int getElementType() {
        return 3;
    }

    protected char getHandleMementoDelimiter() {
        return '/';
    }

    public IJavaElement getHandleFromMemento(String token, MementoTokenizer memento, WorkingCopyOwner owner) {
        switch (token.charAt(0)) {
            case '<': {
                String[] pkgName;
                if (memento.hasMoreTokens()) {
                    token = memento.nextToken();
                    char firstChar = token.charAt(0);
                    if (firstChar == '(' || firstChar == '{' || firstChar == '!') {
                        pkgName = CharOperation.NO_STRINGS;
                    } else {
                        pkgName = Util.splitOn('.', token, 0, token.length());
                        token = null;
                    }
                } else {
                    pkgName = CharOperation.NO_STRINGS;
                    token = null;
                }
                PackageFragment pkg = this.getPackageFragment(pkgName);
                if (token == null) {
                    return pkg.getHandleFromMemento(memento, owner);
                }
                return ((JavaElement)pkg).getHandleFromMemento(token, memento, owner);
            }
        }
        return null;
    }

    protected void getHandleMemento(StringBuffer buff) {
        IResource underlyingResource = this.getResource();
        IPath path = underlyingResource != null ? (this.resource().getProject().equals((Object)this.getJavaProject().getProject()) ? underlyingResource.getProjectRelativePath() : underlyingResource.getFullPath()) : this.getPath();
        ((JavaElement)this.getParent()).getHandleMemento(buff);
        buff.append(this.getHandleMementoDelimiter());
        this.escapeMementoName(buff, path.toString());
    }

    public int getKind() throws JavaModelException {
        return ((PackageFragmentRootInfo)this.getElementInfo()).getRootKind();
    }

    int internalKind() throws JavaModelException {
        JavaModelManager manager = JavaModelManager.getJavaModelManager();
        PackageFragmentRootInfo info = (PackageFragmentRootInfo)manager.peekAtInfo(this);
        if (info == null) {
            info = (PackageFragmentRootInfo)this.openWhenClosed(this.createElementInfo(), null);
        }
        return info.getRootKind();
    }

    public Object[] getNonJavaResources() throws JavaModelException {
        return ((PackageFragmentRootInfo)this.getElementInfo()).getNonJavaResources(this.getJavaProject(), this.resource(), this);
    }

    public IPackageFragment getPackageFragment(String packageName) {
        String[] pkgName = Util.getTrimmedSimpleNames(packageName);
        return this.getPackageFragment(pkgName);
    }

    public PackageFragment getPackageFragment(String[] pkgName) {
        return new PackageFragment(this, pkgName);
    }

    protected String getPackageName(IFolder folder) {
        IPath myPath = this.getPath();
        IPath pkgPath = folder.getFullPath();
        int mySegmentCount = myPath.segmentCount();
        int pkgSegmentCount = pkgPath.segmentCount();
        StringBuffer pkgName = new StringBuffer(NO_SOURCE_ATTACHMENT);
        int i = mySegmentCount;
        while (i < pkgSegmentCount) {
            if (i > mySegmentCount) {
                pkgName.append('.');
            }
            pkgName.append(pkgPath.segment(i));
            ++i;
        }
        return pkgName.toString();
    }

    public IPath getPath() {
        return this.internalPath();
    }

    public IPath internalPath() {
        return this.resource().getFullPath();
    }

    public IClasspathEntry getRawClasspathEntry() throws JavaModelException {
        IClasspathEntry rawEntry = null;
        JavaProject project = (JavaProject)this.getJavaProject();
        project.getResolvedClasspath();
        Map rootPathToRawEntries = project.getPerProjectInfo().rootPathToRawEntries;
        if (rootPathToRawEntries != null) {
            rawEntry = (IClasspathEntry)rootPathToRawEntries.get(this.getPath());
        }
        if (rawEntry == null) {
            throw new JavaModelException(new JavaModelStatus(1006, this));
        }
        return rawEntry;
    }

    public IClasspathEntry getResolvedClasspathEntry() throws JavaModelException {
        IClasspathEntry resolvedEntry = null;
        JavaProject project = (JavaProject)this.getJavaProject();
        project.getResolvedClasspath();
        Map rootPathToResolvedEntries = project.getPerProjectInfo().rootPathToResolvedEntries;
        if (rootPathToResolvedEntries != null) {
            resolvedEntry = (IClasspathEntry)rootPathToResolvedEntries.get(this.getPath());
        }
        if (resolvedEntry == null) {
            throw new JavaModelException(new JavaModelStatus(1006, this));
        }
        return resolvedEntry;
    }

    public IResource resource() {
        if (this.resource != null) {
            return this.resource;
        }
        return super.resource();
    }

    public IResource resource(PackageFragmentRoot root) {
        return this.resource;
    }

    public IPath getSourceAttachmentPath() throws JavaModelException {
        IPath sourceAttachmentPath;
        if (this.getKind() != 2) {
            return null;
        }
        IPath path = this.getPath();
        String serverPathString = Util.getSourceAttachmentProperty(path);
        if (serverPathString != null) {
            int index = serverPathString.lastIndexOf(42);
            if (index < 0) {
                return new Path(serverPathString);
            }
            String serverSourcePathString = serverPathString.substring(0, index);
            return new Path(serverSourcePathString);
        }
        IClasspathEntry entry = ((JavaProject)this.getParent()).getClasspathEntryFor(path);
        if (entry != null && (sourceAttachmentPath = entry.getSourceAttachmentPath()) != null) {
            return sourceAttachmentPath;
        }
        entry = this.findSourceAttachmentRecommendation();
        if (entry != null && (sourceAttachmentPath = entry.getSourceAttachmentPath()) != null) {
            return sourceAttachmentPath;
        }
        return null;
    }

    public void setSourceMapper(SourceMapper mapper) throws JavaModelException {
        ((PackageFragmentRootInfo)this.getElementInfo()).setSourceMapper(mapper);
    }

    public IPath getSourceAttachmentRootPath() throws JavaModelException {
        IPath sourceAttachmentRootPath;
        if (this.getKind() != 2) {
            return null;
        }
        IPath path = this.getPath();
        String serverPathString = Util.getSourceAttachmentProperty(path);
        if (serverPathString != null) {
            int index = serverPathString.lastIndexOf(42);
            if (index == -1) {
                return null;
            }
            String serverRootPathString = NO_SOURCE_ATTACHMENT;
            if (index != serverPathString.length() - 1) {
                serverRootPathString = serverPathString.substring(index + 1);
            }
            return new Path(serverRootPathString);
        }
        IClasspathEntry entry = ((JavaProject)this.getParent()).getClasspathEntryFor(path);
        if (entry != null && (sourceAttachmentRootPath = entry.getSourceAttachmentRootPath()) != null) {
            return sourceAttachmentRootPath;
        }
        entry = this.findSourceAttachmentRecommendation();
        if (entry != null && (sourceAttachmentRootPath = entry.getSourceAttachmentRootPath()) != null) {
            return sourceAttachmentRootPath;
        }
        return null;
    }

    public SourceMapper getSourceMapper() {
        SourceMapper mapper;
        try {
            PackageFragmentRootInfo rootInfo = (PackageFragmentRootInfo)this.getElementInfo();
            mapper = rootInfo.getSourceMapper();
            if (mapper == null) {
                IPath sourcePath = this.getSourceAttachmentPath();
                IPath rootPath = this.getSourceAttachmentRootPath();
                mapper = sourcePath == null ? this.createSourceMapper(this.getPath(), rootPath) : this.createSourceMapper(sourcePath, rootPath);
                rootInfo.setSourceMapper(mapper);
            }
        }
        catch (JavaModelException javaModelException) {
            mapper = null;
        }
        return mapper;
    }

    public IResource getUnderlyingResource() throws JavaModelException {
        if (!this.exists()) {
            throw this.newNotPresentException();
        }
        return this.resource();
    }

    public boolean hasChildren() throws JavaModelException {
        return true;
    }

    public int hashCode() {
        return this.resource().hashCode();
    }

    public boolean isArchive() {
        return false;
    }

    public boolean isExternal() {
        return false;
    }

    protected IStatus validateOnClasspath() {
        IPath path = this.getPath();
        try {
            JavaProject project = (JavaProject)this.getJavaProject();
            IClasspathEntry entry = project.getClasspathEntryFor(path);
            if (entry != null) {
                return Status.OK_STATUS;
            }
        }
        catch (JavaModelException e) {
            return e.getJavaModelStatus();
        }
        return new JavaModelStatus(1006, this);
    }

    public void move(IPath destination, int updateResourceFlags, int updateModelFlags, IClasspathEntry sibling, IProgressMonitor monitor) throws JavaModelException {
        MovePackageFragmentRootOperation op = new MovePackageFragmentRootOperation(this, destination, updateResourceFlags, updateModelFlags, sibling);
        op.runOperation(monitor);
    }

    protected void toStringInfo(int tab, StringBuffer buffer, Object info, boolean showResolvedInfo) {
        buffer.append(this.tabString(tab));
        IPath path = this.getPath();
        if (this.isExternal()) {
            buffer.append(path.toOSString());
        } else if (this.getJavaProject().getElementName().equals(path.segment(0))) {
            if (path.segmentCount() == 1) {
                buffer.append("<project root>");
            } else {
                buffer.append(path.removeFirstSegments(1).makeRelative());
            }
        } else {
            buffer.append(path);
        }
        if (info == null) {
            buffer.append(" (not open)");
        }
    }

    protected IStatus validateExistence(IResource underlyingResource) {
        IStatus status = this.validateOnClasspath();
        if (!status.isOK()) {
            return status;
        }
        if (!this.resourceExists(underlyingResource)) {
            return this.newDoesNotExistStatus();
        }
        return JavaModelStatus.VERIFIED_OK;
    }

    protected void verifyAttachSource(IPath sourcePath) throws JavaModelException {
        if (!this.exists()) {
            throw this.newNotPresentException();
        }
        if (this.getKind() != 2) {
            throw new JavaModelException(new JavaModelStatus(967, this));
        }
        if (sourcePath != null && !sourcePath.isAbsolute()) {
            throw new JavaModelException(new JavaModelStatus(972, sourcePath));
        }
    }
}

