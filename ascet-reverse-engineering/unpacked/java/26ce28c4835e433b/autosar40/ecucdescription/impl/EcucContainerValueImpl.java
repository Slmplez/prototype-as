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
package autosar40.ecucdescription.impl;

import autosar40.ecucdescription.EcucAbstractReferenceValue;
import autosar40.ecucdescription.EcucContainerValue;
import autosar40.ecucdescription.EcucParameterValue;
import autosar40.ecucdescription.EcucdescriptionPackage;
import autosar40.ecucparameterdef.EcucContainerDef;
import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.IdentifiableImpl;
import autosar40.genericstructure.varianthandling.VariationPoint;
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
public class EcucContainerValueImpl
extends IdentifiableImpl
implements EcucContainerValue,
IReferringClass {
    protected EcucContainerDef definition;
    protected EList<EcucParameterValue> parameterValues;
    protected EList<EcucAbstractReferenceValue> referenceValues;
    protected EList<EcucContainerValue> subContainers;
    protected VariationPoint variationPoint;

    protected EcucContainerValueImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return EcucdescriptionPackage.Literals.ECUC_CONTAINER_VALUE;
    }

    @Override
    public EcucContainerDef getDefinition() {
        if (this.definition != null && this.definition.eIsProxy()) {
            InternalEObject oldDefinition = (InternalEObject)this.definition;
            this.definition = (EcucContainerDef)this.eResolveProxy(oldDefinition);
            if (this.definition != oldDefinition && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 18, (Object)oldDefinition, (Object)this.definition));
            }
        }
        return this.definition;
    }

    public EcucContainerDef basicGetDefinition() {
        return this.definition;
    }

    @Override
    public void setDefinition(EcucContainerDef newDefinition) {
        EcucContainerDef oldDefinition = this.definition;
        this.definition = newDefinition;
        AutosarObjectUtil.setDest((EObject)this, (int)18, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldDefinition, (Object)this.definition));
        }
    }

    @Override
    public EList<EcucParameterValue> getParameterValues() {
        if (this.parameterValues == null) {
            this.parameterValues = new EObjectContainmentWithInverseEList(EcucParameterValue.class, (InternalEObject)this, 19, 5);
        }
        return this.parameterValues;
    }

    @Override
    public EList<EcucAbstractReferenceValue> getReferenceValues() {
        if (this.referenceValues == null) {
            this.referenceValues = new EObjectContainmentWithInverseEList(EcucAbstractReferenceValue.class, (InternalEObject)this, 20, 5);
        }
        return this.referenceValues;
    }

    @Override
    public EList<EcucContainerValue> getSubContainers() {
        if (this.subContainers == null) {
            this.subContainers = new EObjectContainmentEList(EcucContainerValue.class, (InternalEObject)this, 21);
        }
        return this.subContainers;
    }

    @Override
    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldVariationPoint, (Object)newVariationPoint);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setVariationPoint(VariationPoint newVariationPoint) {
        if (newVariationPoint != this.variationPoint) {
            NotificationChain msgs = null;
            if (this.variationPoint != null) {
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -23, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -23, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    public GContainerDef gGetDefinition() {
        return this.getDefinition();
    }

    public void gSetDefinition(GContainerDef value) {
        this.setDefinition((EcucContainerDef)value);
    }

    public EList<GParameterValue> gGetParameterValues() {
        EList<EcucParameterValue> untypedList = this.getParameterValues();
        return untypedList;
    }

    public EList<GConfigReferenceValue> gGetReferenceValues() {
        EList<EcucAbstractReferenceValue> untypedList = this.getReferenceValues();
        return untypedList;
    }

    public EList<GContainer> gGetSubContainers() {
        EList<EcucContainerValue> untypedList = this.getSubContainers();
        return untypedList;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 19: {
                return ((InternalEList)this.getParameterValues()).basicAdd((Object)otherEnd, msgs);
            }
            case 20: {
                return ((InternalEList)this.getReferenceValues()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 19: {
                return ((InternalEList)this.getParameterValues()).basicRemove((Object)otherEnd, msgs);
            }
            case 20: {
                return ((InternalEList)this.getReferenceValues()).basicRemove((Object)otherEnd, msgs);
            }
            case 21: {
                return ((InternalEList)this.getSubContainers()).basicRemove((Object)otherEnd, msgs);
            }
            case 22: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                if (resolve) {
                    return this.getDefinition();
                }
                return this.basicGetDefinition();
            }
            case 19: {
                return this.getParameterValues();
            }
            case 20: {
                return this.getReferenceValues();
            }
            case 21: {
                return this.getSubContainers();
            }
            case 22: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.setDefinition((EcucContainerDef)newValue);
                return;
            }
            case 19: {
                this.getParameterValues().clear();
                this.getParameterValues().addAll((Collection)newValue);
                return;
            }
            case 20: {
                this.getReferenceValues().clear();
                this.getReferenceValues().addAll((Collection)newValue);
                return;
            }
            case 21: {
                this.getSubContainers().clear();
                this.getSubContainers().addAll((Collection)newValue);
                return;
            }
            case 22: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.setDefinition(null);
                return;
            }
            case 19: {
                this.getParameterValues().clear();
                return;
            }
            case 20: {
                this.getReferenceValues().clear();
                return;
            }
            case 21: {
                this.getSubContainers().clear();
                return;
            }
            case 22: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.definition != null;
            }
            case 19: {
                return this.parameterValues != null && !this.parameterValues.isEmpty();
            }
            case 20: {
                return this.referenceValues != null && !this.referenceValues.isEmpty();
            }
            case 21: {
                return this.subContainers != null && !this.subContainers.isEmpty();
            }
            case 22: {
                return this.variationPoint != null;
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

