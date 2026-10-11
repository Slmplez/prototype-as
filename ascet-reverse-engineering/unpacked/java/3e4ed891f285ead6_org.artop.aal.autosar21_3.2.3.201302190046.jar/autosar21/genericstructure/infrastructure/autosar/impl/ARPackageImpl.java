/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARPackage
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar21.genericstructure.infrastructure.autosar.impl;

import autosar21.genericstructure.infrastructure.PackageableElement;
import autosar21.genericstructure.infrastructure.autosar.ARPackage;
import autosar21.genericstructure.infrastructure.autosar.AutosarPackage;
import autosar21.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import gautosar.ggenericstructure.ginfrastructure.GARPackage;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import java.util.Collection;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ARPackageImpl
extends IdentifiableImpl
implements ARPackage {
    protected EList<PackageableElement> elements;
    protected EList<ARPackage> subPackages;

    protected ARPackageImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return AutosarPackage.Literals.AR_PACKAGE;
    }

    public EList<GPackageableElement> gGetElements() {
        EList<PackageableElement> untypedList = this.getElements();
        return untypedList;
    }

    public EList<GARPackage> gGetSubPackages() {
        EList<ARPackage> untypedList = this.getSubPackages();
        return untypedList;
    }

    @Override
    public EList<PackageableElement> getElements() {
        if (this.elements == null) {
            this.elements = new EObjectContainmentWithInverseEList(PackageableElement.class, (InternalEObject)this, 18, 17);
        }
        return this.elements;
    }

    @Override
    public EList<ARPackage> getSubPackages() {
        if (this.subPackages == null) {
            this.subPackages = new EObjectContainmentEList(ARPackage.class, (InternalEObject)this, 19);
        }
        return this.subPackages;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                return ((InternalEList)this.getElements()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                return ((InternalEList)this.getElements()).basicRemove((Object)otherEnd, msgs);
            }
            case 19: {
                return ((InternalEList)this.getSubPackages()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 16: {
                return this.gGetElements();
            }
            case 17: {
                return this.gGetSubPackages();
            }
            case 18: {
                return this.getElements();
            }
            case 19: {
                return this.getSubPackages();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 16: {
                this.gGetElements().clear();
                this.gGetElements().addAll((Collection)newValue);
                return;
            }
            case 17: {
                this.gGetSubPackages().clear();
                this.gGetSubPackages().addAll((Collection)newValue);
                return;
            }
            case 18: {
                this.getElements().clear();
                this.getElements().addAll((Collection)newValue);
                return;
            }
            case 19: {
                this.getSubPackages().clear();
                this.getSubPackages().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 16: {
                this.gGetElements().clear();
                return;
            }
            case 17: {
                this.gGetSubPackages().clear();
                return;
            }
            case 18: {
                this.getElements().clear();
                return;
            }
            case 19: {
                this.getSubPackages().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 16: {
                return !this.gGetElements().isEmpty();
            }
            case 17: {
                return !this.gGetSubPackages().isEmpty();
            }
            case 18: {
                return this.elements != null && !this.elements.isEmpty();
            }
            case 19: {
                return this.subPackages != null && !this.subPackages.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GARPackage.class) {
            switch (derivedFeatureID) {
                case 16: {
                    return 6;
                }
                case 17: {
                    return 7;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    @Override
    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GARPackage.class) {
            switch (baseFeatureID) {
                case 6: {
                    return 16;
                }
                case 7: {
                    return 17;
                }
            }
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
    }
}

