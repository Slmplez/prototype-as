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
package autosar21.ecucparameterdef.impl;

import autosar21.ecucparameterdef.ChoiceContainerDef;
import autosar21.ecucparameterdef.ConfigParameter;
import autosar21.ecucparameterdef.ConfigReference;
import autosar21.ecucparameterdef.ContainerDef;
import autosar21.ecucparameterdef.EcucparameterdefPackage;
import autosar21.ecucparameterdef.ParamConfContainerDef;
import autosar21.ecucparameterdef.impl.ContainerDefImpl;
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
public class ParamConfContainerDefImpl
extends ContainerDefImpl
implements ParamConfContainerDef {
    protected static final Boolean MULTIPLE_CONFIGURATION_CONTAINER_EDEFAULT = Boolean.FALSE;
    protected Boolean multipleConfigurationContainer = MULTIPLE_CONFIGURATION_CONTAINER_EDEFAULT;
    protected boolean multipleConfigurationContainerESet;
    protected EList<ConfigParameter> parameters;
    protected EList<ConfigReference> references;
    protected EList<ContainerDef> subContainers;

    protected ParamConfContainerDefImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return EcucparameterdefPackage.Literals.PARAM_CONF_CONTAINER_DEF;
    }

    @Override
    public ChoiceContainerDef getChoiceContainerDef() {
        if (this.eContainerFeatureID() != 19) {
            return null;
        }
        return (ChoiceContainerDef)this.eContainer();
    }

    public NotificationChain basicSetChoiceContainerDef(ChoiceContainerDef newChoiceContainerDef, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newChoiceContainerDef, 19, msgs);
        return msgs;
    }

    @Override
    public void setChoiceContainerDef(ChoiceContainerDef newChoiceContainerDef) {
        if (newChoiceContainerDef != this.eInternalContainer() || this.eContainerFeatureID() != 19 && newChoiceContainerDef != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newChoiceContainerDef)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newChoiceContainerDef != null) {
                msgs = ((InternalEObject)newChoiceContainerDef).eInverseAdd((InternalEObject)this, 19, ChoiceContainerDef.class, msgs);
            }
            if ((msgs = this.basicSetChoiceContainerDef(newChoiceContainerDef, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)newChoiceContainerDef, (Object)newChoiceContainerDef));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldMultipleConfigurationContainer, (Object)this.multipleConfigurationContainer, !oldMultipleConfigurationContainerESet));
        }
    }

    @Override
    public void unsetMultipleConfigurationContainer() {
        Boolean oldMultipleConfigurationContainer = this.multipleConfigurationContainer;
        boolean oldMultipleConfigurationContainerESet = this.multipleConfigurationContainerESet;
        this.multipleConfigurationContainer = MULTIPLE_CONFIGURATION_CONTAINER_EDEFAULT;
        this.multipleConfigurationContainerESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 20, (Object)oldMultipleConfigurationContainer, (Object)MULTIPLE_CONFIGURATION_CONTAINER_EDEFAULT, oldMultipleConfigurationContainerESet));
        }
    }

    @Override
    public boolean isSetMultipleConfigurationContainer() {
        return this.multipleConfigurationContainerESet;
    }

    @Override
    public EList<ConfigParameter> getParameters() {
        if (this.parameters == null) {
            this.parameters = new EObjectContainmentWithInverseEList(ConfigParameter.class, (InternalEObject)this, 21, 21);
        }
        return this.parameters;
    }

    @Override
    public EList<ConfigReference> getReferences() {
        if (this.references == null) {
            this.references = new EObjectContainmentWithInverseEList(ConfigReference.class, (InternalEObject)this, 22, 21);
        }
        return this.references;
    }

    @Override
    public EList<ContainerDef> getSubContainers() {
        if (this.subContainers == null) {
            this.subContainers = new EObjectContainmentEList(ContainerDef.class, (InternalEObject)this, 23);
        }
        return this.subContainers;
    }

    public EList<GConfigParameter> gGetParameters() {
        EList<ConfigParameter> untypedList = this.getParameters();
        return untypedList;
    }

    public EList<GConfigReference> gGetReferences() {
        EList<ConfigReference> untypedList = this.getReferences();
        return untypedList;
    }

    public EList<GContainerDef> gGetSubContainers() {
        EList<ContainerDef> untypedList = this.getSubContainers();
        return untypedList;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 19: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetChoiceContainerDef((ChoiceContainerDef)otherEnd, msgs);
            }
            case 21: {
                return ((InternalEList)this.getParameters()).basicAdd((Object)otherEnd, msgs);
            }
            case 22: {
                return ((InternalEList)this.getReferences()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 19: {
                return this.basicSetChoiceContainerDef(null, msgs);
            }
            case 21: {
                return ((InternalEList)this.getParameters()).basicRemove((Object)otherEnd, msgs);
            }
            case 22: {
                return ((InternalEList)this.getReferences()).basicRemove((Object)otherEnd, msgs);
            }
            case 23: {
                return ((InternalEList)this.getSubContainers()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 19: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 19, ChoiceContainerDef.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 19: {
                return this.getChoiceContainerDef();
            }
            case 20: {
                return this.getMultipleConfigurationContainer();
            }
            case 21: {
                return this.getParameters();
            }
            case 22: {
                return this.getReferences();
            }
            case 23: {
                return this.getSubContainers();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 19: {
                this.setChoiceContainerDef((ChoiceContainerDef)newValue);
                return;
            }
            case 20: {
                this.setMultipleConfigurationContainer((Boolean)newValue);
                return;
            }
            case 21: {
                this.getParameters().clear();
                this.getParameters().addAll((Collection)newValue);
                return;
            }
            case 22: {
                this.getReferences().clear();
                this.getReferences().addAll((Collection)newValue);
                return;
            }
            case 23: {
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
            case 19: {
                this.setChoiceContainerDef(null);
                return;
            }
            case 20: {
                this.unsetMultipleConfigurationContainer();
                return;
            }
            case 21: {
                this.getParameters().clear();
                return;
            }
            case 22: {
                this.getReferences().clear();
                return;
            }
            case 23: {
                this.getSubContainers().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 19: {
                return this.getChoiceContainerDef() != null;
            }
            case 20: {
                return this.isSetMultipleConfigurationContainer();
            }
            case 21: {
                return this.parameters != null && !this.parameters.isEmpty();
            }
            case 22: {
                return this.references != null && !this.references.isEmpty();
            }
            case 23: {
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

