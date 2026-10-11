/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.NotificationChain
 */
package org.eclipse.emf.ecore.util;

import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.InternalEObject;

public abstract class BasicSettingDelegate
implements EStructuralFeature.Internal.SettingDelegate {
    protected EStructuralFeature eStructuralFeature;

    public BasicSettingDelegate(EStructuralFeature eStructuralFeature) {
        this.eStructuralFeature = eStructuralFeature;
    }

    public EStructuralFeature.Setting dynamicSetting(final InternalEObject owner, final EStructuralFeature.Internal.DynamicValueHolder settings, final int dynamicFeatureID) {
        return new EStructuralFeature.Setting(){

            public EObject getEObject() {
                return owner;
            }

            public EStructuralFeature getEStructuralFeature() {
                return BasicSettingDelegate.this.eStructuralFeature;
            }

            public Object get(boolean resolve) {
                return BasicSettingDelegate.this.dynamicGet(owner, settings, dynamicFeatureID, resolve, true);
            }

            public boolean isSet() {
                return BasicSettingDelegate.this.dynamicIsSet(owner, settings, dynamicFeatureID);
            }

            public void set(Object newValue) {
                BasicSettingDelegate.this.dynamicSet(owner, settings, dynamicFeatureID, newValue);
            }

            public void unset() {
                BasicSettingDelegate.this.dynamicUnset(owner, settings, dynamicFeatureID);
            }
        };
    }

    public abstract Object dynamicGet(InternalEObject var1, EStructuralFeature.Internal.DynamicValueHolder var2, int var3, boolean var4, boolean var5);

    public abstract boolean dynamicIsSet(InternalEObject var1, EStructuralFeature.Internal.DynamicValueHolder var2, int var3);

    public void dynamicSet(InternalEObject owner, EStructuralFeature.Internal.DynamicValueHolder settings, int dynamicFeatureID, Object newValue) {
        throw new UnsupportedOperationException();
    }

    public void dynamicUnset(InternalEObject owner, EStructuralFeature.Internal.DynamicValueHolder settings, int dynamicFeatureID) {
        throw new UnsupportedOperationException();
    }

    public NotificationChain dynamicInverseAdd(InternalEObject owner, EStructuralFeature.Internal.DynamicValueHolder settings, int dynamicFeatureID, InternalEObject otherEnd, NotificationChain notifications) {
        throw new UnsupportedOperationException();
    }

    public NotificationChain dynamicInverseRemove(InternalEObject owner, EStructuralFeature.Internal.DynamicValueHolder settings, int dynamicFeatureID, InternalEObject otherEnd, NotificationChain notifications) {
        throw new UnsupportedOperationException();
    }

    public static abstract class Stateless
    extends BasicSettingDelegate {
        public Stateless(EStructuralFeature eStructuralFeature) {
            super(eStructuralFeature);
        }

        public final EStructuralFeature.Setting dynamicSetting(InternalEObject owner, EStructuralFeature.Internal.DynamicValueHolder settings, int dynamicFeatureID) {
            return this.setting(owner);
        }

        protected EStructuralFeature.Setting setting(final InternalEObject owner) {
            return new EStructuralFeature.Setting(){

                public EObject getEObject() {
                    return owner;
                }

                public EStructuralFeature getEStructuralFeature() {
                    return Stateless.this.eStructuralFeature;
                }

                public Object get(boolean resolve) {
                    return Stateless.this.get(owner, resolve, true);
                }

                public boolean isSet() {
                    return Stateless.this.isSet(owner);
                }

                public void set(Object newValue) {
                    Stateless.this.set(owner, newValue);
                }

                public void unset() {
                    Stateless.this.unset(owner);
                }
            };
        }

        public final Object dynamicGet(InternalEObject owner, EStructuralFeature.Internal.DynamicValueHolder settings, int dynamicFeatureID, boolean resolve, boolean coreType) {
            return this.get(owner, resolve, coreType);
        }

        protected abstract Object get(InternalEObject var1, boolean var2, boolean var3);

        public final boolean dynamicIsSet(InternalEObject owner, EStructuralFeature.Internal.DynamicValueHolder settings, int dynamicFeatureID) {
            return this.isSet(owner);
        }

        protected abstract boolean isSet(InternalEObject var1);

        public final void dynamicSet(InternalEObject owner, EStructuralFeature.Internal.DynamicValueHolder settings, int dynamicFeatureID, Object newValue) {
            this.set(owner, newValue);
        }

        protected void set(InternalEObject owner, Object newValue) {
            throw new UnsupportedOperationException();
        }

        public final void dynamicUnset(InternalEObject owner, EStructuralFeature.Internal.DynamicValueHolder settings, int dynamicFeatureID) {
            this.unset(owner);
        }

        protected void unset(InternalEObject owner) {
            throw new UnsupportedOperationException();
        }

        public final NotificationChain dynamicInverseAdd(InternalEObject owner, EStructuralFeature.Internal.DynamicValueHolder settings, int dynamicFeatureID, InternalEObject otherEnd, NotificationChain notifications) {
            return this.inverseAdd(owner, otherEnd, notifications);
        }

        protected NotificationChain inverseAdd(InternalEObject owner, InternalEObject otherEnd, NotificationChain notifications) {
            throw new UnsupportedOperationException();
        }

        public final NotificationChain dynamicInverseRemove(InternalEObject owner, EStructuralFeature.Internal.DynamicValueHolder settings, int dynamicFeatureID, InternalEObject otherEnd, NotificationChain notifications) {
            return this.inverseRemove(owner, otherEnd, notifications);
        }

        protected NotificationChain inverseRemove(InternalEObject owner, InternalEObject otherEnd, NotificationChain notifications) {
            throw new UnsupportedOperationException();
        }
    }
}

