/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package org.eclipse.emf.ecore.util;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.util.Switch;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ComposedSwitch<T>
extends Switch<T> {
    private final Map<EPackage, Switch<T>> registry = new HashMap<EPackage, Switch<T>>();
    private final List<Switch<T>> switches = new ArrayList<Switch<T>>();

    public ComposedSwitch() {
    }

    public ComposedSwitch(Collection<? extends Switch<T>> switches) {
        for (Switch<T> sw : switches) {
            this.addSwitch(sw);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void addSwitch(Switch<T> sw) {
        List<Switch<T>> list = this.switches;
        synchronized (list) {
            if (!this.switches.contains(sw)) {
                this.switches.add(sw);
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void removeSwitch(Switch<T> sw) {
        List<Switch<T>> list = this.switches;
        synchronized (list) {
            if (this.switches.contains(sw)) {
                this.switches.remove(sw);
                Iterator<Switch<T>> it = this.registry.values().iterator();
                while (it.hasNext()) {
                    if (it.next() != sw) continue;
                    it.remove();
                }
            }
        }
    }

    @Override
    protected T doSwitch(EClass theEClass, EObject theEObject) {
        Switch<T> delegate = this.findDelegate(theEClass.getEPackage());
        if (delegate == null) {
            EList<EClass> eSuperTypes = theEClass.getESuperTypes();
            return eSuperTypes.isEmpty() ? this.defaultCase(theEObject) : this.doSwitch((EClass)eSuperTypes.get(0), theEObject);
        }
        T result = delegate.doSwitch(theEClass, theEObject);
        return result == null ? this.defaultCase(theEObject) : result;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private Switch<T> findDelegate(EPackage ePackage) {
        List<Switch<T>> list = this.switches;
        synchronized (list) {
            Switch<T> delegate = this.registry.get(ePackage);
            if (delegate == null && !this.registry.containsKey(ePackage)) {
                for (Switch<T> sw : this.switches) {
                    if (!sw.isSwitchFor(ePackage)) continue;
                    delegate = sw;
                    break;
                }
                this.registry.put(ePackage, delegate);
            }
            return delegate;
        }
    }

    @Override
    public boolean isSwitchFor(EPackage ePackage) {
        return this.findDelegate(ePackage) != null;
    }
}

