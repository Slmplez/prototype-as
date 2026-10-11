/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core;

import java.util.HashMap;
import java.util.Map;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IMethod;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.JavaConventions;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.core.BinaryType;
import org.eclipse.jdt.internal.core.CompilationUnit;
import org.eclipse.jdt.internal.core.JavaModelOperation;
import org.eclipse.jdt.internal.core.JavaModelStatus;

public abstract class MultiOperation
extends JavaModelOperation {
    protected Map insertBeforeElements = new HashMap(1);
    protected Map newParents;
    protected Map renamings;
    protected String[] renamingsList = null;

    protected MultiOperation(IJavaElement[] elementsToProcess, boolean force) {
        super(elementsToProcess, force);
    }

    protected MultiOperation(IJavaElement[] elementsToProcess, IJavaElement[] parentElements, boolean force) {
        super(elementsToProcess, parentElements, force);
        this.newParents = new HashMap(elementsToProcess.length);
        if (elementsToProcess.length == parentElements.length) {
            int i = 0;
            while (i < elementsToProcess.length) {
                this.newParents.put(elementsToProcess[i], parentElements[i]);
                ++i;
            }
        } else {
            int i = 0;
            while (i < elementsToProcess.length) {
                this.newParents.put(elementsToProcess[i], parentElements[0]);
                ++i;
            }
        }
    }

    protected void error(int code, IJavaElement element) throws JavaModelException {
        throw new JavaModelException(new JavaModelStatus(code, element));
    }

    protected void executeOperation() throws JavaModelException {
        this.processElements();
    }

    protected IJavaElement getDestinationParent(IJavaElement child) {
        return (IJavaElement)this.newParents.get(child);
    }

    protected abstract String getMainTaskName();

    protected String getNewNameFor(IJavaElement element) throws JavaModelException {
        String newName = null;
        if (this.renamings != null) {
            newName = (String)this.renamings.get(element);
        }
        if (newName == null && element instanceof IMethod && ((IMethod)element).isConstructor()) {
            newName = this.getDestinationParent(element).getElementName();
        }
        return newName;
    }

    private void initializeRenamings() {
        if (this.renamingsList != null && this.renamingsList.length == this.elementsToProcess.length) {
            this.renamings = new HashMap(this.renamingsList.length);
            int i = 0;
            while (i < this.renamingsList.length) {
                if (this.renamingsList[i] != null) {
                    this.renamings.put(this.elementsToProcess[i], this.renamingsList[i]);
                }
                ++i;
            }
        }
    }

    protected boolean isMove() {
        return false;
    }

    protected boolean isRename() {
        return false;
    }

    protected abstract void processElement(IJavaElement var1) throws JavaModelException;

    protected void processElements() throws JavaModelException {
        try {
            this.beginTask(this.getMainTaskName(), this.elementsToProcess.length);
            IJavaModelStatus[] errors = new IJavaModelStatus[3];
            int errorsCounter = 0;
            int i = 0;
            while (i < this.elementsToProcess.length) {
                block13: {
                    try {
                        try {
                            this.verify(this.elementsToProcess[i]);
                            this.processElement(this.elementsToProcess[i]);
                        }
                        catch (JavaModelException jme) {
                            if (errorsCounter == errors.length) {
                                IJavaModelStatus[] iJavaModelStatusArray = errors;
                                errors = new IJavaModelStatus[errorsCounter * 2];
                                System.arraycopy(iJavaModelStatusArray, 0, errors, 0, errorsCounter);
                            }
                            errors[errorsCounter++] = jme.getJavaModelStatus();
                            this.worked(1);
                            break block13;
                        }
                    }
                    catch (Throwable throwable) {
                        this.worked(1);
                        throw throwable;
                    }
                    this.worked(1);
                }
                ++i;
            }
            if (errorsCounter == 1) {
                throw new JavaModelException(errors[0]);
            }
            if (errorsCounter > 1) {
                if (errorsCounter != errors.length) {
                    IJavaModelStatus[] iJavaModelStatusArray = errors;
                    errors = new IJavaModelStatus[errorsCounter];
                    System.arraycopy(iJavaModelStatusArray, 0, errors, 0, errorsCounter);
                }
                throw new JavaModelException(JavaModelStatus.newMultiStatus(errors));
            }
        }
        finally {
            this.done();
        }
    }

    public void setInsertBefore(IJavaElement modifiedElement, IJavaElement newSibling) {
        this.insertBeforeElements.put(modifiedElement, newSibling);
    }

    public void setRenamings(String[] renamingsList) {
        this.renamingsList = renamingsList;
        this.initializeRenamings();
    }

    protected abstract void verify(IJavaElement var1) throws JavaModelException;

    protected void verifyDestination(IJavaElement element, IJavaElement destination) throws JavaModelException {
        if (destination == null || !destination.exists()) {
            this.error(969, destination);
        }
        int destType = destination.getElementType();
        switch (element.getElementType()) {
            case 11: 
            case 13: {
                if (destType == 5) break;
                this.error(978, element);
                break;
            }
            case 7: {
                if (destType == 5 || destType == 7) break;
                this.error(978, element);
                break;
            }
            case 8: 
            case 9: 
            case 10: {
                if (destType == 7 && !(destination instanceof BinaryType)) break;
                this.error(978, element);
                break;
            }
            case 5: {
                if (destType != 4) {
                    this.error(978, element);
                    break;
                }
                CompilationUnit cu = (CompilationUnit)element;
                if (!this.isMove() || !cu.isWorkingCopy() || cu.isPrimary()) break;
                this.error(967, element);
                break;
            }
            case 4: {
                IPackageFragment fragment = (IPackageFragment)element;
                IJavaElement parent = fragment.getParent();
                if (parent.isReadOnly()) {
                    this.error(976, element);
                    break;
                }
                if (destType == 3) break;
                this.error(978, element);
                break;
            }
            default: {
                this.error(967, element);
            }
        }
    }

    protected void verifyRenaming(IJavaElement element) throws JavaModelException {
        String newName = this.getNewNameFor(element);
        boolean isValid = true;
        IJavaProject project = element.getJavaProject();
        String sourceLevel = project.getOption("org.eclipse.jdt.core.compiler.source", true);
        String complianceLevel = project.getOption("org.eclipse.jdt.core.compiler.compliance", true);
        switch (element.getElementType()) {
            case 4: {
                if (((IPackageFragment)element).isDefaultPackage()) {
                    throw new JavaModelException(new JavaModelStatus(977, element));
                }
                isValid = JavaConventions.validatePackageName(newName, sourceLevel, complianceLevel).getSeverity() != 4;
                break;
            }
            case 5: {
                isValid = JavaConventions.validateCompilationUnitName(newName, sourceLevel, complianceLevel).getSeverity() != 4;
                break;
            }
            case 10: {
                isValid = false;
                break;
            }
            default: {
                boolean bl = isValid = JavaConventions.validateIdentifier(newName, sourceLevel, complianceLevel).getSeverity() != 4;
            }
        }
        if (!isValid) {
            throw new JavaModelException(new JavaModelStatus(983, element, newName));
        }
    }

    protected void verifySibling(IJavaElement element, IJavaElement destination) throws JavaModelException {
        IJavaElement insertBeforeElement = (IJavaElement)this.insertBeforeElements.get(element);
        if (!(insertBeforeElement == null || insertBeforeElement.exists() && insertBeforeElement.getParent().equals(destination))) {
            this.error(993, insertBeforeElement);
        }
    }
}

