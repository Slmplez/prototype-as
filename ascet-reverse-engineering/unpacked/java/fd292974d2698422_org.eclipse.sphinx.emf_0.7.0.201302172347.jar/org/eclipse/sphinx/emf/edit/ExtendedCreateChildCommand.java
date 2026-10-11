/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.emf.common.command.Command
 *  org.eclipse.emf.common.command.CompoundCommand
 *  org.eclipse.emf.common.command.UnexecutableCommand
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EClassifier
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EReference
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.EcorePackage
 *  org.eclipse.emf.edit.command.AddCommand
 *  org.eclipse.emf.edit.command.CreateChildCommand
 *  org.eclipse.emf.edit.command.CreateChildCommand$Helper
 *  org.eclipse.emf.edit.command.SetCommand
 *  org.eclipse.emf.edit.domain.EditingDomain
 */
package org.eclipse.sphinx.emf.edit;

import java.util.Collection;
import org.eclipse.core.runtime.Assert;
import org.eclipse.emf.common.command.Command;
import org.eclipse.emf.common.command.CompoundCommand;
import org.eclipse.emf.common.command.UnexecutableCommand;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.edit.command.AddCommand;
import org.eclipse.emf.edit.command.CreateChildCommand;
import org.eclipse.emf.edit.command.SetCommand;
import org.eclipse.emf.edit.domain.EditingDomain;
import org.eclipse.sphinx.emf.edit.ExtendedItemProviderAdapter;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ExtendedCreateChildCommand
extends CreateChildCommand {
    public ExtendedCreateChildCommand(EditingDomain domain, EObject owner, EStructuralFeature feature, Object child, int index, Collection<?> selection, CreateChildCommand.Helper helper) {
        super(domain, owner, feature, child, index, selection, helper);
    }

    public String getText() {
        if (this.helper instanceof ExtendedItemProviderAdapter) {
            return ((ExtendedItemProviderAdapter)this.helper).getCreateChildText(this.owner, this.feature, this.child, this.selection, true);
        }
        return super.getText();
    }

    protected Command createCommand() {
        if (this.owner == null || this.feature == null || this.child == null) {
            return UnexecutableCommand.INSTANCE;
        }
        CompoundCommand command = new CompoundCommand(0);
        if (this.feature.isMany()) {
            command.append(AddCommand.create((EditingDomain)this.domain, (Object)this.owner, (Object)this.feature, (Object)this.child, (int)this.index));
            this.appendAddToContainerCommand(command);
            return command;
        }
        if (this.owner.eGet(this.feature) == null) {
            command.append(SetCommand.create((EditingDomain)this.domain, (Object)this.owner, (Object)this.feature, (Object)this.child));
            this.appendAddToContainerCommand(command);
            return command;
        }
        return UnexecutableCommand.INSTANCE;
    }

    private void appendAddToContainerCommand(CompoundCommand command) {
        EObject eContainer;
        if (this.child != null && this.child instanceof EObject && !((EReference)this.feature).isContainment() && (eContainer = this.owner.eContainer()) != null) {
            EObject container = null;
            EReference containerReference = null;
            for (EReference eContainerReference : eContainer.eClass().getEAllContainments()) {
                if (!eContainerReference.getEType().isInstance(this.child) || containerReference != null && !this.isReferenceTypeSubTypeOf(eContainerReference.getEType(), containerReference.getEType())) continue;
                container = eContainer;
                containerReference = eContainerReference;
            }
            if (container != null) {
                if (containerReference.isMany()) {
                    command.append(AddCommand.create((EditingDomain)this.domain, container, containerReference, (Object)this.child));
                } else {
                    command.append(SetCommand.create((EditingDomain)this.domain, container, containerReference, (Object)this.child));
                }
            }
            return;
        }
    }

    private boolean isReferenceTypeSubTypeOf(EClassifier referenceType, EClassifier type) {
        Assert.isLegal((boolean)(referenceType instanceof EClass));
        Assert.isLegal((boolean)(type instanceof EClass));
        if (referenceType == type) {
            return false;
        }
        if (type == EcorePackage.eINSTANCE.getEObject()) {
            return true;
        }
        for (EClass superType : ((EClass)referenceType).getESuperTypes()) {
            if (superType == type) {
                return true;
            }
            if (!this.isReferenceTypeSubTypeOf((EClassifier)superType, type)) continue;
            return true;
        }
        return false;
    }
}

