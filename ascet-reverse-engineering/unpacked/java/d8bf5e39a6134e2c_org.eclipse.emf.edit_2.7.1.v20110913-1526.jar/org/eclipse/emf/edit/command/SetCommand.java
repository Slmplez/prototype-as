/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.command.Command
 *  org.eclipse.emf.common.command.CommandWrapper
 *  org.eclipse.emf.common.command.CompoundCommand
 *  org.eclipse.emf.common.command.IdentityCommand
 *  org.eclipse.emf.common.command.StrictCompoundCommand
 *  org.eclipse.emf.common.util.BasicEList
 *  org.eclipse.emf.common.util.BasicEList$FastCompare
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EClassifier
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EReference
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.EcorePackage
 *  org.eclipse.emf.ecore.util.ExtendedMetaData
 */
package org.eclipse.emf.edit.command;

import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.ListIterator;
import org.eclipse.emf.common.command.Command;
import org.eclipse.emf.common.command.CommandWrapper;
import org.eclipse.emf.common.command.CompoundCommand;
import org.eclipse.emf.common.command.IdentityCommand;
import org.eclipse.emf.common.command.StrictCompoundCommand;
import org.eclipse.emf.common.util.BasicEList;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.util.ExtendedMetaData;
import org.eclipse.emf.edit.EMFEditPlugin;
import org.eclipse.emf.edit.command.AbstractOverrideableCommand;
import org.eclipse.emf.edit.command.AddCommand;
import org.eclipse.emf.edit.command.CommandParameter;
import org.eclipse.emf.edit.command.MoveCommand;
import org.eclipse.emf.edit.command.RemoveCommand;
import org.eclipse.emf.edit.domain.EditingDomain;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SetCommand
extends AbstractOverrideableCommand {
    public static final Object UNSET_VALUE = new Object();
    protected static final String LABEL = EMFEditPlugin.INSTANCE.getString("_UI_SetCommand_label");
    protected static final String DESCRIPTION = EMFEditPlugin.INSTANCE.getString("_UI_SetCommand_description");
    protected EObject owner;
    protected EStructuralFeature feature;
    protected EList<Object> ownerList;
    protected Object value;
    protected Object oldValue;
    protected int index;
    protected boolean canUndo = true;
    protected Command removeCommand;
    protected static final EcorePackage ecorePackage = EcorePackage.eINSTANCE;

    public static Command create(EditingDomain domain, Object owner, Object feature, Object value) {
        return SetCommand.create(domain, owner, feature, value, -1);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static Command create(EditingDomain domain, final Object owner, Object feature, Object value, int index) {
        EObject otherEObject;
        if (!(owner instanceof EObject) || !((EObject)owner).eClass().getEAllReferences().contains(feature)) return domain.createCommand(SetCommand.class, new CommandParameter(owner, feature, value, index));
        EReference eReference = (EReference)feature;
        if (eReference.isMany() && index == -1) {
            List values = value == UNSET_VALUE ? Collections.EMPTY_LIST : (List)value;
            List oldValues = (List)((EObject)owner).eGet((EStructuralFeature)eReference);
            CompoundCommand compound = null;
            compound = new CompoundCommand(Integer.MIN_VALUE, LABEL, DESCRIPTION){

                public Collection<?> getAffectedObjects() {
                    return Collections.singleton(owner);
                }
            };
            if (!oldValues.isEmpty()) {
                if (!values.isEmpty()) {
                    BasicEList.FastCompare removedValues = new BasicEList.FastCompare((Collection)oldValues);
                    removedValues.removeAll(values);
                    if (!removedValues.equals(oldValues)) {
                        if (!removedValues.isEmpty()) {
                            compound.append(RemoveCommand.create(domain, owner, feature, new BasicEList((Collection)removedValues)));
                        }
                        BasicEList.FastCompare remainingValues = new BasicEList.FastCompare((Collection)oldValues);
                        remainingValues.removeAll((Collection)removedValues);
                        int count = -1;
                        for (Object object : values) {
                            int position = remainingValues.indexOf(object);
                            if (position == -1 || position == ++count) continue;
                            compound.append(MoveCommand.create(domain, owner, feature, object, count));
                            remainingValues.move(count, position);
                        }
                        BasicEList.FastCompare addedValues = new BasicEList.FastCompare((Collection)values);
                        addedValues.removeAll((Collection<?>)remainingValues);
                        if (addedValues.isEmpty()) return compound;
                        int addIndex = remainingValues.size();
                        ListIterator i = values.listIterator(values.size());
                        while (i.hasPrevious()) {
                            Object object = i.previous();
                            if (addedValues.contains(object)) {
                                compound.append(AddCommand.create(domain, owner, feature, object, addIndex));
                                continue;
                            }
                            --addIndex;
                        }
                        return compound;
                    }
                }
                compound.append(RemoveCommand.create(domain, owner, feature, new BasicEList((Collection)oldValues)));
            }
            if (!values.isEmpty()) {
                compound.append(AddCommand.create(domain, owner, feature, values));
                return compound;
            } else if (value == UNSET_VALUE && eReference.isUnsettable()) {
                compound.append(domain.createCommand(SetCommand.class, new CommandParameter(owner, feature, value)));
                return compound;
            } else {
                if (!compound.getCommandList().isEmpty()) return compound;
                return IdentityCommand.INSTANCE;
            }
        }
        if (eReference.getEOpposite() == null) return domain.createCommand(SetCommand.class, new CommandParameter(owner, feature, value, index));
        EReference eOtherEnd = eReference.getEOpposite();
        if (eOtherEnd.isMany()) {
            if (eReference.isMany()) {
                EObject oldValue;
                EList oppositeList;
                EList list = (EList)((EObject)owner).eGet((EStructuralFeature)eReference);
                if (index != list.size() - 1 || (oppositeList = (EList)(oldValue = (EObject)list.get(index)).eGet((EStructuralFeature)eOtherEnd)).get(oppositeList.size() - 1) == owner) return domain.createCommand(SetCommand.class, new CommandParameter(owner, feature, value, index));
                CompoundCommand compound = new CompoundCommand(Integer.MIN_VALUE, LABEL, DESCRIPTION){

                    public Collection<?> getAffectedObjects() {
                        return Collections.singleton(owner);
                    }
                };
                compound.append(RemoveCommand.create(domain, (Object)oldValue, (Object)eOtherEnd, owner));
                compound.append(AddCommand.create(domain, owner, feature, value));
                return compound;
            }
            Object oldValue = ((EObject)owner).eGet((EStructuralFeature)eReference);
            if (value == null || value == UNSET_VALUE) {
                if (oldValue == null) {
                    return domain.createCommand(SetCommand.class, new CommandParameter(owner, (Object)eReference, value));
                }
                Command removeCommand = RemoveCommand.create(domain, oldValue, (Object)eOtherEnd, Collections.singleton(owner));
                if (value != UNSET_VALUE || !eReference.isUnsettable()) {
                    return removeCommand;
                }
                CompoundCommand compound = new CompoundCommand(LABEL, DESCRIPTION);
                compound.append(removeCommand);
                compound.append(domain.createCommand(SetCommand.class, new CommandParameter(owner, (Object)eReference, value)));
                return compound;
            }
            CommandWrapper addCommand = new CommandWrapper(AddCommand.create(domain, value, (Object)eOtherEnd, Collections.singleton(owner))){

                public Collection<?> getAffectedObjects() {
                    return Collections.singleton(owner);
                }
            };
            if (oldValue == null) {
                return addCommand;
            }
            CompoundCommand compound = new CompoundCommand(Integer.MIN_VALUE, LABEL, DESCRIPTION);
            compound.append(RemoveCommand.create(domain, oldValue, (Object)eOtherEnd, Collections.singleton(owner)));
            compound.append((Command)addCommand);
            return compound;
        }
        if (eOtherEnd.isContainment()) {
            if (value == null || value == UNSET_VALUE) return domain.createCommand(SetCommand.class, new CommandParameter(owner, feature, value, index));
            return new CommandWrapper(SetCommand.create(domain, value, eOtherEnd, owner)){

                public Collection<?> getResult() {
                    return Collections.singleton(owner);
                }

                public Collection<?> getAffectedObjects() {
                    return Collections.singleton(owner);
                }
            };
        }
        if (!(value instanceof EObject) || (otherEObject = (EObject)((EObject)value).eGet((EStructuralFeature)eOtherEnd)) == null) return domain.createCommand(SetCommand.class, new CommandParameter(owner, feature, value, index));
        CompoundCommand compound = new CompoundCommand(Integer.MIN_VALUE){

            public boolean canUndo() {
                return true;
            }
        };
        if (eReference.isMany()) {
            compound.append(SetCommand.create(domain, value, eOtherEnd, null));
        } else {
            compound.append(domain.createCommand(SetCommand.class, eOtherEnd.isChangeable() ? new CommandParameter(value, (Object)eOtherEnd, null) : new CommandParameter((Object)otherEObject, (Object)eReference, null)));
        }
        compound.append(domain.createCommand(SetCommand.class, new CommandParameter(owner, (Object)eReference, value, index)));
        return compound;
    }

    public SetCommand(EditingDomain domain, EObject owner, EStructuralFeature feature, Object value) {
        super(domain, LABEL, DESCRIPTION);
        this.owner = owner;
        this.feature = feature;
        this.value = value;
        this.index = -1;
    }

    public SetCommand(EditingDomain domain, EObject owner, EStructuralFeature feature, Object value, int index) {
        super(domain, LABEL, DESCRIPTION);
        this.owner = owner;
        this.feature = feature;
        this.value = value;
        this.index = index;
        if (index != -1) {
            this.ownerList = SetCommand.getOwnerList(owner, feature);
        }
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

    public int getIndex() {
        return this.index;
    }

    public Object getValue() {
        return this.value;
    }

    public Object getOldValue() {
        return this.oldValue;
    }

    protected boolean prepare() {
        boolean result = false;
        if (this.owner != null) {
            if (this.domain.isReadOnly(this.owner.eResource())) {
                return false;
            }
            EClass eMetaObject = this.owner.eClass();
            EList eAllStructuralFeatures = eMetaObject.getEAllStructuralFeatures();
            if (eAllStructuralFeatures.contains((Object)this.feature) || eAllStructuralFeatures.contains((Object)ExtendedMetaData.INSTANCE.getAffiliation(eMetaObject, this.feature))) {
                EClassifier eType = this.feature.getEType();
                if (this.ownerList != null) {
                    if (!(this.index < 0 || this.index >= this.ownerList.size() || !eType.isInstance(this.value) || this.feature.isUnique() && this.ownerList.contains(this.value))) {
                        this.oldValue = this.ownerList.get(this.index);
                        result = true;
                    }
                } else if (this.feature.isMany()) {
                    this.oldValue = this.owner.eIsSet(this.feature) ? new BasicEList((Collection)((EList)this.owner.eGet(this.feature))) : UNSET_VALUE;
                    if (this.value == UNSET_VALUE) {
                        result = true;
                    } else if (this.value instanceof Collection) {
                        Collection collection = (Collection)this.value;
                        result = true;
                        for (Object object : collection) {
                            if (eType.isInstance(object)) continue;
                            result = false;
                            break;
                        }
                    }
                } else {
                    this.oldValue = this.owner.eIsSet(this.feature) ? this.owner.eGet(this.feature) : UNSET_VALUE;
                    boolean bl = result = this.value == null || this.value == UNSET_VALUE || eType.isInstance(this.value);
                }
                if (result && this.feature instanceof EReference && ((EReference)this.feature).isContainment()) {
                    EObject container = this.owner;
                    while (container != null) {
                        if (this.value == container) {
                            result = false;
                            break;
                        }
                        container = container.eContainer();
                    }
                }
            }
        }
        return result;
    }

    @Override
    public void doExecute() {
        EReference eReference;
        if (this.feature instanceof EReference && (eReference = (EReference)this.feature).getEOpposite() != null) {
            EObject eObject;
            EObject otherEObject;
            if (this.oldValue instanceof Collection) {
                this.oldValue = new BasicEList((Collection)this.owner.eGet(this.feature));
            } else if (this.oldValue != UNSET_VALUE && this.index == -1) {
                this.oldValue = this.owner.eGet(this.feature);
            }
            EReference eOtherEnd = eReference.getEOpposite();
            if (eOtherEnd.isMany()) {
                if (this.oldValue instanceof Collection) {
                    Collection oldValues = (Collection)this.oldValue;
                    if (!oldValues.isEmpty()) {
                        CompoundCommand compoundCommand = new CompoundCommand();
                        for (EObject oldValueObject : oldValues) {
                            compoundCommand.appendIfCanExecute((Command)new RemoveCommand(this.domain, oldValueObject, (EStructuralFeature)eOtherEnd, this.owner));
                        }
                        this.removeCommand = compoundCommand;
                    }
                } else if (this.oldValue instanceof EObject) {
                    this.removeCommand = new RemoveCommand(this.domain, (EObject)this.oldValue, (EStructuralFeature)eOtherEnd, this.owner);
                }
            } else if (this.value instanceof Collection) {
                Collection newValues = (Collection)this.value;
                if (!newValues.isEmpty()) {
                    CompoundCommand compoundCommand = new CompoundCommand();
                    for (EObject newValueObject : newValues) {
                        compoundCommand.appendIfCanExecute((Command)new SetCommand(this.domain, newValueObject, (EStructuralFeature)eOtherEnd, UNSET_VALUE));
                        EObject otherEObject2 = (EObject)newValueObject.eGet((EStructuralFeature)eOtherEnd);
                        if (otherEObject2 == null) continue;
                        compoundCommand.appendIfCanExecute((Command)(eOtherEnd.isChangeable() ? new SetCommand(this.domain, newValueObject, (EStructuralFeature)eOtherEnd, UNSET_VALUE) : new RemoveCommand(this.domain, otherEObject2, (EStructuralFeature)eReference, newValueObject)));
                    }
                    this.removeCommand = compoundCommand;
                }
            } else if (this.value instanceof EObject && (otherEObject = (EObject)(eObject = (EObject)this.value).eGet((EStructuralFeature)eOtherEnd)) != null) {
                SetCommand setCommand = this.removeCommand = eOtherEnd.isChangeable() ? new SetCommand(this.domain, eObject, (EStructuralFeature)eOtherEnd, UNSET_VALUE) : new SetCommand(this.domain, otherEObject, (EStructuralFeature)eReference, UNSET_VALUE);
            }
            if (this.removeCommand != null) {
                if (this.removeCommand.canExecute()) {
                    this.removeCommand.execute();
                } else {
                    this.removeCommand = null;
                }
            }
        }
        if (this.ownerList != null) {
            if (this.removeCommand == null || this.ownerList.size() > this.index && this.ownerList.get(this.index) == this.oldValue) {
                this.ownerList.set(this.index, this.value);
            } else {
                this.ownerList.add(this.index, this.value);
            }
        } else if (this.value == UNSET_VALUE) {
            this.owner.eUnset(this.feature);
        } else {
            this.owner.eSet(this.feature, this.value);
        }
        this.updateEMap(this.owner, this.feature);
    }

    @Override
    public boolean doCanUndo() {
        return this.canUndo;
    }

    @Override
    public void doUndo() {
        if (this.removeCommand != null) {
            this.removeCommand.undo();
        }
        if (this.ownerList != null) {
            if (this.removeCommand == null || !this.ownerList.contains(this.oldValue)) {
                this.ownerList.set(this.index, this.oldValue);
            } else {
                this.ownerList.remove(this.value);
                this.ownerList.move(this.index, this.oldValue);
            }
        } else if (this.oldValue == UNSET_VALUE) {
            this.owner.eUnset(this.feature);
        } else {
            this.owner.eSet(this.feature, this.oldValue);
        }
        this.updateEMap(this.owner, this.feature);
    }

    @Override
    public void doRedo() {
        if (this.removeCommand != null) {
            this.removeCommand.redo();
        }
        if (this.ownerList != null) {
            if (this.removeCommand == null || this.ownerList.size() > this.index && this.ownerList.get(this.index) == this.oldValue) {
                this.ownerList.set(this.index, this.value);
            } else {
                this.ownerList.add(this.index, this.value);
            }
        } else if (this.value == UNSET_VALUE) {
            this.owner.eUnset(this.feature);
        } else {
            this.owner.eSet(this.feature, this.value);
        }
        this.updateEMap(this.owner, this.feature);
    }

    @Override
    public Collection<?> doGetResult() {
        return Collections.singleton(this.owner);
    }

    @Override
    public Collection<?> doGetAffectedObjects() {
        return Collections.singleton(this.owner);
    }

    @Override
    public String toString() {
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (owner: " + this.owner + ")");
        result.append(" (feature: " + this.feature + ")");
        if (this.ownerList != null) {
            result.append(" (ownerList: " + this.ownerList + ")");
            result.append(" (index: " + this.index + ")");
        }
        result.append(" (value: " + this.value + ")");
        result.append(" (oldValue: " + this.oldValue + ")");
        return result.toString();
    }

    protected static class PessimisticStrictCompoundCommand
    extends StrictCompoundCommand {
        public PessimisticStrictCompoundCommand(String label, String description) {
            super(label, description);
            this.isPessimistic = true;
        }
    }
}

