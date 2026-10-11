/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomponents.GPortPrototype
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.swcomponent.components.impl;

import autosar40.genericstructure.abstractstructure.AtpClassifier;
import autosar40.genericstructure.abstractstructure.AtpFeature;
import autosar40.genericstructure.abstractstructure.AtpPrototype;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.standardization.abstractblueprintstructure.impl.AtpBlueprintableImpl;
import autosar40.swcomponent.applicationattributes.ClientServerAnnotation;
import autosar40.swcomponent.applicationattributes.DelegatedPortAnnotation;
import autosar40.swcomponent.applicationattributes.IoHwAbstractionServerAnnotation;
import autosar40.swcomponent.applicationattributes.ModePortAnnotation;
import autosar40.swcomponent.applicationattributes.NvDataPortAnnotation;
import autosar40.swcomponent.applicationattributes.ParameterPortAnnotation;
import autosar40.swcomponent.applicationattributes.SenderReceiverAnnotation;
import autosar40.swcomponent.applicationattributes.TriggerPortAnnotation;
import autosar40.swcomponent.components.ComponentsPackage;
import autosar40.swcomponent.components.PortPrototype;
import autosar40.swcomponent.components.SwComponentType;
import gautosar.gswcomponents.gcomponents.GPortPrototype;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class PortPrototypeImpl
extends AtpBlueprintableImpl
implements PortPrototype {
    protected AtpClassifier atpClassifier;
    protected EList<ClientServerAnnotation> clientServerAnnotations;
    protected DelegatedPortAnnotation delegatedPortAnnotation;
    protected EList<IoHwAbstractionServerAnnotation> ioHwAbstractionServerAnnotations;
    protected EList<ModePortAnnotation> modePortAnnotations;
    protected EList<NvDataPortAnnotation> nvDataPortAnnotations;
    protected EList<ParameterPortAnnotation> parameterPortAnnotations;
    protected EList<SenderReceiverAnnotation> senderReceiverAnnotations;
    protected EList<TriggerPortAnnotation> triggerPortAnnotations;
    protected VariationPoint variationPoint;

    protected PortPrototypeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComponentsPackage.Literals.PORT_PROTOTYPE;
    }

    @Override
    public AtpClassifier getAtpClassifier() {
        if (this.atpClassifier != null && this.atpClassifier.eIsProxy()) {
            InternalEObject oldAtpClassifier = (InternalEObject)this.atpClassifier;
            this.atpClassifier = (AtpClassifier)this.eResolveProxy(oldAtpClassifier);
            if (this.atpClassifier != oldAtpClassifier && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 18, (Object)oldAtpClassifier, (Object)this.atpClassifier));
            }
        }
        return this.atpClassifier;
    }

    public AtpClassifier basicGetAtpClassifier() {
        return this.atpClassifier;
    }

    @Override
    public void setAtpClassifier(AtpClassifier newAtpClassifier) {
        AtpClassifier oldAtpClassifier = this.atpClassifier;
        this.atpClassifier = newAtpClassifier;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldAtpClassifier, (Object)this.atpClassifier));
        }
    }

    @Override
    public SwComponentType getSwComponentType() {
        if (this.eContainerFeatureID() != 19) {
            return null;
        }
        return (SwComponentType)this.eContainer();
    }

    public NotificationChain basicSetSwComponentType(SwComponentType newSwComponentType, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newSwComponentType, 19, msgs);
        return msgs;
    }

    @Override
    public void setSwComponentType(SwComponentType newSwComponentType) {
        if (newSwComponentType != this.eInternalContainer() || this.eContainerFeatureID() != 19 && newSwComponentType != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newSwComponentType)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newSwComponentType != null) {
                msgs = ((InternalEObject)newSwComponentType).eInverseAdd((InternalEObject)this, 24, SwComponentType.class, msgs);
            }
            if ((msgs = this.basicSetSwComponentType(newSwComponentType, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)newSwComponentType, (Object)newSwComponentType));
        }
    }

    @Override
    public EList<ClientServerAnnotation> getClientServerAnnotations() {
        if (this.clientServerAnnotations == null) {
            this.clientServerAnnotations = new EObjectContainmentWithInverseEList(ClientServerAnnotation.class, (InternalEObject)this, 20, 9);
        }
        return this.clientServerAnnotations;
    }

    @Override
    public DelegatedPortAnnotation getDelegatedPortAnnotation() {
        return this.delegatedPortAnnotation;
    }

    public NotificationChain basicSetDelegatedPortAnnotation(DelegatedPortAnnotation newDelegatedPortAnnotation, NotificationChain msgs) {
        DelegatedPortAnnotation oldDelegatedPortAnnotation = this.delegatedPortAnnotation;
        this.delegatedPortAnnotation = newDelegatedPortAnnotation;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldDelegatedPortAnnotation, (Object)newDelegatedPortAnnotation);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setDelegatedPortAnnotation(DelegatedPortAnnotation newDelegatedPortAnnotation) {
        if (newDelegatedPortAnnotation != this.delegatedPortAnnotation) {
            NotificationChain msgs = null;
            if (this.delegatedPortAnnotation != null) {
                msgs = ((InternalEObject)this.delegatedPortAnnotation).eInverseRemove((InternalEObject)this, 9, DelegatedPortAnnotation.class, msgs);
            }
            if (newDelegatedPortAnnotation != null) {
                msgs = ((InternalEObject)newDelegatedPortAnnotation).eInverseAdd((InternalEObject)this, 9, DelegatedPortAnnotation.class, msgs);
            }
            if ((msgs = this.basicSetDelegatedPortAnnotation(newDelegatedPortAnnotation, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)newDelegatedPortAnnotation, (Object)newDelegatedPortAnnotation));
        }
    }

    @Override
    public EList<IoHwAbstractionServerAnnotation> getIoHwAbstractionServerAnnotations() {
        if (this.ioHwAbstractionServerAnnotations == null) {
            this.ioHwAbstractionServerAnnotations = new EObjectContainmentWithInverseEList(IoHwAbstractionServerAnnotation.class, (InternalEObject)this, 22, 9);
        }
        return this.ioHwAbstractionServerAnnotations;
    }

    @Override
    public EList<ModePortAnnotation> getModePortAnnotations() {
        if (this.modePortAnnotations == null) {
            this.modePortAnnotations = new EObjectContainmentWithInverseEList(ModePortAnnotation.class, (InternalEObject)this, 23, 9);
        }
        return this.modePortAnnotations;
    }

    @Override
    public EList<NvDataPortAnnotation> getNvDataPortAnnotations() {
        if (this.nvDataPortAnnotations == null) {
            this.nvDataPortAnnotations = new EObjectContainmentWithInverseEList(NvDataPortAnnotation.class, (InternalEObject)this, 24, 9);
        }
        return this.nvDataPortAnnotations;
    }

    @Override
    public EList<ParameterPortAnnotation> getParameterPortAnnotations() {
        if (this.parameterPortAnnotations == null) {
            this.parameterPortAnnotations = new EObjectContainmentWithInverseEList(ParameterPortAnnotation.class, (InternalEObject)this, 25, 9);
        }
        return this.parameterPortAnnotations;
    }

    @Override
    public EList<SenderReceiverAnnotation> getSenderReceiverAnnotations() {
        if (this.senderReceiverAnnotations == null) {
            this.senderReceiverAnnotations = new EObjectContainmentWithInverseEList(SenderReceiverAnnotation.class, (InternalEObject)this, 26, 9);
        }
        return this.senderReceiverAnnotations;
    }

    @Override
    public EList<TriggerPortAnnotation> getTriggerPortAnnotations() {
        if (this.triggerPortAnnotations == null) {
            this.triggerPortAnnotations = new EObjectContainmentWithInverseEList(TriggerPortAnnotation.class, (InternalEObject)this, 27, 9);
        }
        return this.triggerPortAnnotations;
    }

    @Override
    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 28, (Object)oldVariationPoint, (Object)newVariationPoint);
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
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -29, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -29, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 28, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 19: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetSwComponentType((SwComponentType)otherEnd, msgs);
            }
            case 20: {
                return ((InternalEList)this.getClientServerAnnotations()).basicAdd((Object)otherEnd, msgs);
            }
            case 21: {
                if (this.delegatedPortAnnotation != null) {
                    msgs = ((InternalEObject)this.delegatedPortAnnotation).eInverseRemove((InternalEObject)this, -22, null, msgs);
                }
                return this.basicSetDelegatedPortAnnotation((DelegatedPortAnnotation)otherEnd, msgs);
            }
            case 22: {
                return ((InternalEList)this.getIoHwAbstractionServerAnnotations()).basicAdd((Object)otherEnd, msgs);
            }
            case 23: {
                return ((InternalEList)this.getModePortAnnotations()).basicAdd((Object)otherEnd, msgs);
            }
            case 24: {
                return ((InternalEList)this.getNvDataPortAnnotations()).basicAdd((Object)otherEnd, msgs);
            }
            case 25: {
                return ((InternalEList)this.getParameterPortAnnotations()).basicAdd((Object)otherEnd, msgs);
            }
            case 26: {
                return ((InternalEList)this.getSenderReceiverAnnotations()).basicAdd((Object)otherEnd, msgs);
            }
            case 27: {
                return ((InternalEList)this.getTriggerPortAnnotations()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 19: {
                return this.basicSetSwComponentType(null, msgs);
            }
            case 20: {
                return ((InternalEList)this.getClientServerAnnotations()).basicRemove((Object)otherEnd, msgs);
            }
            case 21: {
                return this.basicSetDelegatedPortAnnotation(null, msgs);
            }
            case 22: {
                return ((InternalEList)this.getIoHwAbstractionServerAnnotations()).basicRemove((Object)otherEnd, msgs);
            }
            case 23: {
                return ((InternalEList)this.getModePortAnnotations()).basicRemove((Object)otherEnd, msgs);
            }
            case 24: {
                return ((InternalEList)this.getNvDataPortAnnotations()).basicRemove((Object)otherEnd, msgs);
            }
            case 25: {
                return ((InternalEList)this.getParameterPortAnnotations()).basicRemove((Object)otherEnd, msgs);
            }
            case 26: {
                return ((InternalEList)this.getSenderReceiverAnnotations()).basicRemove((Object)otherEnd, msgs);
            }
            case 27: {
                return ((InternalEList)this.getTriggerPortAnnotations()).basicRemove((Object)otherEnd, msgs);
            }
            case 28: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 19: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 24, SwComponentType.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                if (resolve) {
                    return this.getAtpClassifier();
                }
                return this.basicGetAtpClassifier();
            }
            case 19: {
                return this.getSwComponentType();
            }
            case 20: {
                return this.getClientServerAnnotations();
            }
            case 21: {
                return this.getDelegatedPortAnnotation();
            }
            case 22: {
                return this.getIoHwAbstractionServerAnnotations();
            }
            case 23: {
                return this.getModePortAnnotations();
            }
            case 24: {
                return this.getNvDataPortAnnotations();
            }
            case 25: {
                return this.getParameterPortAnnotations();
            }
            case 26: {
                return this.getSenderReceiverAnnotations();
            }
            case 27: {
                return this.getTriggerPortAnnotations();
            }
            case 28: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.setAtpClassifier((AtpClassifier)newValue);
                return;
            }
            case 19: {
                this.setSwComponentType((SwComponentType)newValue);
                return;
            }
            case 20: {
                this.getClientServerAnnotations().clear();
                this.getClientServerAnnotations().addAll((Collection)newValue);
                return;
            }
            case 21: {
                this.setDelegatedPortAnnotation((DelegatedPortAnnotation)newValue);
                return;
            }
            case 22: {
                this.getIoHwAbstractionServerAnnotations().clear();
                this.getIoHwAbstractionServerAnnotations().addAll((Collection)newValue);
                return;
            }
            case 23: {
                this.getModePortAnnotations().clear();
                this.getModePortAnnotations().addAll((Collection)newValue);
                return;
            }
            case 24: {
                this.getNvDataPortAnnotations().clear();
                this.getNvDataPortAnnotations().addAll((Collection)newValue);
                return;
            }
            case 25: {
                this.getParameterPortAnnotations().clear();
                this.getParameterPortAnnotations().addAll((Collection)newValue);
                return;
            }
            case 26: {
                this.getSenderReceiverAnnotations().clear();
                this.getSenderReceiverAnnotations().addAll((Collection)newValue);
                return;
            }
            case 27: {
                this.getTriggerPortAnnotations().clear();
                this.getTriggerPortAnnotations().addAll((Collection)newValue);
                return;
            }
            case 28: {
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
                this.setAtpClassifier(null);
                return;
            }
            case 19: {
                this.setSwComponentType(null);
                return;
            }
            case 20: {
                this.getClientServerAnnotations().clear();
                return;
            }
            case 21: {
                this.setDelegatedPortAnnotation(null);
                return;
            }
            case 22: {
                this.getIoHwAbstractionServerAnnotations().clear();
                return;
            }
            case 23: {
                this.getModePortAnnotations().clear();
                return;
            }
            case 24: {
                this.getNvDataPortAnnotations().clear();
                return;
            }
            case 25: {
                this.getParameterPortAnnotations().clear();
                return;
            }
            case 26: {
                this.getSenderReceiverAnnotations().clear();
                return;
            }
            case 27: {
                this.getTriggerPortAnnotations().clear();
                return;
            }
            case 28: {
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
                return this.atpClassifier != null;
            }
            case 19: {
                return this.getSwComponentType() != null;
            }
            case 20: {
                return this.clientServerAnnotations != null && !this.clientServerAnnotations.isEmpty();
            }
            case 21: {
                return this.delegatedPortAnnotation != null;
            }
            case 22: {
                return this.ioHwAbstractionServerAnnotations != null && !this.ioHwAbstractionServerAnnotations.isEmpty();
            }
            case 23: {
                return this.modePortAnnotations != null && !this.modePortAnnotations.isEmpty();
            }
            case 24: {
                return this.nvDataPortAnnotations != null && !this.nvDataPortAnnotations.isEmpty();
            }
            case 25: {
                return this.parameterPortAnnotations != null && !this.parameterPortAnnotations.isEmpty();
            }
            case 26: {
                return this.senderReceiverAnnotations != null && !this.senderReceiverAnnotations.isEmpty();
            }
            case 27: {
                return this.triggerPortAnnotations != null && !this.triggerPortAnnotations.isEmpty();
            }
            case 28: {
                return this.variationPoint != null;
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == AtpFeature.class) {
            switch (derivedFeatureID) {
                case 18: {
                    return 18;
                }
            }
            return -1;
        }
        if (baseClass == AtpPrototype.class) {
            return -1;
        }
        if (baseClass == GPortPrototype.class) {
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    @Override
    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == AtpFeature.class) {
            switch (baseFeatureID) {
                case 18: {
                    return 18;
                }
            }
            return -1;
        }
        if (baseClass == AtpPrototype.class) {
            return -1;
        }
        if (baseClass == GPortPrototype.class) {
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
    }
}

