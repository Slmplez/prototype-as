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
public class ReplaceCommand
extends AbstractOverrideableCommand {
    protected static final String LABEL = EMFEditPlugin.INSTANCE.getString("_UI_ReplaceCommand_label");
    protected static final String DESCRIPTION = EMFEditPlugin.INSTANCE.getString("_UI_ReplaceCommand_description");
    protected EObject owner;
    protected EStructuralFeature feature;
    protected EList<Object> ownerList;
    protected Object value;
    protected Collection<?> collection;
    protected int index;
    protected Collection<?> affectedObjects;

    public static Command create(EditingDomain domain, Object value, Collection<?> collection) {
        return ReplaceCommand.create(domain, null, null, value, collection);
    }

    public static Command create(EditingDomain domain, Object owner, Object feature, Object value, Collection<?> collection) {
        return domain.createCommand(ReplaceCommand.class, new CommandParameter(owner, feature, value, collection));
    }

    public ReplaceCommand(EditingDomain domain, EObject owner, EStructuralFeature feature, Object value, Object replacement) {
        this(domain, owner, feature, value, Collections.singleton(replacement));
    }

    public ReplaceCommand(EditingDomain domain, EObject owner, EStructuralFeature feature, Object value, Collection<?> collection) {
        super(domain, LABEL, DESCRIPTION);
        this.owner = owner;
        this.feature = feature;
        this.value = value;
        this.collection = collection;
        this.ownerList = ReplaceCommand.getOwnerList(this.owner, feature);
    }

    public ReplaceCommand(EditingDomain domain, EList<?> list, Object value, Object replacement) {
        this(domain, list, value, Collections.singleton(replacement));
    }

    public ReplaceCommand(EditingDomain domain, EList<?> list, Object value, Collection<?> collection) {
        super(domain, LABEL, DESCRIPTION);
        this.value = value;
        this.collection = collection;
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

    public Collection<?> getCollection() {
        return this.collection;
    }

    public int getIndex() {
        return this.index;
    }

    protected boolean prepare() {
        if (this.ownerList == null || !this.ownerList.contains(this.value) || this.collection == null || this.collection.isEmpty()) {
            return false;
        }
        if (this.owner != null && this.domain.isReadOnly(this.owner.eResource())) {
            return false;
        }
        if (this.feature == null) {
            return true;
        }
        for (Object replacement : this.collection) {
            if (this.feature.getEType().isInstance(replacement)) continue;
            return false;
        }
        return true;
    }

    @Override
    public void doExecute() {
        this.index = this.ownerList.indexOf(this.value);
        this.ownerList.remove(this.value);
        this.ownerList.addAll(this.index, this.collection);
        this.updateEMap(this.owner, this.feature);
        this.affectedObjects = this.collection;
    }

    @Override
    public void doUndo() {
        this.ownerList.removeAll(this.collection);
        this.ownerList.add(this.index, this.value);
        this.updateEMap(this.owner, this.feature);
        this.affectedObjects = Collections.singleton(this.value);
    }

    @Override
    public void doRedo() {
        this.ownerList.remove(this.value);
        this.ownerList.addAll(this.index, this.collection);
        this.updateEMap(this.owner, this.feature);
        this.affectedObjects = this.collection;
    }

    @Override
    public Collection<?> doGetResult() {
        return this.collection;
    }

    @Override
    public Collection<?> doGetAffectedObjects() {
        return this.affectedObjects;
    }

    @Override
    public String toString() {
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (owner: " + this.owner + ")");
        result.append(" (feature: " + this.feature + ")");
        result.append(" (ownerList: " + this.ownerList + ")");
        result.append(" (value: " + this.value + ")");
        result.append(" (collection: " + this.collection + ")");
        result.append(" (index: " + this.index + ")");
        result.append(" (affectedObjects:" + this.affectedObjects + ")");
        return result.toString();
    }
}

