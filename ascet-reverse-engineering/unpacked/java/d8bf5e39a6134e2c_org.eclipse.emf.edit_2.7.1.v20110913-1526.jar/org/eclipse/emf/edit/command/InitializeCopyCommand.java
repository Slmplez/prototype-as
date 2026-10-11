/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.command.Command
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EReference
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.util.FeatureMap
 *  org.eclipse.emf.ecore.util.FeatureMap$Entry
 *  org.eclipse.emf.ecore.util.FeatureMapUtil
 */
package org.eclipse.emf.edit.command;

import java.util.Collection;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.command.Command;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.util.FeatureMap;
import org.eclipse.emf.ecore.util.FeatureMapUtil;
import org.eclipse.emf.edit.EMFEditPlugin;
import org.eclipse.emf.edit.command.AbstractOverrideableCommand;
import org.eclipse.emf.edit.command.CommandParameter;
import org.eclipse.emf.edit.command.CopyCommand;
import org.eclipse.emf.edit.domain.EditingDomain;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class InitializeCopyCommand
extends AbstractOverrideableCommand {
    protected static final String LABEL = EMFEditPlugin.INSTANCE.getString("_UI_InitializeCopyCommand_label");
    protected static final String DESCRIPTION = EMFEditPlugin.INSTANCE.getString("_UI_InitializeCopyCommand_description");
    protected EObject owner;
    protected EObject copy;
    protected CopyCommand.Helper copyHelper;

    public static Command create(EditingDomain domain, Object owner, CopyCommand.Helper copyHelper) {
        return domain.createCommand(InitializeCopyCommand.class, new CommandParameter(owner, null, copyHelper));
    }

    public InitializeCopyCommand(EditingDomain domain, EObject owner, CopyCommand.Helper copyHelper) {
        super(domain, LABEL, DESCRIPTION);
        this.owner = owner;
        this.copy = copyHelper.getCopy(owner);
        this.copyHelper = copyHelper;
    }

    public EObject getOwner() {
        return this.owner;
    }

    public EObject getCopy() {
        return this.copy;
    }

    public CopyCommand.Helper getCopyHelper() {
        return this.copyHelper;
    }

    protected boolean prepare() {
        return this.owner.eClass().isInstance((Object)this.copy);
    }

    @Override
    public void doExecute() {
        this.copyAttributes();
        this.copyReferences();
    }

    protected Collection<? extends EAttribute> getAttributesToCopy() {
        return this.owner.eClass().getEAllAttributes();
    }

    protected void copyAttributes() {
        for (EAttribute eAttribute : this.getAttributesToCopy()) {
            if (!eAttribute.isChangeable() || eAttribute.isDerived() || !eAttribute.isMany() && !this.owner.eIsSet((EStructuralFeature)eAttribute)) continue;
            Object value = this.owner.eGet((EStructuralFeature)eAttribute);
            if (!eAttribute.isMany()) {
                this.copy.eSet((EStructuralFeature)eAttribute, value);
                continue;
            }
            List list = (List)this.copy.eGet((EStructuralFeature)eAttribute);
            if (FeatureMapUtil.isFeatureMap((EStructuralFeature)eAttribute)) {
                FeatureMap featureMap = (FeatureMap)list;
                block1: for (FeatureMap.Entry entry : (FeatureMap)value) {
                    boolean copiedTargetRequired;
                    EStructuralFeature entryFeature = entry.getEStructuralFeature();
                    if (entryFeature instanceof EAttribute) {
                        featureMap.add((Object)entry);
                        continue;
                    }
                    EReference reference = (EReference)entryFeature;
                    EReference reverseReference = reference.getEOpposite();
                    Object entryValue = entry.getValue();
                    EObject target = this.copyHelper.getCopyTarget((EObject)entryValue, copiedTargetRequired = reverseReference != null || reference.isContainment());
                    if (target == null) continue;
                    if (reverseReference != null) {
                        for (FeatureMap.Entry copyEntry : featureMap) {
                            if (copyEntry.getEStructuralFeature() != reference || copyEntry.getValue() != target) continue;
                            featureMap.move(featureMap.size() - 1, (Object)copyEntry);
                            continue block1;
                        }
                    }
                    featureMap.add((EStructuralFeature)reference, (Object)target);
                }
                continue;
            }
            list.addAll((List)value);
        }
    }

    protected Collection<? extends EReference> getReferencesToCopy() {
        return this.owner.eClass().getEAllReferences();
    }

    protected void copyReferences() {
        block0: for (EReference eReference : this.getReferencesToCopy()) {
            boolean copiedTargetRequired;
            if (!eReference.isChangeable() || eReference.isDerived() || !this.owner.eIsSet((EStructuralFeature)eReference)) continue;
            EReference reverseReference = eReference.getEOpposite();
            Object value = this.owner.eGet((EStructuralFeature)eReference);
            if (value == null) {
                this.copy.eSet((EStructuralFeature)eReference, null);
                continue;
            }
            boolean bl = copiedTargetRequired = reverseReference != null || eReference.isContainment();
            if (eReference.isMany()) {
                List valueList = (List)value;
                EList copyList = (EList)this.copy.eGet((EStructuralFeature)eReference);
                if (valueList.isEmpty()) {
                    copyList.clear();
                    continue;
                }
                int index = 0;
                for (EObject item : valueList) {
                    EObject target = this.copyHelper.getCopyTarget(item, copiedTargetRequired);
                    if (target == null) continue block0;
                    if (reverseReference != null) {
                        int position = copyList.indexOf((Object)target);
                        if (position == -1) {
                            copyList.add(index, (Object)target);
                        } else {
                            copyList.move(index, (Object)target);
                        }
                    } else {
                        copyList.add((Object)target);
                    }
                    ++index;
                }
                continue;
            }
            EObject target = this.copyHelper.getCopyTarget((EObject)value, copiedTargetRequired);
            if (target == null) continue;
            this.copy.eSet((EStructuralFeature)eReference, (Object)target);
        }
    }

    @Override
    public void doUndo() {
    }

    @Override
    public void doRedo() {
    }

    @Override
    public Collection<?> doGetResult() {
        return Collections.singleton(this.copy);
    }

    @Override
    public Collection<?> doGetAffectedObjects() {
        return Collections.singleton(this.copy);
    }

    @Override
    public String toString() {
        StringBuffer result = new StringBuffer(String.valueOf(super.toString()) + ")");
        result.append(" (domain: " + this.domain + ")");
        result.append(" (owner: " + this.owner + ")");
        result.append(" (copy: " + this.copy + ")");
        result.append(" (copyHelper: " + this.copyHelper + ")");
        return result.toString();
    }
}

