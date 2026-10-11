/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 */
package org.eclipse.emf.ecore.impl;

import java.util.AbstractSet;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EGenericType;
import org.eclipse.emf.ecore.ETypeParameter;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.EGenericTypeImpl;
import org.eclipse.emf.ecore.impl.ENamedElementImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ETypeParameterImpl
extends ENamedElementImpl
implements ETypeParameter {
    protected EList<EGenericType> eBounds;
    protected Set<EGenericType> eGenericTypes;

    protected ETypeParameterImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return EcorePackage.Literals.ETYPE_PARAMETER;
    }

    @Override
    public EList<EGenericType> getEBounds() {
        if (this.eBounds == null) {
            this.eBounds = new EObjectContainmentEList<EGenericType>(EGenericType.class, (InternalEObject)this, 2){
                private static final long serialVersionUID = 1L;

                /*
                 * WARNING - Removed try catching itself - possible behaviour change.
                 */
                @Override
                public NotificationChain inverseAdd(EGenericType object, NotificationChain notifications) {
                    notifications = super.inverseAdd(object, notifications);
                    ETypeParameterImpl eTypeParameterImpl = ETypeParameterImpl.this;
                    synchronized (eTypeParameterImpl) {
                        Set<EGenericType> eGenericTypes = ETypeParameterImpl.this.getEGenericTypes();
                        for (EGenericTypeImpl eGenericTypeImpl : eGenericTypes) {
                            notifications = eGenericTypeImpl.setERawType(eGenericTypeImpl.getErasure(ETypeParameterImpl.this), notifications);
                        }
                    }
                    return notifications;
                }

                /*
                 * WARNING - Removed try catching itself - possible behaviour change.
                 */
                @Override
                public NotificationChain inverseRemove(EGenericType object, NotificationChain notifications) {
                    notifications = super.inverseRemove(object, notifications);
                    ETypeParameterImpl eTypeParameterImpl = ETypeParameterImpl.this;
                    synchronized (eTypeParameterImpl) {
                        Set<EGenericType> eGenericTypes = ETypeParameterImpl.this.getEGenericTypes();
                        for (EGenericTypeImpl eGenericTypeImpl : eGenericTypes) {
                            notifications = eGenericTypeImpl.setERawType(eGenericTypeImpl.getErasure(ETypeParameterImpl.this), notifications);
                        }
                    }
                    return notifications;
                }
            };
        }
        return this.eBounds;
    }

    protected Set<EGenericType> getEGenericTypes() {
        if (this.eGenericTypes == null) {
            this.eGenericTypes = new WeakHashMap<EGenericType, Object>(){

                private WeakHashMap<EGenericType, Object> map() {
                    return this;
                }

                @Override
                public Set<EGenericType> keySet() {
                    return new AbstractSet<EGenericType>(){

                        @Override
                        public Iterator<EGenericType> iterator() {
                            final Iterator delegateIterator = this.map().entrySet().iterator();
                            return new Iterator<EGenericType>(){

                                @Override
                                public boolean hasNext() {
                                    return delegateIterator.hasNext();
                                }

                                @Override
                                public EGenericType next() {
                                    return (EGenericType)((Map.Entry)delegateIterator.next()).getKey();
                                }

                                @Override
                                public void remove() {
                                    delegateIterator.remove();
                                }
                            };
                        }

                        @Override
                        public int size() {
                            return this.map().size();
                        }

                        @Override
                        public boolean contains(Object object) {
                            return this.containsKey(object);
                        }

                        @Override
                        public boolean add(EGenericType eGenericType) {
                            return this.map().put(eGenericType, "") == null;
                        }

                        @Override
                        public boolean addAll(Collection<? extends EGenericType> eGenericTypes) {
                            boolean result = false;
                            for (EGenericType eGenericType : eGenericTypes) {
                                if (this.map().put(eGenericType, "") != null) continue;
                                result = true;
                            }
                            return result;
                        }

                        @Override
                        public boolean remove(Object object) {
                            if (this.containsKey(object)) {
                                this.map().remove(object);
                                return true;
                            }
                            return false;
                        }

                        @Override
                        public void clear() {
                            this.map().clear();
                        }
                    };
                }
            }.keySet();
        }
        return this.eGenericTypes;
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return ((InternalEList)this.getEAnnotations()).basicRemove(otherEnd, msgs);
            }
            case 2: {
                return ((InternalEList)this.getEBounds()).basicRemove(otherEnd, msgs);
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
            case 1: {
                return this.getName();
            }
            case 2: {
                return this.getEBounds();
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
            case 1: {
                this.setName((String)newValue);
                return;
            }
            case 2: {
                this.getEBounds().clear();
                this.getEBounds().addAll((Collection)newValue);
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
            case 1: {
                this.setName(NAME_EDEFAULT);
                return;
            }
            case 2: {
                this.getEBounds().clear();
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
            case 1: {
                return NAME_EDEFAULT == null ? this.name != null : !NAME_EDEFAULT.equals(this.name);
            }
            case 2: {
                return this.eBounds != null && !this.eBounds.isEmpty();
            }
        }
        return this.eDynamicIsSet(featureID);
    }
}

