/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucparameterdef.GConfigParameter
 *  gautosar.gecucparameterdef.GConfigReference
 *  gautosar.gecucparameterdef.GContainerDef
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.ecucparameterdef.impl;

import autosar40.ecucparameterdef.EcucAbstractReferenceDef;
import autosar40.ecucparameterdef.EcucChoiceContainerDef;
import autosar40.ecucparameterdef.EcucContainerDef;
import autosar40.ecucparameterdef.EcucParamConfContainerDef;
import autosar40.ecucparameterdef.EcucParameterDef;
import autosar40.ecucparameterdef.EcucparameterdefPackage;
import autosar40.ecucparameterdef.impl.EcucContainerDefImpl;
import gautosar.gecucparameterdef.GConfigParameter;
import gautosar.gecucparameterdef.GConfigReference;
import gautosar.gecucparameterdef.GContainerDef;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EcucParamConfContainerDefImpl
extends EcucContainerDefImpl
implements EcucParamConfContainerDef {
    protected static final Boolean MULTIPLE_CONFIGURATION_CONTAINER_EDEFAULT = Boolean.FALSE;
    protected Boolean multipleConfigurationContainer = MULTIPLE_CONFIGURATION_CONTAINER_EDEFAULT;
    protected boolean multipleConfigurationContainerESet;
    protected EList<EcucParameterDef> parameters;
    protected EList<EcucAbstractReferenceDef> references;
    protected EList<EcucContainerDef> subContainers;

    protected EcucParamConfContainerDefImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return EcucparameterdefPackage.Literals.ECUC_PARAM_CONF_CONTAINER_DEF;
    }

    @Override
    public EcucChoiceContainerDef getEcucChoiceContainerDef() {
        if (this.eContainerFeatureID() != 23) {
            return null;
        }
        return (EcucChoiceContainerDef)this.eContainer();
    }

    public NotificationChain basicSetEcucChoiceContainerDef(EcucChoiceContainerDef newEcucChoiceContainerDef, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newEcucChoiceContainerDef, 23, msgs);
        return msgs;
    }

    @Override
    public void setEcucChoiceContainerDef(EcucChoiceContainerDef newEcucChoiceContainerDef) {
        if (newEcucChoiceContainerDef != this.eInternalContainer() || this.eContainerFeatureID() != 23 && newEcucChoiceContainerDef != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newEcucChoiceContainerDef)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newEcucChoiceContainerDef != null) {
                msgs = ((InternalEObject)newEcucChoiceContainerDef).eInverseAdd((InternalEObject)this, 23, EcucChoiceContainerDef.class, msgs);
            }
            if ((msgs = this.basicSetEcucChoiceContainerDef(newEcucChoiceContainerDef, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)newEcucChoiceContainerDef, (Object)newEcucChoiceContainerDef));
        }
    }

    @Override
    public Boolean getMultipleConfigurationContainer() {
        return this.multipleConfigurationContainer;
    }

    @Override
    public void setMultipleConfigurationContainer(Boolean newMultipleConfigurationContainer) {
        Boolean oldMultipleConfigurationContainer = this.multipleConfigurationContainer;
        this.multipleConfigurationContainer = newMultipleConfigurationContainer;
        boolean oldMultipleConfigurationContainerESet = this.multipleConfigurationContainerESet;
        this.multipleConfigurationContainerESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldMultipleConfigurationContainer, (Object)this.multipleConfigurationContainer, !oldMultipleConfigurationContainerESet));
        }
    }

    @Override
    public void unsetMultipleConfigurationContainer() {
        Boolean oldMultipleConfigurationContainer = this.multipleConfigurationContainer;
        boolean oldMultipleConfigurationContainerESet = this.multipleConfigurationContainerESet;
        this.multipleConfigurationContainer = MULTIPLE_CONFIGURATION_CONTAINER_EDEFAULT;
        this.multipleConfigurationContainerESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 24, (Object)oldMultipleConfigurationContainer, (Object)MULTIPLE_CONFIGURATION_CONTAINER_EDEFAULT, oldMultipleConfigurationContainerESet));
        }
    }

    @Override
    public boolean isSetMultipleConfigurationContainer() {
        return this.multipleConfigurationContainerESet;
    }

    @Override
    public EList<EcucParameterDef> getParameters() {
        if (this.parameters == null) {
            this.parameters = new EObjectContainmentWithInverseEList(EcucParameterDef.class, (InternalEObject)this, 25, 26);
        }
        return this.parameters;
    }

    @Override
    public EList<EcucAbstractReferenceDef> getReferences() {
        if (this.references == null) {
            this.references = new EObjectContainmentWithInverseEList(EcucAbstractReferenceDef.class, (InternalEObject)this, 26, 26);
        }
        return this.references;
    }

    @Override
    public EList<EcucContainerDef> getSubContainers() {
        if (this.subContainers == null) {
            this.subContainers = new EObjectContainmentEList(EcucContainerDef.class, (InternalEObject)this, 27);
        }
        return this.subContainers;
    }

    public EList<GConfigParameter> gGetParameters() {
        EList<EcucParameterDef> untypedList = this.getParameters();
        return untypedList;
    }

    public EList<GConfigReference> gGetReferences() {
        EList<EcucAbstractReferenceDef> untypedList = this.getReferences();
        return untypedList;
    }

    public EList<GContainerDef> gGetSubContainers() {
        EList<EcucContainerDef> untypedList = this.getSubContainers();
        return untypedList;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 23: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetEcucChoiceContainerDef((EcucChoiceContainerDef)otherEnd, msgs);
            }
            case 25: {
                return ((InternalEList)this.getParameters()).basicAdd((Object)otherEnd, msgs);
            }
            case 26: {
                return ((InternalEList)this.getReferences()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 23: {
                return this.basicSetEcucChoiceContainerDef(null, msgs);
            }
            case 25: {
                return ((InternalEList)this.getParameters()).basicRemove((Object)otherEnd, msgs);
            }
            case 26: {
                return ((InternalEList)this.getReferences()).basicRemove((Object)otherEnd, msgs);
            }
            case 27: {
                return ((InternalEList)this.getSubContainers()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 23: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 23, EcucChoiceContainerDef.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 23: {
                return this.getEcucChoiceContainerDef();
            }
            case 24: {
                return this.getMultipleConfigurationContainer();
            }
            case 25: {
                return this.getParameters();
            }
            case 26: {
                return this.getReferences();
            }
            case 27: {
                return this.getSubContainers();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 23: {
                this.setEcucChoiceContainerDef((EcucChoiceContainerDef)newValue);
                return;
            }
            case 24: {
                this.setMultipleConfigurationContainer((Boolean)newValue);
                return;
            }
            case 25: {
                this.getParameters().clear();
                this.getParameters().addAll((Collection)newValue);
                return;
            }
            case 26: {
                this.getReferences().clear();
                this.getReferences().addAll((Collection)newValue);
                return;
            }
            case 27: {
                this.getSubContainers().clear();
                this.getSubContainers().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 23: {
                this.setEcucChoiceContainerDef(null);
                return;
            }
            case 24: {
                this.unsetMultipleConfigurationContainer();
                return;
            }
            case 25: {
                this.getParameters().clear();
                return;
            }
            case 26: {
                this.getReferences().clear();
                return;
            }
            case 27: {
                this.getSubContainers().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 23: {
                return this.getEcucChoiceContainerDef() != null;
            }
            case 24: {
                return this.isSetMultipleConfigurationContainer();
            }
            case 25: {
                return this.parameters != null && !this.parameters.isEmpty();
            }
            case 26: {
                return this.references != null && !this.references.isEmpty();
            }
            case 27: {
                return this.subContainers != null && !this.subContainers.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (multipleConfigurationContainer: ");
        if (this.multipleConfigurationContainerESet) {
            result.append(this.multipleConfigurationContainer);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

