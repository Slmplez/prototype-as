/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.NotificationChain
 */
package org.eclipse.emf.ecore;

import java.util.HashMap;
import java.util.Map;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.ETypedElement;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.util.FeatureMap;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface EStructuralFeature
extends ETypedElement {
    public boolean isTransient();

    public void setTransient(boolean var1);

    public boolean isVolatile();

    public void setVolatile(boolean var1);

    public boolean isChangeable();

    public void setChangeable(boolean var1);

    public String getDefaultValueLiteral();

    public void setDefaultValueLiteral(String var1);

    public Object getDefaultValue();

    public void setDefaultValue(Object var1);

    public boolean isUnsettable();

    public void setUnsettable(boolean var1);

    public boolean isDerived();

    public void setDerived(boolean var1);

    public EClass getEContainingClass();

    public int getFeatureID();

    public Class<?> getContainerClass();

    public static interface Internal
    extends EStructuralFeature,
    InternalEObject {
        public SettingDelegate getSettingDelegate();

        public void setSettingDelegate(SettingDelegate var1);

        public boolean isFeatureMap();

        public FeatureMap.Entry.Internal getFeatureMapEntryPrototype();

        public void setFeatureMapEntryPrototype(FeatureMap.Entry.Internal var1);

        public boolean isID();

        public boolean isResolveProxies();

        public boolean isContainer();

        public boolean isContainment();

        public EReference getEOpposite();

        public static interface DynamicValueHolder {
            public static final Object NIL = new Object();

            public Object dynamicGet(int var1);

            public void dynamicSet(int var1, Object var2);

            public void dynamicUnset(int var1);
        }

        public static interface SettingDelegate {
            public Setting dynamicSetting(InternalEObject var1, DynamicValueHolder var2, int var3);

            public Object dynamicGet(InternalEObject var1, DynamicValueHolder var2, int var3, boolean var4, boolean var5);

            public void dynamicSet(InternalEObject var1, DynamicValueHolder var2, int var3, Object var4);

            public boolean dynamicIsSet(InternalEObject var1, DynamicValueHolder var2, int var3);

            public void dynamicUnset(InternalEObject var1, DynamicValueHolder var2, int var3);

            public NotificationChain dynamicInverseAdd(InternalEObject var1, DynamicValueHolder var2, int var3, InternalEObject var4, NotificationChain var5);

            public NotificationChain dynamicInverseRemove(InternalEObject var1, DynamicValueHolder var2, int var3, InternalEObject var4, NotificationChain var5);

            public static interface Factory {
                public SettingDelegate createSettingDelegate(EStructuralFeature var1);

                public static interface Descriptor {
                    public Factory getFactory();
                }

                /*
                 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
                 */
                public static interface Registry
                extends Map<String, Object> {
                    public static final Registry INSTANCE = new Impl();

                    public Factory getFactory(String var1);

                    /*
                     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
                     */
                    public static class Impl
                    extends HashMap<String, Object>
                    implements Registry {
                        private static final long serialVersionUID = 1L;

                        @Override
                        public Object get(Object key) {
                            Object factory = super.get(key);
                            if (factory instanceof Descriptor) {
                                Descriptor factoryDescriptor = (Descriptor)factory;
                                factory = factoryDescriptor.getFactory();
                                this.put((String)key, factory);
                                return factory;
                            }
                            return factory;
                        }

                        @Override
                        public Factory getFactory(String uri) {
                            return (Factory)this.get(uri);
                        }
                    }
                }
            }
        }
    }

    public static interface Setting {
        public EObject getEObject();

        public EStructuralFeature getEStructuralFeature();

        public Object get(boolean var1);

        public void set(Object var1);

        public boolean isSet();

        public void unset();
    }
}

