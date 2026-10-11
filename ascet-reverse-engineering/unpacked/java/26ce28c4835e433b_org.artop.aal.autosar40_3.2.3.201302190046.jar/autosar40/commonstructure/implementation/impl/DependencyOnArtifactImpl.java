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
 *  org.eclipse.emf.ecore.util.EDataTypeUniqueEList$Unsettable
 *  org.eclipse.emf.ecore.util.InternalEList$Unsettable
 */
package autosar40.commonstructure.implementation.impl;

import autosar40.commonstructure.implementation.DependencyOnArtifact;
import autosar40.commonstructure.implementation.DependencyUsageEnum;
import autosar40.commonstructure.implementation.ImplementationPackage;
import autosar40.genericstructure.generaltemplateclasses.engineeringobject.AutosarEngineeringObject;
import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.IdentifiableImpl;
import autosar40.genericstructure.varianthandling.VariationPoint;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EDataTypeUniqueEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class DependencyOnArtifactImpl
extends IdentifiableImpl
implements DependencyOnArtifact {
    protected AutosarEngineeringObject artifactDescriptor;
    protected EList<DependencyUsageEnum> usages;
    protected VariationPoint variationPoint;

    protected DependencyOnArtifactImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ImplementationPackage.Literals.DEPENDENCY_ON_ARTIFACT;
    }

    @Override
    public AutosarEngineeringObject getArtifactDescriptor() {
        return this.artifactDescriptor;
    }

    public NotificationChain basicSetArtifactDescriptor(AutosarEngineeringObject newArtifactDescriptor, NotificationChain msgs) {
        AutosarEngineeringObject oldArtifactDescriptor = this.artifactDescriptor;
        this.artifactDescriptor = newArtifactDescriptor;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldArtifactDescriptor, (Object)newArtifactDescriptor);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setArtifactDescriptor(AutosarEngineeringObject newArtifactDescriptor) {
        if (newArtifactDescriptor != this.artifactDescriptor) {
            NotificationChain msgs = null;
            if (this.artifactDescriptor != null) {
                msgs = ((InternalEObject)this.artifactDescriptor).eInverseRemove((InternalEObject)this, -19, null, msgs);
            }
            if (newArtifactDescriptor != null) {
                msgs = ((InternalEObject)newArtifactDescriptor).eInverseAdd((InternalEObject)this, -19, null, msgs);
            }
            if ((msgs = this.basicSetArtifactDescriptor(newArtifactDescriptor, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)newArtifactDescriptor, (Object)newArtifactDescriptor));
        }
    }

    @Override
    public EList<DependencyUsageEnum> getUsages() {
        if (this.usages == null) {
            this.usages = new EDataTypeUniqueEList.Unsettable(DependencyUsageEnum.class, (InternalEObject)this, 19);
        }
        return this.usages;
    }

    @Override
    public void unsetUsages() {
        if (this.usages != null) {
            ((InternalEList.Unsettable)this.usages).unset();
        }
    }

    @Override
    public boolean isSetUsages() {
        return this.usages != null && ((InternalEList.Unsettable)this.usages).isSet();
    }

    @Override
    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldVariationPoint, (Object)newVariationPoint);
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
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -21, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -21, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                return this.basicSetArtifactDescriptor(null, msgs);
            }
            case 20: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.getArtifactDescriptor();
            }
            case 19: {
                return this.getUsages();
            }
            case 20: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.setArtifactDescriptor((AutosarEngineeringObject)newValue);
                return;
            }
            case 19: {
                this.getUsages().clear();
                this.getUsages().addAll((Collection)newValue);
                return;
            }
            case 20: {
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
                this.setArtifactDescriptor(null);
                return;
            }
            case 19: {
                this.unsetUsages();
                return;
            }
            case 20: {
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
                return this.artifactDescriptor != null;
            }
            case 19: {
                return this.isSetUsages();
            }
            case 20: {
                return this.variationPoint != null;
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
        result.append(" (usages: ");
        result.append(this.usages);
        result.append(')');
        return result.toString();
    }
}

