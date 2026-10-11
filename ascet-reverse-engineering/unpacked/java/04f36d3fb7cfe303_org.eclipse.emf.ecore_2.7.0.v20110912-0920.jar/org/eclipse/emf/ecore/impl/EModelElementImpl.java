/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.BasicEList
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.common.util.WrappedException
 */
package org.eclipse.emf.ecore.impl;

import java.lang.reflect.InvocationTargetException;
import java.util.Collection;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.BasicEList;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.common.util.WrappedException;
import org.eclipse.emf.ecore.EAnnotation;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EModelElement;
import org.eclipse.emf.ecore.ENamedElement;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class EModelElementImpl
extends MinimalEObjectImpl.Container
implements EModelElement {
    protected EList<EAnnotation> eAnnotations;
    protected int eFlags;
    protected static final int EFROZEN = 1;
    protected static final int ELAST_EMODEL_ELEMENT_FLAG = 1;

    protected EModelElementImpl() {
    }

    protected void freeze() {
        this.setFrozen();
    }

    protected void freeze(Object eModelElement) {
        if (eModelElement instanceof EModelElementImpl) {
            ((EModelElementImpl)eModelElement).freeze();
        }
    }

    protected void setFrozen() {
        this.eFlags |= 1;
    }

    protected boolean isFrozen() {
        return (this.eFlags & 1) != 0;
    }

    @Override
    protected void eSetDirectResource(Resource.Internal resource) {
        assert (!this.isFrozen()) : "A frozen model should not be modified";
        super.eSetDirectResource(resource);
    }

    @Override
    protected EClass eStaticClass() {
        return EcorePackage.Literals.EMODEL_ELEMENT;
    }

    @Override
    public EList<EAnnotation> getEAnnotations() {
        if (this.eAnnotations == null) {
            this.eAnnotations = new EObjectContainmentWithInverseEList<EAnnotation>(EAnnotation.class, this, 0, 3);
        }
        return this.eAnnotations;
    }

    @Override
    public EAnnotation getEAnnotation(String source) {
        block10: {
            block11: {
                if (this.eAnnotations == null) break block10;
                if (!(this.eAnnotations instanceof BasicEList)) break block11;
                int size = this.eAnnotations.size();
                if (size <= 0) break block10;
                EAnnotation[] eAnnotationArray = (EAnnotation[])((BasicEList)this.eAnnotations).data();
                if (source == null) {
                    int i = 0;
                    while (i < size) {
                        EAnnotation eAnnotation = eAnnotationArray[i];
                        if (eAnnotation.getSource() == null) {
                            return eAnnotation;
                        }
                        ++i;
                    }
                } else {
                    int i = 0;
                    while (i < size) {
                        EAnnotation eAnnotation = eAnnotationArray[i];
                        if (source.equals(eAnnotation.getSource())) {
                            return eAnnotation;
                        }
                        ++i;
                    }
                }
                break block10;
            }
            if (source == null) {
                for (EAnnotation eAnnotation : this.eAnnotations) {
                    if (eAnnotation.getSource() != null) continue;
                    return eAnnotation;
                }
            } else {
                for (EAnnotation eAnnotation : this.eAnnotations) {
                    if (!source.equals(eAnnotation.getSource())) continue;
                    return eAnnotation;
                }
            }
        }
        return null;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return ((InternalEList)this.getEAnnotations()).basicAdd(otherEnd, msgs);
            }
        }
        return this.eDynamicInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return ((InternalEList)this.getEAnnotations()).basicRemove(otherEnd, msgs);
            }
        }
        return this.eDynamicInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getEAnnotations();
            }
        }
        return this.eDynamicGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.getEAnnotations().clear();
                this.getEAnnotations().addAll((Collection)newValue);
                return;
            }
        }
        this.eDynamicSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.getEAnnotations().clear();
                return;
            }
        }
        this.eDynamicUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.eAnnotations != null && !this.eAnnotations.isEmpty();
            }
        }
        return this.eDynamicIsSet(featureID);
    }

    @Override
    public Object eInvoke(int operationID, EList<?> arguments) throws InvocationTargetException {
        switch (operationID) {
            case 0: {
                return this.getEAnnotation((String)arguments.get(0));
            }
        }
        return this.eDynamicInvoke(operationID, arguments);
    }

    @Override
    public String eURIFragmentSegment(EStructuralFeature eStructuralFeature, EObject eObject) {
        EAnnotation eAnnotation;
        String source;
        if (eObject instanceof ENamedElement) {
            ENamedElement eNamedElement = (ENamedElement)eObject;
            String name = eNamedElement.getName();
            if (name != null) {
                int count = 0;
                for (Object otherEObject : this.eContents()) {
                    ENamedElement otherENamedElement;
                    if (otherEObject == eObject) break;
                    if (!(otherEObject instanceof ENamedElement) || !name.equals((otherENamedElement = (ENamedElement)otherEObject).getName())) continue;
                    ++count;
                }
                name = EModelElementImpl.eEncodeValue(name);
                return count > 0 ? String.valueOf(name) + "." + count : name;
            }
        } else if (eObject instanceof EAnnotation && (source = (eAnnotation = (EAnnotation)eObject).getSource()) != null) {
            int count = 0;
            for (Object otherEObject : this.eContents()) {
                EAnnotation otherEAnnotation;
                if (otherEObject == eObject) break;
                if (!(otherEObject instanceof EAnnotation) || !source.equals((otherEAnnotation = (EAnnotation)otherEObject).getSource())) continue;
                ++count;
            }
            StringBuffer result = new StringBuffer(source.length() + 5);
            result.append('%');
            result.append(URI.encodeSegment((String)source, (boolean)false));
            result.append('%');
            if (count > 0) {
                result.append('.');
                result.append(count);
            }
            return result.toString();
        }
        return super.eURIFragmentSegment(eStructuralFeature, eObject);
    }

    @Override
    public EObject eObjectForURIFragmentSegment(String uriFragmentSegment) {
        char firstCharacter;
        int length = uriFragmentSegment.length();
        if (length > 0 && (firstCharacter = uriFragmentSegment.charAt(0)) != '@') {
            int index;
            if (firstCharacter == '%') {
                index = uriFragmentSegment.lastIndexOf("%");
                boolean hasCount = false;
                if (index == length - 1 || (hasCount = uriFragmentSegment.charAt(index + 1) == '.')) {
                    String source = URI.decode((String)uriFragmentSegment.substring(1, index));
                    int count = 0;
                    if (hasCount) {
                        try {
                            count = Integer.parseInt(uriFragmentSegment.substring(index + 2));
                        }
                        catch (NumberFormatException exception) {
                            throw new WrappedException((Exception)exception);
                        }
                    }
                    for (Object object : this.eContents()) {
                        EAnnotation eAnnotation;
                        if (!(object instanceof EAnnotation) || !source.equals((eAnnotation = (EAnnotation)object).getSource()) || count-- != 0) continue;
                        return eAnnotation;
                    }
                    return null;
                }
            }
            String name = (index = uriFragmentSegment.lastIndexOf(".")) == -1 ? uriFragmentSegment : uriFragmentSegment.substring(0, index);
            int count = 0;
            if (index != -1) {
                try {
                    count = Integer.parseInt(uriFragmentSegment.substring(index + 1));
                }
                catch (NumberFormatException exception) {
                    name = uriFragmentSegment;
                }
            }
            name = URI.decode((String)name);
            for (Object object : this.eContents()) {
                ENamedElement eNamedElement;
                if (!(object instanceof ENamedElement) || !name.equals((eNamedElement = (ENamedElement)object).getName()) || count-- != 0) continue;
                return eNamedElement;
            }
            return null;
        }
        return super.eObjectForURIFragmentSegment(uriFragmentSegment);
    }
}

