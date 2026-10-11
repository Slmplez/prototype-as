/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucdescription.GConfigReferenceValue
 *  gautosar.gecucdescription.GContainer
 *  gautosar.gecucdescription.GParameterValue
 *  gautosar.gecucparameterdef.GContainerDef
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar21.ecucdescription.impl;

import autosar21.ecucdescription.ConfigReferenceValue;
import autosar21.ecucdescription.Container;
import autosar21.ecucdescription.EcucdescriptionPackage;
import autosar21.ecucdescription.ParameterValue;
import autosar21.ecucparameterdef.ParamConfContainerDef;
import autosar21.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import gautosar.gecucdescription.GConfigReferenceValue;
import gautosar.gecucdescription.GContainer;
import gautosar.gecucdescription.GParameterValue;
import gautosar.gecucparameterdef.GContainerDef;
import java.util.Collection;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ContainerImpl
extends IdentifiableImpl
implements Container,
IReferringClass {
    protected ParamConfContainerDef definition;
    protected EList<ParameterValue> parameterValues;
    protected EList<ConfigReferenceValue> referenceValues;
    protected EList<Container> subContainers;

    protected ContainerImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return EcucdescriptionPackage.Literals.CONTAINER;
    }

    @Override
    public ParamConfContainerDef getDefinition() {
        if (this.definition != null && this.definition.eIsProxy()) {
            InternalEObject oldDefinition = (InternalEObject)this.definition;
            this.definition = (ParamConfContainerDef)this.eResolveProxy(oldDefinition);
            if (this.definition != oldDefinition && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 16, (Object)oldDefinition, (Object)this.definition));
            }
        }
        return this.definition;
    }

    public ParamConfContainerDef basicGetDefinition() {
        return this.definition;
    }

    @Override
    public void setDefinition(ParamConfContainerDef newDefinition) {
        ParamConfContainerDef oldDefinition = this.definition;
        this.definition = newDefinition;
        AutosarObjectUtil.setDest((EObject)this, (int)16, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 16, (Object)oldDefinition, (Object)this.definition));
        }
    }

    @Override
    public EList<ParameterValue> getParameterValues() {
        if (this.parameterValues == null) {
            this.parameterValues = new EObjectContainmentWithInverseEList(ParameterValue.class, (InternalEObject)this, 17, 4);
        }
        return this.parameterValues;
    }

    @Override
    public EList<ConfigReferenceValue> getReferenceValues() {
        if (this.referenceValues == null) {
            this.referenceValues = new EObjectContainmentWithInverseEList(ConfigReferenceValue.class, (InternalEObject)this, 18, 4);
        }
        return this.referenceValues;
    }

    @Override
    public EList<Container> getSubContainers() {
        if (this.subContainers == null) {
            this.subContainers = new EObjectContainmentEList(Container.class, (InternalEObject)this, 19);
        }
        return this.subContainers;
    }

    public GContainerDef gGetDefinition() {
        return this.getDefinition();
    }

    public void gSetDefinition(GContainerDef value) {
        this.setDefinition((ParamConfContainerDef)value);
    }

    public EList<GParameterValue> gGetParameterValues() {
        EList<ParameterValue> untypedList = this.getParameterValues();
        return untypedList;
    }

    public EList<GConfigReferenceValue> gGetReferenceValues() {
        EList<ConfigReferenceValue> untypedList = this.getReferenceValues();
        return untypedList;
    }

    public EList<GContainer> gGetSubContainers() {
        EList<Container> untypedList = this.getSubContainers();
        return untypedList;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 17: {
                return ((InternalEList)this.getParameterValues()).basicAdd((Object)otherEnd, msgs);
            }
            case 18: {
                return ((InternalEList)this.getReferenceValues()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 17: {
                return ((InternalEList)this.getParameterValues()).basicRemove((Object)otherEnd, msgs);
            }
            case 18: {
                return ((InternalEList)this.getReferenceValues()).basicRemove((Object)otherEnd, msgs);
            }
            case 19: {
                return ((InternalEList)this.getSubContainers()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 16: {
                if (resolve) {
                    return this.getDefinition();
                }
                return this.basicGetDefinition();
            }
            case 17: {
                return this.getParameterValues();
            }
            case 18: {
                return this.getReferenceValues();
            }
            case 19: {
                return this.getSubContainers();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 16: {
                this.setDefinition((ParamConfContainerDef)newValue);
                return;
            }
            case 17: {
                this.getParameterValues().clear();
                this.getParameterValues().addAll((Collection)newValue);
                return;
            }
            case 18: {
                this.getReferenceValues().clear();
                this.getReferenceValues().addAll((Collection)newValue);
                return;
            }
            case 19: {
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
            case 16: {
                this.setDefinition(null);
                return;
            }
            case 17: {
                this.getParameterValues().clear();
                return;
            }
            case 18: {
                this.getReferenceValues().clear();
                return;
            }
            case 19: {
                this.getSubContainers().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 16: {
                return this.definition != null;
            }
            case 17: {
                return this.parameterValues != null && !this.parameterValues.isEmpty();
            }
            case 18: {
                return this.referenceValues != null && !this.referenceValues.isEmpty();
            }
            case 19: {
                return this.subContainers != null && !this.subContainers.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }

    public void eSetReferringDest(int featureID, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)-1, (String)dest);
    }

    public void eSetReferringDest(int featureID, int index, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)index, (String)dest);
    }

    public String eGetReferringDest(int featureID) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)-1);
    }

    public String eGetReferringDest(int featureID, int index) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)index);
    }
}

