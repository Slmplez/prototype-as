/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.EObjectResolvingReferringEList
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.bswmodule.bswimplementation.impl;

import autosar40.bswmodule.bswimplementation.BswDebugInfo;
import autosar40.bswmodule.bswimplementation.BswImplementation;
import autosar40.bswmodule.bswimplementation.BswimplementationPackage;
import autosar40.commonstructure.implementationdatatypes.ImplementationDataTypeElement;
import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.IdentifiableImpl;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.swcomponent.datatype.dataprototypes.ParameterDataPrototype;
import autosar40.swcomponent.datatype.dataprototypes.VariableDataPrototype;
import java.util.Collection;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.EObjectResolvingReferringEList;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class BswDebugInfoImpl
extends IdentifiableImpl
implements BswDebugInfo,
IReferringClass {
    protected EList<ImplementationDataTypeElement> localDebugDatas;
    protected EList<ParameterDataPrototype> parameterAccessedForDebugs;
    protected EList<VariableDataPrototype> variableAccessedForDebugs;
    protected VariationPoint variationPoint;

    protected BswDebugInfoImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return BswimplementationPackage.Literals.BSW_DEBUG_INFO;
    }

    @Override
    public BswImplementation getBswImplementation() {
        if (this.eContainerFeatureID() != 18) {
            return null;
        }
        return (BswImplementation)this.eContainer();
    }

    public NotificationChain basicSetBswImplementation(BswImplementation newBswImplementation, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newBswImplementation, 18, msgs);
        return msgs;
    }

    @Override
    public void setBswImplementation(BswImplementation newBswImplementation) {
        if (newBswImplementation != this.eInternalContainer() || this.eContainerFeatureID() != 18 && newBswImplementation != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newBswImplementation)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newBswImplementation != null) {
                msgs = ((InternalEObject)newBswImplementation).eInverseAdd((InternalEObject)this, 39, BswImplementation.class, msgs);
            }
            if ((msgs = this.basicSetBswImplementation(newBswImplementation, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)newBswImplementation, (Object)newBswImplementation));
        }
    }

    @Override
    public EList<ImplementationDataTypeElement> getLocalDebugDatas() {
        if (this.localDebugDatas == null) {
            this.localDebugDatas = new EObjectContainmentEList(ImplementationDataTypeElement.class, (InternalEObject)this, 19);
        }
        return this.localDebugDatas;
    }

    @Override
    public EList<ParameterDataPrototype> getParameterAccessedForDebugs() {
        if (this.parameterAccessedForDebugs == null) {
            this.parameterAccessedForDebugs = new EObjectResolvingReferringEList(ParameterDataPrototype.class, (InternalEObject)this, 20);
        }
        return this.parameterAccessedForDebugs;
    }

    @Override
    public EList<VariableDataPrototype> getVariableAccessedForDebugs() {
        if (this.variableAccessedForDebugs == null) {
            this.variableAccessedForDebugs = new EObjectResolvingReferringEList(VariableDataPrototype.class, (InternalEObject)this, 21);
        }
        return this.variableAccessedForDebugs;
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

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetBswImplementation((BswImplementation)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                return this.basicSetBswImplementation(null, msgs);
            }
            case 19: {
                return ((InternalEList)this.getLocalDebugDatas()).basicRemove((Object)otherEnd, msgs);
            }
            case 22: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 18: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 39, BswImplementation.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.getBswImplementation();
            }
            case 19: {
                return this.getLocalDebugDatas();
            }
            case 20: {
                return this.getParameterAccessedForDebugs();
            }
            case 21: {
                return this.getVariableAccessedForDebugs();
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
                this.setBswImplementation((BswImplementation)newValue);
                return;
            }
            case 19: {
                this.getLocalDebugDatas().clear();
                this.getLocalDebugDatas().addAll((Collection)newValue);
                return;
            }
            case 20: {
                this.getParameterAccessedForDebugs().clear();
                this.getParameterAccessedForDebugs().addAll((Collection)newValue);
                return;
            }
            case 21: {
                this.getVariableAccessedForDebugs().clear();
                this.getVariableAccessedForDebugs().addAll((Collection)newValue);
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
                this.setBswImplementation(null);
                return;
            }
            case 19: {
                this.getLocalDebugDatas().clear();
                return;
            }
            case 20: {
                this.getParameterAccessedForDebugs().clear();
                return;
            }
            case 21: {
                this.getVariableAccessedForDebugs().clear();
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
                return this.getBswImplementation() != null;
            }
            case 19: {
                return this.localDebugDatas != null && !this.localDebugDatas.isEmpty();
            }
            case 20: {
                return this.parameterAccessedForDebugs != null && !this.parameterAccessedForDebugs.isEmpty();
            }
            case 21: {
                return this.variableAccessedForDebugs != null && !this.variableAccessedForDebugs.isEmpty();
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

