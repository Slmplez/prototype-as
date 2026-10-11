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
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.ecuresource.impl;

import autosar40.ecuresource.EcuresourcePackage;
import autosar40.ecuresource.HwElement;
import autosar40.ecuresource.HwElementConnector;
import autosar40.ecuresource.HwPinConnector;
import autosar40.ecuresource.HwPinGroupConnector;
import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.DescribableImpl;
import autosar40.genericstructure.varianthandling.VariationPoint;
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
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class HwElementConnectorImpl
extends DescribableImpl
implements HwElementConnector,
IReferringClass {
    protected EList<HwElement> hwElements;
    protected EList<HwPinGroupConnector> hwPinGroupConnections;
    protected EList<HwPinConnector> hwPinConnections;
    protected VariationPoint variationPoint;

    protected HwElementConnectorImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return EcuresourcePackage.Literals.HW_ELEMENT_CONNECTOR;
    }

    @Override
    public HwElement getHwElement() {
        if (this.eContainerFeatureID() != 6) {
            return null;
        }
        return (HwElement)this.eContainer();
    }

    public NotificationChain basicSetHwElement(HwElement newHwElement, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newHwElement, 6, msgs);
        return msgs;
    }

    @Override
    public void setHwElement(HwElement newHwElement) {
        if (newHwElement != this.eInternalContainer() || this.eContainerFeatureID() != 6 && newHwElement != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newHwElement)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newHwElement != null) {
                msgs = ((InternalEObject)newHwElement).eInverseAdd((InternalEObject)this, 26, HwElement.class, msgs);
            }
            if ((msgs = this.basicSetHwElement(newHwElement, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newHwElement, (Object)newHwElement));
        }
    }

    @Override
    public EList<HwElement> getHwElements() {
        if (this.hwElements == null) {
            this.hwElements = new EObjectResolvingReferringEList(HwElement.class, (InternalEObject)this, 7);
        }
        return this.hwElements;
    }

    @Override
    public EList<HwPinGroupConnector> getHwPinGroupConnections() {
        if (this.hwPinGroupConnections == null) {
            this.hwPinGroupConnections = new EObjectContainmentWithInverseEList(HwPinGroupConnector.class, (InternalEObject)this, 8, 6);
        }
        return this.hwPinGroupConnections;
    }

    @Override
    public EList<HwPinConnector> getHwPinConnections() {
        if (this.hwPinConnections == null) {
            this.hwPinConnections = new EObjectContainmentEList(HwPinConnector.class, (InternalEObject)this, 9);
        }
        return this.hwPinConnections;
    }

    @Override
    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldVariationPoint, (Object)newVariationPoint);
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
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -11, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -11, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 6: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetHwElement((HwElement)otherEnd, msgs);
            }
            case 8: {
                return ((InternalEList)this.getHwPinGroupConnections()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 6: {
                return this.basicSetHwElement(null, msgs);
            }
            case 8: {
                return ((InternalEList)this.getHwPinGroupConnections()).basicRemove((Object)otherEnd, msgs);
            }
            case 9: {
                return ((InternalEList)this.getHwPinConnections()).basicRemove((Object)otherEnd, msgs);
            }
            case 10: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 6: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 26, HwElement.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 6: {
                return this.getHwElement();
            }
            case 7: {
                return this.getHwElements();
            }
            case 8: {
                return this.getHwPinGroupConnections();
            }
            case 9: {
                return this.getHwPinConnections();
            }
            case 10: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 6: {
                this.setHwElement((HwElement)newValue);
                return;
            }
            case 7: {
                this.getHwElements().clear();
                this.getHwElements().addAll((Collection)newValue);
                return;
            }
            case 8: {
                this.getHwPinGroupConnections().clear();
                this.getHwPinGroupConnections().addAll((Collection)newValue);
                return;
            }
            case 9: {
                this.getHwPinConnections().clear();
                this.getHwPinConnections().addAll((Collection)newValue);
                return;
            }
            case 10: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 6: {
                this.setHwElement(null);
                return;
            }
            case 7: {
                this.getHwElements().clear();
                return;
            }
            case 8: {
                this.getHwPinGroupConnections().clear();
                return;
            }
            case 9: {
                this.getHwPinConnections().clear();
                return;
            }
            case 10: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 6: {
                return this.getHwElement() != null;
            }
            case 7: {
                return this.hwElements != null && !this.hwElements.isEmpty();
            }
            case 8: {
                return this.hwPinGroupConnections != null && !this.hwPinGroupConnections.isEmpty();
            }
            case 9: {
                return this.hwPinConnections != null && !this.hwPinConnections.isEmpty();
            }
            case 10: {
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

