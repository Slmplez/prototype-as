/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
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
package autosar40.swcomponent.swcinternalbehavior.portapioptions.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.swcomponent.components.PortPrototype;
import autosar40.swcomponent.swcinternalbehavior.SwcInternalBehavior;
import autosar40.swcomponent.swcinternalbehavior.portapioptions.PortAPIOption;
import autosar40.swcomponent.swcinternalbehavior.portapioptions.PortDefinedArgumentValue;
import autosar40.swcomponent.swcinternalbehavior.portapioptions.PortapioptionsPackage;
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
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class PortAPIOptionImpl
extends ARObjectImpl
implements PortAPIOption,
IReferringClass {
    protected static final Boolean ENABLE_TAKE_ADDRESS_EDEFAULT = Boolean.FALSE;
    protected Boolean enableTakeAddress = ENABLE_TAKE_ADDRESS_EDEFAULT;
    protected boolean enableTakeAddressESet;
    protected static final Boolean INDIRECT_API_EDEFAULT = Boolean.FALSE;
    protected Boolean indirectAPI = INDIRECT_API_EDEFAULT;
    protected boolean indirectAPIESet;
    protected EList<PortDefinedArgumentValue> portArgValues;
    protected PortPrototype port;
    protected VariationPoint variationPoint;

    protected PortAPIOptionImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return PortapioptionsPackage.Literals.PORT_API_OPTION;
    }

    @Override
    public SwcInternalBehavior getSwcInternalBehavior() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (SwcInternalBehavior)this.eContainer();
    }

    public NotificationChain basicSetSwcInternalBehavior(SwcInternalBehavior newSwcInternalBehavior, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newSwcInternalBehavior, 4, msgs);
        return msgs;
    }

    @Override
    public void setSwcInternalBehavior(SwcInternalBehavior newSwcInternalBehavior) {
        if (newSwcInternalBehavior != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newSwcInternalBehavior != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newSwcInternalBehavior)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newSwcInternalBehavior != null) {
                msgs = ((InternalEObject)newSwcInternalBehavior).eInverseAdd((InternalEObject)this, 41, SwcInternalBehavior.class, msgs);
            }
            if ((msgs = this.basicSetSwcInternalBehavior(newSwcInternalBehavior, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newSwcInternalBehavior, (Object)newSwcInternalBehavior));
        }
    }

    @Override
    public Boolean getEnableTakeAddress() {
        return this.enableTakeAddress;
    }

    @Override
    public void setEnableTakeAddress(Boolean newEnableTakeAddress) {
        Boolean oldEnableTakeAddress = this.enableTakeAddress;
        this.enableTakeAddress = newEnableTakeAddress;
        boolean oldEnableTakeAddressESet = this.enableTakeAddressESet;
        this.enableTakeAddressESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldEnableTakeAddress, (Object)this.enableTakeAddress, !oldEnableTakeAddressESet));
        }
    }

    @Override
    public void unsetEnableTakeAddress() {
        Boolean oldEnableTakeAddress = this.enableTakeAddress;
        boolean oldEnableTakeAddressESet = this.enableTakeAddressESet;
        this.enableTakeAddress = ENABLE_TAKE_ADDRESS_EDEFAULT;
        this.enableTakeAddressESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldEnableTakeAddress, (Object)ENABLE_TAKE_ADDRESS_EDEFAULT, oldEnableTakeAddressESet));
        }
    }

    @Override
    public boolean isSetEnableTakeAddress() {
        return this.enableTakeAddressESet;
    }

    @Override
    public Boolean getIndirectAPI() {
        return this.indirectAPI;
    }

    @Override
    public void setIndirectAPI(Boolean newIndirectAPI) {
        Boolean oldIndirectAPI = this.indirectAPI;
        this.indirectAPI = newIndirectAPI;
        boolean oldIndirectAPIESet = this.indirectAPIESet;
        this.indirectAPIESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldIndirectAPI, (Object)this.indirectAPI, !oldIndirectAPIESet));
        }
    }

    @Override
    public void unsetIndirectAPI() {
        Boolean oldIndirectAPI = this.indirectAPI;
        boolean oldIndirectAPIESet = this.indirectAPIESet;
        this.indirectAPI = INDIRECT_API_EDEFAULT;
        this.indirectAPIESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldIndirectAPI, (Object)INDIRECT_API_EDEFAULT, oldIndirectAPIESet));
        }
    }

    @Override
    public boolean isSetIndirectAPI() {
        return this.indirectAPIESet;
    }

    @Override
    public EList<PortDefinedArgumentValue> getPortArgValues() {
        if (this.portArgValues == null) {
            this.portArgValues = new EObjectContainmentWithInverseEList(PortDefinedArgumentValue.class, (InternalEObject)this, 7, 4);
        }
        return this.portArgValues;
    }

    @Override
    public PortPrototype getPort() {
        if (this.port != null && this.port.eIsProxy()) {
            InternalEObject oldPort = (InternalEObject)this.port;
            this.port = (PortPrototype)this.eResolveProxy(oldPort);
            if (this.port != oldPort && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 8, (Object)oldPort, (Object)this.port));
            }
        }
        return this.port;
    }

    public PortPrototype basicGetPort() {
        return this.port;
    }

    @Override
    public void setPort(PortPrototype newPort) {
        PortPrototype oldPort = this.port;
        this.port = newPort;
        AutosarObjectUtil.setDest((EObject)this, (int)8, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldPort, (Object)this.port));
        }
    }

    @Override
    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldVariationPoint, (Object)newVariationPoint);
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
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -10, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -10, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetSwcInternalBehavior((SwcInternalBehavior)otherEnd, msgs);
            }
            case 7: {
                return ((InternalEList)this.getPortArgValues()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetSwcInternalBehavior(null, msgs);
            }
            case 7: {
                return ((InternalEList)this.getPortArgValues()).basicRemove((Object)otherEnd, msgs);
            }
            case 9: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 41, SwcInternalBehavior.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getSwcInternalBehavior();
            }
            case 5: {
                return this.getEnableTakeAddress();
            }
            case 6: {
                return this.getIndirectAPI();
            }
            case 7: {
                return this.getPortArgValues();
            }
            case 8: {
                if (resolve) {
                    return this.getPort();
                }
                return this.basicGetPort();
            }
            case 9: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setSwcInternalBehavior((SwcInternalBehavior)newValue);
                return;
            }
            case 5: {
                this.setEnableTakeAddress((Boolean)newValue);
                return;
            }
            case 6: {
                this.setIndirectAPI((Boolean)newValue);
                return;
            }
            case 7: {
                this.getPortArgValues().clear();
                this.getPortArgValues().addAll((Collection)newValue);
                return;
            }
            case 8: {
                this.setPort((PortPrototype)newValue);
                return;
            }
            case 9: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setSwcInternalBehavior(null);
                return;
            }
            case 5: {
                this.unsetEnableTakeAddress();
                return;
            }
            case 6: {
                this.unsetIndirectAPI();
                return;
            }
            case 7: {
                this.getPortArgValues().clear();
                return;
            }
            case 8: {
                this.setPort(null);
                return;
            }
            case 9: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getSwcInternalBehavior() != null;
            }
            case 5: {
                return this.isSetEnableTakeAddress();
            }
            case 6: {
                return this.isSetIndirectAPI();
            }
            case 7: {
                return this.portArgValues != null && !this.portArgValues.isEmpty();
            }
            case 8: {
                return this.port != null;
            }
            case 9: {
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

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (enableTakeAddress: ");
        if (this.enableTakeAddressESet) {
            result.append(this.enableTakeAddress);
        } else {
            result.append("<unset>");
        }
        result.append(", indirectAPI: ");
        if (this.indirectAPIESet) {
            result.append(this.indirectAPI);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

