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
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.swcomponent.portinterface.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.swcomponent.datatype.dataprototypes.AutosarDataPrototype;
import autosar40.swcomponent.portinterface.DataPrototypeMapping;
import autosar40.swcomponent.portinterface.PortinterfacePackage;
import autosar40.swcomponent.portinterface.SubElementMapping;
import autosar40.swcomponent.portinterface.TextTableMapping;
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
public class DataPrototypeMappingImpl
extends ARObjectImpl
implements DataPrototypeMapping,
IReferringClass {
    protected AutosarDataPrototype firstDataPrototype;
    protected AutosarDataPrototype secondDataPrototype;
    protected EList<SubElementMapping> subElementMappings;
    protected EList<TextTableMapping> textTableMappings;

    protected DataPrototypeMappingImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return PortinterfacePackage.Literals.DATA_PROTOTYPE_MAPPING;
    }

    @Override
    public AutosarDataPrototype getFirstDataPrototype() {
        if (this.firstDataPrototype != null && this.firstDataPrototype.eIsProxy()) {
            InternalEObject oldFirstDataPrototype = (InternalEObject)this.firstDataPrototype;
            this.firstDataPrototype = (AutosarDataPrototype)this.eResolveProxy(oldFirstDataPrototype);
            if (this.firstDataPrototype != oldFirstDataPrototype && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 4, (Object)oldFirstDataPrototype, (Object)this.firstDataPrototype));
            }
        }
        return this.firstDataPrototype;
    }

    public AutosarDataPrototype basicGetFirstDataPrototype() {
        return this.firstDataPrototype;
    }

    @Override
    public void setFirstDataPrototype(AutosarDataPrototype newFirstDataPrototype) {
        AutosarDataPrototype oldFirstDataPrototype = this.firstDataPrototype;
        this.firstDataPrototype = newFirstDataPrototype;
        AutosarObjectUtil.setDest((EObject)this, (int)4, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldFirstDataPrototype, (Object)this.firstDataPrototype));
        }
    }

    @Override
    public AutosarDataPrototype getSecondDataPrototype() {
        if (this.secondDataPrototype != null && this.secondDataPrototype.eIsProxy()) {
            InternalEObject oldSecondDataPrototype = (InternalEObject)this.secondDataPrototype;
            this.secondDataPrototype = (AutosarDataPrototype)this.eResolveProxy(oldSecondDataPrototype);
            if (this.secondDataPrototype != oldSecondDataPrototype && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldSecondDataPrototype, (Object)this.secondDataPrototype));
            }
        }
        return this.secondDataPrototype;
    }

    public AutosarDataPrototype basicGetSecondDataPrototype() {
        return this.secondDataPrototype;
    }

    @Override
    public void setSecondDataPrototype(AutosarDataPrototype newSecondDataPrototype) {
        AutosarDataPrototype oldSecondDataPrototype = this.secondDataPrototype;
        this.secondDataPrototype = newSecondDataPrototype;
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldSecondDataPrototype, (Object)this.secondDataPrototype));
        }
    }

    @Override
    public EList<SubElementMapping> getSubElementMappings() {
        if (this.subElementMappings == null) {
            this.subElementMappings = new EObjectContainmentWithInverseEList(SubElementMapping.class, (InternalEObject)this, 6, 4);
        }
        return this.subElementMappings;
    }

    @Override
    public EList<TextTableMapping> getTextTableMappings() {
        if (this.textTableMappings == null) {
            this.textTableMappings = new EObjectContainmentEList(TextTableMapping.class, (InternalEObject)this, 7);
        }
        return this.textTableMappings;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 6: {
                return ((InternalEList)this.getSubElementMappings()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 6: {
                return ((InternalEList)this.getSubElementMappings()).basicRemove((Object)otherEnd, msgs);
            }
            case 7: {
                return ((InternalEList)this.getTextTableMappings()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                if (resolve) {
                    return this.getFirstDataPrototype();
                }
                return this.basicGetFirstDataPrototype();
            }
            case 5: {
                if (resolve) {
                    return this.getSecondDataPrototype();
                }
                return this.basicGetSecondDataPrototype();
            }
            case 6: {
                return this.getSubElementMappings();
            }
            case 7: {
                return this.getTextTableMappings();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setFirstDataPrototype((AutosarDataPrototype)newValue);
                return;
            }
            case 5: {
                this.setSecondDataPrototype((AutosarDataPrototype)newValue);
                return;
            }
            case 6: {
                this.getSubElementMappings().clear();
                this.getSubElementMappings().addAll((Collection)newValue);
                return;
            }
            case 7: {
                this.getTextTableMappings().clear();
                this.getTextTableMappings().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setFirstDataPrototype(null);
                return;
            }
            case 5: {
                this.setSecondDataPrototype(null);
                return;
            }
            case 6: {
                this.getSubElementMappings().clear();
                return;
            }
            case 7: {
                this.getTextTableMappings().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.firstDataPrototype != null;
            }
            case 5: {
                return this.secondDataPrototype != null;
            }
            case 6: {
                return this.subElementMappings != null && !this.subElementMappings.isEmpty();
            }
            case 7: {
                return this.textTableMappings != null && !this.textTableMappings.isEmpty();
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

