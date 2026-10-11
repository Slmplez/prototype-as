/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jdt.core.ClasspathContainerInitializer;
import org.eclipse.jdt.core.IClasspathContainer;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.IJavaModelStatusConstants;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.PackageFragment;
import org.eclipse.jdt.internal.core.util.Messages;

public class JavaModelStatus
extends Status
implements IJavaModelStatus,
IJavaModelStatusConstants {
    protected IJavaElement[] elements = new IJavaElement[0];
    protected IPath path;
    protected String string;
    protected static final IStatus[] NO_CHILDREN = new IStatus[0];
    protected IStatus[] children = NO_CHILDREN;
    public static final IJavaModelStatus VERIFIED_OK = new JavaModelStatus(0, 0, Messages.status_OK);

    public JavaModelStatus() {
        super(4, "org.eclipse.jdt.core", 0, "JavaModelStatus", null);
    }

    public JavaModelStatus(int code) {
        super(4, "org.eclipse.jdt.core", code, "JavaModelStatus", null);
        this.elements = JavaElement.NO_ELEMENTS;
    }

    public JavaModelStatus(int code, IJavaElement[] elements) {
        super(4, "org.eclipse.jdt.core", code, "JavaModelStatus", null);
        this.elements = elements;
        this.path = null;
    }

    public JavaModelStatus(int code, String string) {
        this(4, code, string);
    }

    public JavaModelStatus(int severity, int code, String string) {
        super(severity, "org.eclipse.jdt.core", code, "JavaModelStatus", null);
        this.elements = JavaElement.NO_ELEMENTS;
        this.path = null;
        this.string = string;
    }

    public JavaModelStatus(int code, Throwable throwable) {
        super(4, "org.eclipse.jdt.core", code, "JavaModelStatus", throwable);
        this.elements = JavaElement.NO_ELEMENTS;
    }

    public JavaModelStatus(int code, IPath path) {
        super(4, "org.eclipse.jdt.core", code, "JavaModelStatus", null);
        this.elements = JavaElement.NO_ELEMENTS;
        this.path = path;
    }

    public JavaModelStatus(int code, IJavaElement element) {
        this(code, new IJavaElement[]{element});
    }

    public JavaModelStatus(int code, IJavaElement element, String string) {
        this(code, new IJavaElement[]{element});
        this.string = string;
    }

    public JavaModelStatus(int code, IJavaElement element, IPath path) {
        this(code, new IJavaElement[]{element});
        this.path = path;
    }

    public JavaModelStatus(int code, IJavaElement element, IPath path, String string) {
        this(code, new IJavaElement[]{element});
        this.path = path;
        this.string = string;
    }

    public JavaModelStatus(int severity, int code, IJavaElement element, IPath path, String msg) {
        super(severity, "org.eclipse.jdt.core", code, "JavaModelStatus", null);
        this.elements = new IJavaElement[]{element};
        this.path = path;
        this.string = msg;
    }

    public JavaModelStatus(CoreException coreException) {
        super(4, "org.eclipse.jdt.core", 966, "JavaModelStatus", (Throwable)coreException);
        this.elements = JavaElement.NO_ELEMENTS;
    }

    protected int getBits() {
        int severity = 1 << this.getCode() % 100 / 33;
        int category = 1 << this.getCode() / 100 + 3;
        return severity | category;
    }

    public IStatus[] getChildren() {
        return this.children;
    }

    public IJavaElement[] getElements() {
        return this.elements;
    }

    public String getMessage() {
        Throwable exception = this.getException();
        if (exception == null) {
            switch (this.getCode()) {
                case 966: {
                    return Messages.status_coreException;
                }
                case 990: {
                    return Messages.build_initializationError;
                }
                case 991: {
                    return Messages.build_serializationError;
                }
                case 973: {
                    return Messages.bind(Messages.status_cannotUseDeviceOnPath, this.getPath().toString());
                }
                case 986: {
                    return Messages.status_JDOMError;
                }
                case 969: {
                    return Messages.bind(Messages.element_doesNotExist, ((JavaElement)this.elements[0]).toStringWithAncestors());
                }
                case 1006: {
                    return Messages.bind(Messages.element_notOnClasspath, ((JavaElement)this.elements[0]).toStringWithAncestors());
                }
                case 992: {
                    return Messages.bind(Messages.status_evaluationError, this.string);
                }
                case 980: {
                    return Messages.status_indexOutOfBounds;
                }
                case 984: {
                    return Messages.status_invalidContents;
                }
                case 978: {
                    return Messages.bind(Messages.status_invalidDestination, ((JavaElement)this.elements[0]).toStringWithAncestors());
                }
                case 967: {
                    StringBuffer buff = new StringBuffer(Messages.operation_notSupported);
                    int i = 0;
                    while (i < this.elements.length) {
                        if (i > 0) {
                            buff.append(", ");
                        }
                        buff.append(((JavaElement)this.elements[i]).toStringWithAncestors());
                        ++i;
                    }
                    return buff.toString();
                }
                case 983: {
                    return Messages.bind(Messages.status_invalidName, this.string);
                }
                case 998: {
                    return Messages.bind(Messages.status_invalidPackage, this.string);
                }
                case 979: {
                    if (this.string != null) {
                        return this.string;
                    }
                    return Messages.bind(Messages.status_invalidPath, new String[]{this.getPath() == null ? "null" : this.getPath().toString()});
                }
                case 997: {
                    return Messages.bind(Messages.status_invalidProject, this.string);
                }
                case 995: {
                    return Messages.bind(Messages.status_invalidResource, this.string);
                }
                case 996: {
                    return Messages.bind(Messages.status_invalidResourceType, this.string);
                }
                case 993: {
                    if (this.string != null) {
                        return Messages.bind(Messages.status_invalidSibling, this.string);
                    }
                    return Messages.bind(Messages.status_invalidSibling, ((JavaElement)this.elements[0]).toStringWithAncestors());
                }
                case 985: {
                    return Messages.status_IOException;
                }
                case 977: {
                    IJavaElement element;
                    if (this.elements != null && this.elements.length > 0 && (element = this.elements[0]) instanceof PackageFragment && ((PackageFragment)element).isDefaultPackage()) {
                        return Messages.operation_cannotRenameDefaultPackage;
                    }
                    if (this.string != null) {
                        return this.string;
                    }
                    return Messages.bind(Messages.status_nameCollision, "");
                }
                case 968: {
                    return Messages.operation_needElements;
                }
                case 982: {
                    return Messages.operation_needName;
                }
                case 970: {
                    return Messages.operation_needPath;
                }
                case 974: {
                    return Messages.operation_needString;
                }
                case 971: {
                    return Messages.bind(Messages.operation_pathOutsideProject, new String[]{this.string, ((JavaElement)this.elements[0]).toStringWithAncestors()});
                }
                case 976: {
                    IJavaElement element = this.elements[0];
                    String name = element.getElementName();
                    if (element instanceof IPackageFragment && name.equals("")) {
                        return Messages.status_defaultPackageReadOnly;
                    }
                    return Messages.bind(Messages.status_readOnly, name);
                }
                case 972: {
                    return Messages.bind(Messages.operation_needAbsolutePath, this.getPath().toString());
                }
                case 987: {
                    return Messages.status_targetException;
                }
                case 981: {
                    return Messages.status_updateConflict;
                }
                case 999: {
                    return Messages.bind(Messages.status_noLocalContents, this.getPath().toString());
                }
                case 963: {
                    IJavaProject javaProject = (IJavaProject)this.elements[0];
                    ClasspathContainerInitializer initializer = JavaCore.getClasspathContainerInitializer(this.path.segment(0));
                    String description = null;
                    if (initializer != null) {
                        description = initializer.getDescription(this.path, javaProject);
                    }
                    if (description == null) {
                        description = this.path.makeRelative().toString();
                    }
                    return Messages.bind(Messages.classpath_unboundContainerPath, new String[]{description, javaProject.getElementName()});
                }
                case 962: {
                    IJavaProject javaProject = (IJavaProject)this.elements[0];
                    IClasspathContainer container = null;
                    String description = null;
                    try {
                        container = JavaCore.getClasspathContainer(this.path, javaProject);
                    }
                    catch (JavaModelException javaModelException) {}
                    if (container == null) {
                        ClasspathContainerInitializer initializer = JavaCore.getClasspathContainerInitializer(this.path.segment(0));
                        if (initializer != null) {
                            description = initializer.getDescription(this.path, javaProject);
                        }
                    } else {
                        description = container.getDescription();
                    }
                    if (description == null) {
                        description = this.path.makeRelative().toString();
                    }
                    return Messages.bind(Messages.classpath_invalidContainer, new String[]{description, javaProject.getElementName()});
                }
                case 965: {
                    IJavaProject javaProject = (IJavaProject)this.elements[0];
                    return Messages.bind(Messages.classpath_unboundVariablePath, new String[]{this.path.makeRelative().toString(), javaProject.getElementName()});
                }
                case 1001: {
                    IJavaProject javaProject = (IJavaProject)this.elements[0];
                    return Messages.bind(Messages.classpath_cycle, new String[]{javaProject.getElementName(), this.string});
                }
                case 1002: {
                    IJavaProject javaProject = (IJavaProject)this.elements[0];
                    String projectName = javaProject.getElementName();
                    IPath newPath = this.path;
                    if (this.path.segment(0).toString().equals(projectName)) {
                        newPath = this.path.removeFirstSegments(1);
                    }
                    return Messages.bind(Messages.classpath_disabledInclusionExclusionPatterns, new String[]{newPath.makeRelative().toString(), projectName});
                }
                case 1003: {
                    IJavaProject javaProject = (IJavaProject)this.elements[0];
                    String projectName = javaProject.getElementName();
                    IPath newPath = this.path;
                    if (this.path.segment(0).toString().equals(projectName)) {
                        newPath = this.path.removeFirstSegments(1);
                    }
                    return Messages.bind(Messages.classpath_disabledMultipleOutputLocations, new String[]{newPath.makeRelative().toString(), projectName});
                }
                case 1008: {
                    if (this.elements != null && this.elements.length == 1) {
                        if (this.string != null) {
                            return Messages.bind(Messages.status_cannot_retrieve_attached_javadoc, ((JavaElement)this.elements[0]).toStringWithAncestors(), this.string);
                        }
                        return Messages.bind(Messages.status_cannot_retrieve_attached_javadoc, ((JavaElement)this.elements[0]).toStringWithAncestors(), "");
                    }
                    if (this.string == null) break;
                    return Messages.bind(Messages.status_cannot_retrieve_attached_javadoc, this.string, "");
                }
                case 1012: {
                    if (this.elements != null && this.elements.length == 1) {
                        if (this.string != null) {
                            return Messages.bind(Messages.status_timeout_javadoc, ((JavaElement)this.elements[0]).toStringWithAncestors(), this.string);
                        }
                        return Messages.bind(Messages.status_timeout_javadoc, ((JavaElement)this.elements[0]).toStringWithAncestors(), "");
                    }
                    if (this.string == null) break;
                    return Messages.bind(Messages.status_timeout_javadoc, this.string, "");
                }
                case 1009: {
                    return Messages.bind(Messages.status_unknown_javadoc_format, ((JavaElement)this.elements[0]).toStringWithAncestors());
                }
                case 1010: {
                    IJavaProject javaProject = (IJavaProject)this.elements[0];
                    return Messages.bind(Messages.classpath_deprecated_variable, new String[]{this.path.segment(0).toString(), javaProject.getElementName(), this.string});
                }
            }
            if (this.string != null) {
                return this.string;
            }
            return "";
        }
        String message = exception.getMessage();
        if (message != null) {
            return message;
        }
        return exception.toString();
    }

    public IPath getPath() {
        return this.path;
    }

    public int getSeverity() {
        if (this.children == NO_CHILDREN) {
            return super.getSeverity();
        }
        int severity = -1;
        int i = 0;
        int max = this.children.length;
        while (i < max) {
            int childrenSeverity = this.children[i].getSeverity();
            if (childrenSeverity > severity) {
                severity = childrenSeverity;
            }
            ++i;
        }
        return severity;
    }

    public String getString() {
        return this.string;
    }

    public boolean isDoesNotExist() {
        int code = this.getCode();
        return code == 969 || code == 1006;
    }

    public boolean isMultiStatus() {
        return this.children != NO_CHILDREN;
    }

    public boolean isOK() {
        return this.getCode() == 0;
    }

    public boolean matches(int mask) {
        if (!this.isMultiStatus()) {
            return this.matches(this, mask);
        }
        int i = 0;
        int max = this.children.length;
        while (i < max) {
            if (this.matches((JavaModelStatus)this.children[i], mask)) {
                return true;
            }
            ++i;
        }
        return false;
    }

    protected boolean matches(JavaModelStatus status, int mask) {
        int severityMask = mask & 7;
        int categoryMask = mask & 0xFFFFFFF8;
        int bits = status.getBits();
        return !(severityMask != 0 && (bits & severityMask) == 0 || categoryMask != 0 && (bits & categoryMask) == 0);
    }

    public static IJavaModelStatus newMultiStatus(IJavaModelStatus[] children) {
        JavaModelStatus jms = new JavaModelStatus();
        jms.children = children;
        return jms;
    }

    public String toString() {
        if (this == VERIFIED_OK) {
            return "JavaModelStatus[OK]";
        }
        StringBuffer buffer = new StringBuffer();
        buffer.append("Java Model Status [");
        buffer.append(this.getMessage());
        buffer.append("]");
        return buffer.toString();
    }
}

