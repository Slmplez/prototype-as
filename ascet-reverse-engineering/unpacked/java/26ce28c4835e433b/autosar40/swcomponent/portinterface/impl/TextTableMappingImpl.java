/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.swcomponent.portinterface.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.swcomponent.portinterface.MappingDirectionEnum;
import autosar40.swcomponent.portinterface.PortinterfacePackage;
import autosar40.swcomponent.portinterface.TextTableMapping;
import autosar40.swcomponent.portinterface.TextTableValuePair;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class TextTableMappingImpl
extends ARObjectImpl
implements TextTableMapping {
    protected static final Boolean IDENTICAL_MAPPING_EDEFAULT = Boolean.FALSE;
    protected Boolean identicalMapping = IDENTICAL_MAPPING_EDEFAULT;
    protected boolean identicalMappingESet;
    protected static final MappingDirectionEnum MAPPING_DIRECTION_EDEFAULT = MappingDirectionEnum.BIDIRECTIONAL;
    protected MappingDirectionEnum mappingDirection = MAPPING_DIRECTION_EDEFAULT;
    protected boolean mappingDirectionESet;
    protected EList<TextTableValuePair> valuePairs;

    protected TextTableMappingImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return PortinterfacePackage.Literals.TEXT_TABLE_MAPPING;
    }

    @Override
    public Boolean getIdenticalMapping() {
        return this.identicalMapping;
    }

    @Override
    public void setIdenticalMapping(Boolean newIdenticalMapping) {
        Boolean oldIdenticalMapping = this.identicalMapping;
        this.identicalMapping = newIdenticalMapping;
        boolean oldIdenticalMappingESet = this.identicalMappingESet;
        this.identicalMappingESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldIdenticalMapping, (Object)this.identicalMapping, !oldIdenticalMappingESet));
        }
    }

    @Override
    public void unsetIdenticalMapping() {
        Boolean oldIdenticalMapping = this.identicalMapping;
        boolean oldIdenticalMappingESet = this.identicalMappingESet;
        this.identicalMapping = IDENTICAL_MAPPING_EDEFAULT;
        this.identicalMappingESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 4, (Object)oldIdenticalMapping, (Object)IDENTICAL_MAPPING_EDEFAULT, oldIdenticalMappingESet));
        }
    }

    @Override
    public boolean isSetIdenticalMapping() {
        return this.identicalMappingESet;
    }

    @Override
    public MappingDirectionEnum getMappingDirection() {
        return this.mappingDirection;
    }

    @Override
    public void setMappingDirection(MappingDirectionEnum newMappingDirection) {
        MappingDirectionEnum oldMappingDirection = this.mappingDirection;
        this.mappingDirection = newMappingDirection == null ? MAPPING_DIRECTION_EDEFAULT : newMappingDirection;
        boolean oldMappingDirectionESet = this.mappingDirectionESet;
        this.mappingDirectionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldMappingDirection, (Object)this.mappingDirection, !oldMappingDirectionESet));
        }
    }

    @Override
    public void unsetMappingDirection() {
        MappingDirectionEnum oldMappingDirection = this.mappingDirection;
        boolean oldMappingDirectionESet = this.mappingDirectionESet;
        this.mappingDirection = MAPPING_DIRECTION_EDEFAULT;
        this.mappingDirectionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldMappingDirection, (Object)MAPPING_DIRECTION_EDEFAULT, oldMappingDirectionESet));
        }
    }

    @Override
    public boolean isSetMappingDirection() {
        return this.mappingDirectionESet;
    }

    @Override
    public EList<TextTableValuePair> getValuePairs() {
        if (this.valuePairs == null) {
            this.valuePairs = new EObjectContainmentWithInverseEList(TextTableValuePair.class, (InternalEObject)this, 6, 4);
        }
        return this.valuePairs;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 6: {
                return ((InternalEList)this.getValuePairs()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 6: {
                return ((InternalEList)this.getValuePairs()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getIdenticalMapping();
            }
            case 5: {
                return this.getMappingDirection();
            }
            case 6: {
                return this.getValuePairs();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setIdenticalMapping((Boolean)newValue);
                return;
            }
            case 5: {
                this.setMappingDirection((MappingDirectionEnum)((Object)newValue));
                return;
            }
            case 6: {
                this.getValuePairs().clear();
                this.getValuePairs().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.unsetIdenticalMapping();
                return;
            }
            case 5: {
                this.unsetMappingDirection();
                return;
            }
            case 6: {
                this.getValuePairs().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.isSetIdenticalMapping();
            }
            case 5: {
                return this.isSetMappingDirection();
            }
            case 6: {
                return this.valuePairs != null && !this.valuePairs.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (identicalMapping: ");
        if (this.identicalMappingESet) {
            result.append(this.identicalMapping);
        } else {
            result.append("<unset>");
        }
        result.append(", mappingDirection: ");
        if (this.mappingDirectionESet) {
            result.append((Object)this.mappingDirection);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

