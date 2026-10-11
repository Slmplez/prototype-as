/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.common.util.URI
 */
package org.eclipse.emf.ecore;

import java.lang.reflect.InvocationTargetException;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.resource.Resource;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface InternalEObject
extends EObject {
    public static final int EOPPOSITE_FEATURE_BASE = -1;

    public boolean eNotificationRequired();

    public String eURIFragmentSegment(EStructuralFeature var1, EObject var2);

    public EObject eObjectForURIFragmentSegment(String var1);

    public void eSetClass(EClass var1);

    public EStructuralFeature.Setting eSetting(EStructuralFeature var1);

    public int eBaseStructuralFeatureID(int var1, Class<?> var2);

    public int eContainerFeatureID();

    public int eDerivedStructuralFeatureID(int var1, Class<?> var2);

    public int eDerivedOperationID(int var1, Class<?> var2);

    public NotificationChain eSetResource(Resource.Internal var1, NotificationChain var2);

    public NotificationChain eInverseAdd(InternalEObject var1, int var2, Class<?> var3, NotificationChain var4);

    public NotificationChain eInverseRemove(InternalEObject var1, int var2, Class<?> var3, NotificationChain var4);

    public NotificationChain eBasicSetContainer(InternalEObject var1, int var2, NotificationChain var3);

    public NotificationChain eBasicRemoveFromContainer(NotificationChain var1);

    public URI eProxyURI();

    public void eSetProxyURI(URI var1);

    public EObject eResolveProxy(InternalEObject var1);

    public InternalEObject eInternalContainer();

    public Resource.Internal eInternalResource();

    public Resource.Internal eDirectResource();

    public EStore eStore();

    public void eSetStore(EStore var1);

    public Object eGet(EStructuralFeature var1, boolean var2, boolean var3);

    public Object eGet(int var1, boolean var2, boolean var3);

    public void eSet(int var1, Object var2);

    public void eUnset(int var1);

    public boolean eIsSet(int var1);

    public Object eInvoke(int var1, EList<?> var2) throws InvocationTargetException;

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static interface EStore {
        public static final int NO_INDEX = -1;

        public Object get(InternalEObject var1, EStructuralFeature var2, int var3);

        public Object set(InternalEObject var1, EStructuralFeature var2, int var3, Object var4);

        public boolean isSet(InternalEObject var1, EStructuralFeature var2);

        public void unset(InternalEObject var1, EStructuralFeature var2);

        public boolean isEmpty(InternalEObject var1, EStructuralFeature var2);

        public int size(InternalEObject var1, EStructuralFeature var2);

        public boolean contains(InternalEObject var1, EStructuralFeature var2, Object var3);

        public int indexOf(InternalEObject var1, EStructuralFeature var2, Object var3);

        public int lastIndexOf(InternalEObject var1, EStructuralFeature var2, Object var3);

        public void add(InternalEObject var1, EStructuralFeature var2, int var3, Object var4);

        public Object remove(InternalEObject var1, EStructuralFeature var2, int var3);

        public Object move(InternalEObject var1, EStructuralFeature var2, int var3, int var4);

        public void clear(InternalEObject var1, EStructuralFeature var2);

        public Object[] toArray(InternalEObject var1, EStructuralFeature var2);

        public <T> T[] toArray(InternalEObject var1, EStructuralFeature var2, T[] var3);

        public int hashCode(InternalEObject var1, EStructuralFeature var2);

        public InternalEObject getContainer(InternalEObject var1);

        public EStructuralFeature getContainingFeature(InternalEObject var1);

        public EObject create(EClass var1);
    }
}

