/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
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
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.impl;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.GeneralParameter;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.GerneralparametersPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.PrmChar;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.Prms;
import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.IdentifiableImpl;
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
public class GeneralParameterImpl
extends IdentifiableImpl
implements GeneralParameter {
    protected EList<PrmChar> prmChars;

    protected GeneralParameterImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return GerneralparametersPackage.Literals.GENERAL_PARAMETER;
    }

    @Override
    public Prms getPrms() {
        if (this.eContainerFeatureID() != 18) {
            return null;
        }
        return (Prms)this.eContainer();
    }

    public NotificationChain basicSetPrms(Prms newPrms, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newPrms, 18, msgs);
        return msgs;
    }

    @Override
    public void setPrms(Prms newPrms) {
        if (newPrms != this.eInternalContainer() || this.eContainerFeatureID() != 18 && newPrms != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newPrms)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newPrms != null) {
                msgs = ((InternalEObject)newPrms).eInverseAdd((InternalEObject)this, 10, Prms.class, msgs);
            }
            if ((msgs = this.basicSetPrms(newPrms, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)newPrms, (Object)newPrms));
        }
    }

    @Override
    public EList<PrmChar> getPrmChars() {
        if (this.prmChars == null) {
            this.prmChars = new EObjectContainmentWithInverseEList(PrmChar.class, (InternalEObject)this, 19, 4);
        }
        return this.prmChars;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetPrms((Prms)otherEnd, msgs);
            }
            case 19: {
                return ((InternalEList)this.getPrmChars()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                return this.basicSetPrms(null, msgs);
            }
            case 19: {
                return ((InternalEList)this.getPrmChars()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 18: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 10, Prms.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.getPrms();
            }
            case 19: {
                return this.getPrmChars();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.setPrms((Prms)newValue);
                return;
            }
            case 19: {
                this.getPrmChars().clear();
                this.getPrmChars().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.setPrms(null);
                return;
            }
            case 19: {
                this.getPrmChars().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.getPrms() != null;
            }
            case 19: {
                return this.prmChars != null && !this.prmChars.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

