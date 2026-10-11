/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.command.Command
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EStructuralFeature
 */
package org.eclipse.emf.edit.command;

import java.util.Collection;
import java.util.Collections;
import org.eclipse.emf.common.command.Command;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.edit.EMFEditPlugin;
import org.eclipse.emf.edit.command.AbstractOverrideableCommand;
import org.eclipse.emf.edit.command.CommandParameter;
import org.eclipse.emf.edit.domain.EditingDomain;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class MoveCommand
extends AbstractOverrideableCommand {
    protected static final String LABEL = EMFEditPlugin.INSTANCE.getString("_UI_MoveCommand_label");
    protected static final String DESCRIPTION = EMFEditPlugin.INSTANCE.getString("_UI_MoveCommand_description");
    protected static final String DESCRIPTION_FOR_LIST = EMFEditPlugin.INSTANCE.getString("_UI_MoveCommand_description_for_list");
    protected EObject owner;
    protected EStructuralFeature feature;
    protected EList<Object> ownerList;
    protected Object value;
    protected int index;
    protected int oldIndex;

    public static Command create(EditingDomain domain, Object owner, Object feature, Object value, int index) {
        return domain.createCommand(MoveCommand.class, new CommandParameter(owner, feature, value, index));
    }

    public MoveCommand(EditingDomain domain, EObject owner, EStructuralFeature feature, Object value, int index) {
        super(domain, LABEL, DESCRIPTION);
        this.owner = owner;
        this.feature = feature;
        this.value = value;
        this.index = index;
        this.ownerList = MoveCommand.getOwnerList(this.owner, feature);
        this.oldIndex = -1;
    }

    public MoveCommand(EditingDomain domain, EObject owner, EStructuralFeature feature, int sourceIndex, int targetIndex) {
        super(domain, LABEL, DESCRIPTION);
        this.owner = owner;
        this.feature = feature;
        this.index = targetIndex;
        this.oldIndex = sourceIndex;
        this.ownerList = MoveCommand.getOwnerList(this.owner, feature);
        if (this.ownerList != null && this.ownerList.size() > sourceIndex && sourceIndex >= 0) {
            this.value = this.ownerList.get(sourceIndex);
        }
    }

    public MoveCommand(EditingDomain domain, EList<?> list, Object value, int index) {
        super(domain, LABEL, DESCRIPTION_FOR_LIST);
        this.value = value;
        this.index = index;
        this.oldIndex = -1;
        EList<?> untypedList = list;
        this.ownerList = untypedList;
    }

    public MoveCommand(EditingDomain domain, EList<?> list, int sourceIndex, int targetIndex) {
        super(domain, LABEL, DESCRIPTION_FOR_LIST);
        if (list != null && list.size() > sourceIndex && sourceIndex >= 0) {
            this.value = list.get(sourceIndex);
        }
        this.index = targetIndex;
        this.oldIndex = sourceIndex;
        EList<?> untypedList = list;
        this.ownerList = untypedList;
    }

    public EObject getOwner() {
        return this.owner;
    }

    public EStructuralFeature getFeature() {
        return this.feature;
    }

    public EList<Object> getOwnerList() {
        return this.ownerList;
    }

    public Object getValue() {
        return this.value;
    }

    public int getIndex() {
        return this.index;
    }

    public int getOldIndex() {
        return this.oldIndex;
    }

    protected boolean prepare() {
        boolean result = this.ownerList != null && this.index >= 0 && this.index < this.ownerList.size() && (this.oldIndex == -1 ? this.ownerList.contains(this.value) : this.oldIndex >= 0 && this.oldIndex < this.ownerList.size()) && (this.owner == null || !this.domain.isReadOnly(this.owner.eResource()));
        return result;
    }

    @Override
    public void doExecute() {
        if (this.oldIndex == -1) {
            this.oldIndex = this.ownerList.indexOf(this.value);
        }
        this.ownerList.move(this.index, this.oldIndex);
    }

    @Override
    public void doUndo() {
        this.ownerList.move(this.oldIndex, this.index);
    }

    @Override
    public void doRedo() {
        this.ownerList.move(this.index, this.oldIndex);
    }

    @Override
    public Collection<?> doGetResult() {
        return Collections.singleton(this.value);
    }

    @Override
    public Collection<?> doGetAffectedObjects() {
        return Collections.singleton(this.value);
    }

    @Override
    public String toString() {
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (owner: " + this.owner + ")");
        result.append(" (feature: " + this.feature + ")");
        result.append(" (ownerList: " + this.ownerList + ")");
        result.append(" (value: " + this.value + ")");
        result.append(" (index: " + this.index + ")");
        result.append(" (oldIndex: " + this.oldIndex + ")");
        return result.toString();
    }
}

